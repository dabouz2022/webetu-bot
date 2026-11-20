.class Lcom/webetubot/GsApi$1;
.super Ljava/lang/Object;
.source "GsApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/GsApi;->saveToken(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/webetubot/GsApi$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/webetubot/GsApi$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/webetubot/GsApi$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/webetubot/GsApi$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/webetubot/BotPlugin;->writeSecureStoreToken(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
