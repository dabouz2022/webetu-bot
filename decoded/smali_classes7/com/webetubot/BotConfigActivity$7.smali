.class Lcom/webetubot/BotConfigActivity$7;
.super Ljava/lang/Object;
.source "BotConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotConfigActivity;->pickerButton()Landroid/widget/Button;
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

    .line 342
    iput-object p1, p0, Lcom/webetubot/BotConfigActivity$7;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$7;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/webetubot/BotConfigActivity;->access$1800(Lcom/webetubot/BotConfigActivity;I)V

    return-void
.end method
