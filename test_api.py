#!/usr/bin/env python3
"""
Webetu Meal Reservation Client
Demonstrates automated authentication, token exchange,
fetching current meal reservations, and depot querying.
"""

import os
import sys
import json
import time
import uuid
import hmac
import hashlib
import urllib.request
import urllib.error

# API Constants
WEBETU_AUTH_URL = os.environ.get("WEBETU_AUTH_URL", "https://api-webetu.mesrs.dz/api/authentication/v1/")
GS_API_BASE = os.environ.get("GS_API_BASE", "https://gs-api.onou.dz/api")
HMAC_SECRET = os.environ.get("HMAC_SECRET", "")


def compute_signature(timestamp: str, nonce: str, body: str) -> str:
    """Computes HMAC-SHA256 signature for requests."""
    payload = f"{timestamp}|{nonce}|{body or ''}".encode("utf-8")
    mac = hmac.new(HMAC_SECRET.encode("utf-8"), payload, hashlib.sha256)
    return mac.hexdigest().lower()


def make_request(url: str, method: str = "GET", headers: dict = None, data: dict = None) -> dict:
    """Helper to perform HTTP requests using standard urllib."""
    body_bytes = json.dumps(data).encode("utf-8") if data is not None else None
    req = urllib.request.Request(url, data=body_bytes, method=method)
    
    if headers:
        for k, v in headers.items():
            req.add_header(k, str(v))
            
    if data is not None and "Content-Type" not in (headers or {}):
        req.add_header("Content-Type", "application/json")

    try:
        with urllib.request.urlopen(req, timeout=20) as resp:
            content = resp.read().decode("utf-8")
            return json.loads(content) if content else {}
    except urllib.error.HTTPError as e:
        err_msg = e.read().decode("utf-8", errors="replace")
        print(f"[-] HTTP Error {e.code}: {err_msg}", file=sys.stderr)
        return {"error": e.code, "message": err_msg}
    except Exception as e:
        print(f"[-] Network Error: {e}", file=sys.stderr)
        return {"error": str(e)}


def login_webetu(username: str, password: str) -> dict:
    """Authenticates against the Webetu endpoint to obtain token."""
    print(f"[*] Authenticating student '{username}'...")
    payload = {"username": username, "password": password}
    result = make_request(WEBETU_AUTH_URL, method="POST", data=payload)
    if "token" in result:
        print(f"[+] Login successful! Token expires at: {result.get('expirationDate')}")
    else:
        print(f"[-] Login failed: {result}")
    return result


def gs_api_call(endpoint: str, method: str, token: str, query_params: str = "", body_dict: dict = None) -> dict:
    """Performs an authenticated call to the API service."""
    url = f"{GS_API_BASE}{endpoint}"
    if query_params:
        url += f"?{query_params}"

    ts = str(int(time.time()))
    nonce = str(uuid.uuid4())
    body_str = json.dumps(body_dict) if body_dict is not None else ""
    signature = compute_signature(ts, nonce, body_str)

    headers = {
        "Authorization": f"Bearer {token}",
        "X-Timestamp": ts,
        "X-Nonce": nonce,
        "X-Signature": signature,
        "Content-Type": "application/json"
    }

    return make_request(url, method=method, headers=headers, data=body_dict)


def main():
    username = os.environ.get("WEBETU_USERNAME")
    password = os.environ.get("WEBETU_PASSWORD")

    if not username or not password:
        print("Please enter your Webetu credentials:")
        username = input("Username (Matricule): ").strip()
        import getpass
        password = getpass.getpass("Password: ").strip()

    if not username or not password:
        print("[-] Username and password are required.")
        sys.exit(1)

    # 1. Login to Webetu
    auth_data = login_webetu(username, password)
    token = auth_data.get("token")
    if not token:
        sys.exit(1)

    # 2. Exchange token
    print("[*] Synchronizing session...")
    gs_login_body = {
        "uuid": str(uuid.uuid4()),
        "wilaya": "42",
        "residence": "0",
        "token": token
    }
    gs_login_res = gs_api_call("/loginpwebetu", "POST", token, body_dict=gs_login_body)
    print(f"[+] Response: {gs_login_res}")

    # 3. Fetch meal reservations
    print("\n[*] Fetching current meal reservations...")
    res_data = gs_api_call("/meal-reservations/student", "GET", token, query_params=f"token={token}")
    reservations = res_data.get("data", [])
    print(f"[+] Found {len(reservations)} upcoming reservations:")
    for r in reservations:
        date = r.get("date_reserve")
        meal = r.get("mealtype_fr")
        depot = r.get("depot_fr")
        print(f"    - {date} | {meal:<15} | Depot: {depot}")

    # 4. Fetch available depots
    print("\n[*] Fetching available canteen depots...")
    depots_res = gs_api_call("/getdepotres", "GET", token)
    print(f"[+] Depots response received.")


if __name__ == "__main__":
    main()
