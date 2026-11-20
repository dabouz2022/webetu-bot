.class Lcom/webetubot/BotConfigActivity$4;
.super Ljava/lang/Object;
.source "BotConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotConfigActivity;->pick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/webetubot/BotConfigActivity;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/webetubot/BotConfigActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    iput p2, p0, Lcom/webetubot/BotConfigActivity$4;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 171
    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 172
    iget p2, p0, Lcom/webetubot/BotConfigActivity$4;->val$which:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2, p1}, Lcom/webetubot/BotConfigActivity;->access$202(Lcom/webetubot/BotConfigActivity;I)I

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2}, Lcom/webetubot/BotConfigActivity;->access$400(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 173
    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2, p1}, Lcom/webetubot/BotConfigActivity;->access$502(Lcom/webetubot/BotConfigActivity;I)I

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2}, Lcom/webetubot/BotConfigActivity;->access$600(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 174
    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2, p1}, Lcom/webetubot/BotConfigActivity;->access$702(Lcom/webetubot/BotConfigActivity;I)I

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2}, Lcom/webetubot/BotConfigActivity;->access$800(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2, p1}, Lcom/webetubot/BotConfigActivity;->access$902(Lcom/webetubot/BotConfigActivity;I)I

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {p2}, Lcom/webetubot/BotConfigActivity;->access$1000(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;

    move-result-object p2

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$4;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
