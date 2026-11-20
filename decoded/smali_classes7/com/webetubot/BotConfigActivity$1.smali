.class Lcom/webetubot/BotConfigActivity$1;
.super Ljava/lang/Object;
.source "BotConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/webetubot/BotConfigActivity;


# direct methods
.method constructor <init>(Lcom/webetubot/BotConfigActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/webetubot/BotConfigActivity$1;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity$1;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p1}, Lcom/webetubot/BotConfigActivity;->access$000(Lcom/webetubot/BotConfigActivity;)V

    .line 100
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity$1;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v0, "\u062c\u0627\u0631\u064a \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u062d\u062c\u0632..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 101
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity$1;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p1}, Lcom/webetubot/BookingJob;->run(Landroid/content/Context;)V

    return-void
.end method
