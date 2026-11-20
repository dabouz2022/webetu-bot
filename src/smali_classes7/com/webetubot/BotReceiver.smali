.class public Lcom/webetubot/BotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BotReceiver.java"


# static fields
.field public static final ACTION_BOOK:Ljava/lang/String; = "com.webetubot.BOOK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BOOT_COMPLETED"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\ud83d\udcf1 \u0623\u064f\u0639\u064a\u062f \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0647\u0627\u062a\u0641 \u2014 \u0627\u0644\u0628\u0648\u062a \u0627\u0639\u062a\u062f \u0627\u0644\u0639\u0645\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627"

    goto :goto_0

    :cond_0
    const-string v0, "\u25b6\ufe0f \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u062d\u062c\u0632"

    :goto_0
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {p1}, Lcom/webetubot/BotPlugin;->initApp(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Lcom/webetubot/BookingJob;->run(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string v0, "com.webetubot.BOOK"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/webetubot/BotPlugin;->checkBattery(Landroid/content/Context;Z)V

    .line 18
    invoke-static {p1}, Lcom/webetubot/BookingJob;->run(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method
