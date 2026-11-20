.class Lcom/webetubot/BotConfigActivity$5$1;
.super Ljava/lang/Object;
.source "BotConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotConfigActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/webetubot/BotConfigActivity$5;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/webetubot/BotConfigActivity$5;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iput-object p2, p0, Lcom/webetubot/BotConfigActivity$5$1;->val$ids:Ljava/util/List;

    iput-object p3, p0, Lcom/webetubot/BotConfigActivity$5$1;->val$names:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity$5$1;->val$ids:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity$5$1;->val$names:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$200(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    const-string v1, "444"

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$200(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v2}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v3, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v3, v3, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v3}, Lcom/webetubot/BotConfigActivity;->access$1500(Lcom/webetubot/BotConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "depot_meal1"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/webetubot/BotConfigActivity;->access$1600(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/webetubot/BotConfigActivity;->access$202(Lcom/webetubot/BotConfigActivity;I)I

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$500(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$500(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v2}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v3, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v3, v3, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v3}, Lcom/webetubot/BotConfigActivity;->access$1500(Lcom/webetubot/BotConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "depot_meal2"

    const-string v5, "570"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/webetubot/BotConfigActivity;->access$1600(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/webetubot/BotConfigActivity;->access$502(Lcom/webetubot/BotConfigActivity;I)I

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$700(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$700(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v2}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v3, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v3, v3, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v3}, Lcom/webetubot/BotConfigActivity;->access$1500(Lcom/webetubot/BotConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "depot_meal3"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/webetubot/BotConfigActivity;->access$1600(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/webetubot/BotConfigActivity;->access$702(Lcom/webetubot/BotConfigActivity;I)I

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$900(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$900(Lcom/webetubot/BotConfigActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v2}, Lcom/webetubot/BotConfigActivity;->access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v2, v2, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iget-object v3, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v3, v3, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v3}, Lcom/webetubot/BotConfigActivity;->access$1500(Lcom/webetubot/BotConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "depot_lunch_friday"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/webetubot/BotConfigActivity;->access$1600(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/webetubot/BotConfigActivity;->access$902(Lcom/webetubot/BotConfigActivity;I)I

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v0}, Lcom/webetubot/BotConfigActivity;->access$1700(Lcom/webetubot/BotConfigActivity;)V

    .line 259
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-boolean v0, v0, Lcom/webetubot/BotConfigActivity$5;->val$toast:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5$1;->this$1:Lcom/webetubot/BotConfigActivity$5;

    iget-object v0, v0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v1, "\u062a\u0645 \u062a\u062d\u062f\u064a\u062b \u0627\u0644\u0642\u0627\u0626\u0645\u0629"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_8
    return-void
.end method
