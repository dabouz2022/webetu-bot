.class public Lcom/webetubot/BookingJob;
.super Ljava/lang/Object;
.source "BookingJob.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/webetubot/BookingJob;->runSafe(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\ud83d\udd14 \u0625\u0634\u0639\u0627\u0631: "

    .line 252
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    const-string v2, " | "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    const-string v0, "notification"

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 256
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "webetu_bot"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const p0, 0x1080054

    .line 260
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 261
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 262
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 263
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3c

    if-le p0, p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 p0, 0x1

    .line 264
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    long-to-int p0, p0

    const p1, 0x186a0

    rem-int/2addr p0, p1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string p0, "\u26a0\ufe0f \u062a\u0639\u0630\u0651\u0631 \u0625\u0638\u0647\u0627\u0631 \u0627\u0644\u0625\u0634\u0639\u0627\u0631"

    .line 267
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static depotKnown(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "depot_names"

    const-string v1, ""

    .line 181
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    const/16 v5, 0x7c

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 185
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static depotOfExisting(Lorg/json/JSONObject;Landroid/content/SharedPreferences;)I
    .locals 8

    const-string v0, ""

    const/4 v1, -0x1

    .line 202
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "depot_fr"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "depot_ar"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "depot_names"

    .line 204
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x7c

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-le v5, v7, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_2
    return v1
.end method

.method private static desiredDepot(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "2"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "444"

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/webetubot/BookingJob;->isFridayUTC(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "depot_lunch_friday"

    .line 194
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "depot_meal"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v2, "570"

    :cond_1
    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 242
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method private static isFridayUTC(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "UTC"

    const/4 v1, 0x0

    .line 222
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 225
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 226
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 228
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :catchall_0
    :cond_0
    return v1
.end method

.method private static mealLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Petit-d\u00e9jeuner"

    return-object p0

    :cond_0
    const-string v0, "2"

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "D\u00e9jeuner"

    return-object p0

    :cond_1
    const-string v0, "3"

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "D\u00eener"

    return-object p0

    :cond_2
    const-string p0, "?"

    return-object p0
.end method

.method private static moveBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "residence"

    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uuid"

    .line 170
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "wilaya"

    .line 171
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v1, v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p0, "token"

    .line 173
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static run(Landroid/content/Context;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/webetubot/BookingJob$1;

    invoke-direct {v1, p0}, Lcom/webetubot/BookingJob$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static runSafe(Landroid/content/Context;)V
    .locals 40

    move-object/from16 v1, p0

    const-string v0, "#"

    const-string v2, "date_reserve"

    const-string v3, "3"

    const-string v4, "data"

    .line 24
    invoke-static/range {p0 .. p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "enabled"

    const-string v7, "1"

    .line 25
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v0, "\u23f8\ufe0f \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a \u0645\u0648\u0642\u0641 \u0645\u0646 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "username"

    const/4 v8, 0x0

    .line 26
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "password"

    .line 27
    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uuid"

    .line 28
    invoke-interface {v5, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v6, :cond_1c

    if-nez v9, :cond_1

    goto/16 :goto_11

    :cond_1
    if-nez v11, :cond_2

    const-string v0, "\u2139\ufe0f \u0627\u0641\u062a\u062d \u0634\u0627\u0634\u0629 \u0627\u0644\u0625\u0637\u0639\u0627\u0645 \u0641\u064a \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u0631\u0629 \u0648\u0627\u062d\u062f\u0629 \u0644\u062a\u0641\u0639\u064a\u0644 \u0627\u0644\u0628\u0648\u062a"

    .line 30
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v6, "token"

    .line 33
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "token_exp"

    const-wide/16 v12, 0x0

    .line 34
    invoke-interface {v5, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-string v9, "Webetu Bot"

    if-eqz v8, :cond_3

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x708

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 37
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/webetubot/GsApi;->refreshProgresToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v0, "Could not refresh login token"

    .line 38
    invoke-static {v1, v9, v0}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/webetubot/GsApi;->gsLogin(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 44
    invoke-static/range {p0 .. p0}, Lcom/webetubot/GsApi;->refreshProgresToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/webetubot/GsApi;->gsLogin(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "Server session could not be established"

    .line 46
    invoke-static {v1, v9, v0}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    const-string v15, "wilaya"

    const-string v14, ""

    .line 49
    invoke-interface {v5, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v12, "residence"

    move-object/from16 v16, v15

    .line 50
    invoke-interface {v5, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "GET"

    const-string v18, "/meal-reservations/student"

    move-object/from16 v19, v12

    .line 53
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    const-string v14, "uuid="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v11}, Lcom/webetubot/BookingJob;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "&wilaya="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v13}, Lcom/webetubot/BookingJob;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "&residence="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v15}, Lcom/webetubot/BookingJob;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "&token="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Lcom/webetubot/BookingJob;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v23, v19

    move-object/from16 v12, v17

    move-object/from16 v24, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v6

    move-object v6, v15

    move-object/from16 v25, v16

    move-object/from16 v15, v21

    move-object/from16 v16, v8

    move/from16 v17, v22

    .line 53
    invoke-static/range {v12 .. v17}, Lcom/webetubot/GsApi;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/webetubot/GsApi$Result;

    move-result-object v12

    .line 56
    invoke-virtual {v12}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v13

    if-nez v13, :cond_7

    const-string v0, "\u26a0\ufe0f \u062a\u0639\u0630\u0651\u0631 \u062c\u0644\u0628 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a \u0645\u0646 \u0627\u0644\u0633\u064a\u0631\u0641\u0631"

    .line 57
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not read reservations ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Lcom/webetubot/GsApi$Result;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v0}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_7
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 63
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 65
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    iget-object v12, v12, Lcom/webetubot/GsApi$Result;->body:Ljava/lang/String;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_8

    const/4 v13, 0x0

    .line 68
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_8

    .line 69
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v17, v12

    .line 70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v9

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "mealtype_fr"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-interface {v15, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v14, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v17

    move-object/from16 v9, v20

    goto :goto_1

    :cond_8
    move-object/from16 v20, v9

    goto :goto_2

    :catchall_0
    move-object/from16 v20, v9

    :catchall_1
    const-string v1, "\u26a0\ufe0f \u062a\u0639\u0630\u0651\u0631 \u0642\u0631\u0627\u0621\u0629 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a"

    .line 76
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_2
    const-string v1, "meals"

    const-string v9, "1,2,3"

    .line 80
    invoke-interface {v5, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x3

    :try_start_2
    const-string v12, "days_ahead"

    .line 82
    invoke-interface {v5, v12, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move v12, v9

    :goto_3
    const/4 v13, 0x1

    if-ge v12, v13, :cond_9

    move v12, v13

    :cond_9
    if-le v12, v9, :cond_a

    move v12, v9

    .line 85
    :cond_a
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v13, ","

    .line 86
    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v13, v1

    move-object/from16 v22, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_c

    aget-object v26, v1, v15

    move-object/from16 v27, v1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_b

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v27

    goto :goto_4

    .line 88
    :cond_c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 89
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    const/4 v13, 0x1

    :goto_5
    const-string v4, " "

    if-gt v13, v12, :cond_16

    move-object/from16 v27, v10

    .line 91
    invoke-static {v13}, Lcom/webetubot/BotPlugin;->utcDate(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v17, v12

    const-string v12, "2"

    .line 92
    filled-new-array {v7, v12, v3}, [Ljava/lang/String;

    move-result-object v28

    move-object/from16 v21, v3

    const/4 v3, 0x3

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_15

    aget-object v3, v28, v12

    .line 93
    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    move-object/from16 v33, v0

    move-object/from16 v34, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    :goto_7
    move/from16 v31, v12

    :goto_8
    move/from16 v32, v13

    move-object/from16 v39, v14

    move-object v12, v15

    move/from16 v35, v17

    move-object/from16 v0, v22

    move-object/from16 v37, v24

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_d
    move-object/from16 v29, v7

    .line 94
    invoke-static {v3}, Lcom/webetubot/BookingJob;->mealLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v30, v9

    .line 95
    invoke-static {v5, v3, v10}, Lcom/webetubot/BookingJob;->desiredDepot(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-static {v5, v9}, Lcom/webetubot/BookingJob;->depotKnown(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_e

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "\u23ed\ufe0f \u062a\u062e\u0637\u064a "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": \u0627\u0644\u0645\u0637\u0639\u0645 \u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641 \u2014 \u0627\u0641\u062a\u062d \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u0628\u0648\u062a \u0648\u0627\u062e\u062a\u0631 \u0627\u0644\u0645\u0637\u0627\u0639\u0645"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    move-object/from16 v33, v0

    move-object/from16 v34, v5

    goto :goto_7

    :cond_e
    move/from16 v31, v12

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 101
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_13

    .line 103
    invoke-static {v0, v5}, Lcom/webetubot/BookingJob;->depotOfExisting(Lorg/json/JSONObject;Landroid/content/SharedPreferences;)I

    move-result v32

    move-object/from16 v34, v5

    if-lez v32, :cond_f

    .line 104
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    const-string v5, "candelete"

    move/from16 v32, v13

    const/4 v13, 0x0

    .line 105
    invoke-virtual {v0, v5, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_10

    move v5, v13

    move-object/from16 v39, v14

    move-object v12, v15

    move/from16 v35, v17

    move-object/from16 v0, v22

    move-object/from16 v37, v24

    goto/16 :goto_c

    :cond_10
    const-string v5, "DELETE"

    .line 107
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v35, v12

    const-string v12, "/reservemeal/"

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    move-object/from16 v12, v24

    .line 108
    invoke-static {v11, v12, v6, v8}, Lcom/webetubot/BookingJob;->moveBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v36, 0x1

    move-object/from16 v37, v12

    move-object/from16 v38, v35

    move/from16 v35, v17

    move-object v12, v5

    const/4 v5, 0x0

    move-object/from16 v39, v14

    move-object v14, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v8

    move/from16 v17, v36

    .line 107
    invoke-static/range {v12 .. v17}, Lcom/webetubot/GsApi;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/webetubot/GsApi$Result;

    move-result-object v12

    .line 109
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\ud83d\udd04 \u0623\u0646\u0642\u0644 "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \u0625\u0644\u0649 \u0627\u0644\u0645\u0637\u0639\u0645 \u0627\u0644\u0635\u062d\u064a\u062d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v14, v18

    goto :goto_9

    :cond_11
    const-string v14, " (\u062a\u0639\u0630\u0651\u0631 \u062d\u0630\u0641 \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u0642\u062f\u064a\u0645)"

    :goto_9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v12}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v12

    if-nez v12, :cond_12

    :catchall_3
    move-object/from16 v12, v22

    goto :goto_c

    :cond_12
    move-object/from16 v12, v38

    .line 111
    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    move-object/from16 v34, v5

    move/from16 v32, v13

    move-object/from16 v39, v14

    move/from16 v35, v17

    move-object/from16 v0, v22

    move-object/from16 v37, v24

    const/4 v5, 0x0

    move-object/from16 v22, v15

    .line 114
    :goto_a
    :try_start_3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 115
    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "menu_type"

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "idDepot"

    .line 117
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_14

    const-string v3, ", "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v12, v22

    :try_start_4
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_14
    move-object/from16 v12, v22

    .line 120
    :goto_b
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :goto_c
    add-int/lit8 v3, v31, 0x1

    move-object/from16 v22, v0

    move-object v15, v12

    move-object/from16 v7, v29

    move-object/from16 v9, v30

    move/from16 v13, v32

    move-object/from16 v0, v33

    move-object/from16 v5, v34

    move/from16 v17, v35

    move-object/from16 v24, v37

    move-object/from16 v14, v39

    move v12, v3

    const/4 v3, 0x3

    goto/16 :goto_6

    :cond_15
    move-object/from16 v33, v0

    move-object/from16 v34, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move/from16 v32, v13

    move-object/from16 v39, v14

    move-object v12, v15

    move/from16 v35, v17

    move-object/from16 v0, v22

    move-object/from16 v37, v24

    const/4 v5, 0x0

    add-int/lit8 v13, v32, 0x1

    move-object/from16 v3, v21

    move-object/from16 v10, v27

    move-object/from16 v0, v33

    move-object/from16 v5, v34

    move/from16 v12, v35

    goto/16 :goto_5

    :cond_16
    move-object/from16 v27, v10

    move-object/from16 v37, v24

    const/4 v5, 0x0

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "\u2705 \u0643\u0644 \u0634\u064a\u0621 \u062a\u0645\u0627\u0645 \u2014 \u0627\u0644\u0648\u062c\u0628\u0627\u062a \u0645\u062d\u062c\u0648\u0632\u0629 \u0641\u064a \u0627\u0644\u0645\u0637\u0627\u0639\u0645 \u0627\u0644\u0635\u062d\u064a\u062d\u0629"

    .line 126
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_17
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v2, v27

    .line 133
    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v25

    move-object/from16 v2, v37

    .line 134
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 135
    :try_start_6
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v7, v23

    :try_start_7
    invoke-virtual {v0, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_d

    :catchall_5
    move-object/from16 v7, v23

    :catchall_6
    :try_start_8
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_d
    move-object/from16 v2, v19

    .line 136
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "details"

    .line 137
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "POST"

    const-string v11, "/reservemeal"

    const/4 v12, 0x0

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    move-object v14, v8

    invoke-static/range {v10 .. v15}, Lcom/webetubot/GsApi;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/webetubot/GsApi$Result;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "\u26a0\ufe0f \u0641\u0634\u0644 \u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u062d\u062c\u0632 \u0644\u0644\u0633\u064a\u0631\u0641\u0631"

    invoke-static {v1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 141
    :cond_18
    invoke-virtual {v0}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v1, :cond_1b

    .line 143
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/webetubot/GsApi$Result;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v26

    .line 144
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v5

    .line 147
    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_1a

    .line 148
    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "status"

    .line 149
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_19

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v5, "date"

    .line 151
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "meal"

    .line 152
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "message"

    .line 153
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 155
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    :try_start_a
    invoke-static {v2, v3, v1}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    return-void

    :catchall_7
    :cond_1b
    move-object/from16 v2, p0

    move-object/from16 v3, v20

    .line 160
    :catchall_8
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Booking result: HTTP "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/webetubot/GsApi$Result;->code:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/webetubot/GsApi$Result;->body:Ljava/lang/String;

    const/16 v4, 0x78

    invoke-static {v0, v4}, Lcom/webetubot/BookingJob;->str(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception v0

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    :goto_f
    const-string v1, "\u26a0\ufe0f \u062d\u0635\u0644 \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u062c\u0632"

    .line 162
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Booking failed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_1c
    :goto_11
    const-string v0, "\u2139\ufe0f \u0644\u0627 \u062a\u0648\u062c\u062f \u0628\u064a\u0627\u0646\u0627\u062a \u062d\u0633\u0627\u0628 \u0628\u0639\u062f \u2014 \u0627\u0641\u062a\u062d \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0648\u0633\u062c\u0651\u0644 \u0627\u0644\u062f\u062e\u0648\u0644 \u0645\u0631\u0629"

    .line 29
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static str(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
