.class Lcom/webetubot/BotPlugin$2;
.super Ljava/lang/Object;
.source "BotPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotPlugin;->showOverlay(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/webetubot/BotPlugin$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/webetubot/BotPlugin$2;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/webetubot/BotPlugin$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/webetubot/BotPlugin$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/webetubot/BotPlugin$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 109
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->access$102(Z)Z

    return-void

    :cond_1
    const-string v1, "webetu_bot_btn"

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 111
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->access$200(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/webetubot/BotPlugin$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/webetubot/BotPlugin;->access$300(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->access$102(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 117
    :catchall_0
    :cond_4
    :goto_1
    invoke-static {}, Lcom/webetubot/BotPlugin;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/webetubot/BotPlugin$2;->val$h:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
