.class Lcom/webetubot/BookingJob$1;
.super Ljava/lang/Object;
.source "BookingJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BookingJob;->run(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/webetubot/BookingJob$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/webetubot/BookingJob$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/webetubot/BookingJob;->access$000(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "\u26a0\ufe0f \u062d\u0635\u0644 \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u0627\u0644\u062a\u0634\u063a\u064a\u0644\u060c \u0633\u0623\u0639\u0627\u0648\u062f \u0641\u064a \u0627\u0644\u0645\u0648\u0639\u062f \u0627\u0644\u062a\u0627\u0644\u064a"

    .line 18
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/webetubot/BookingJob$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Booking failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Webetu Bot"

    invoke-static {v1, v2, v0}, Lcom/webetubot/BookingJob;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
