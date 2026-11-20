.class Lcom/webetubot/BotConfigActivity$5;
.super Ljava/lang/Object;
.source "BotConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webetubot/BotConfigActivity;->loadDepots(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/webetubot/BotConfigActivity;

.field final synthetic val$toast:Z


# direct methods
.method constructor <init>(Lcom/webetubot/BotConfigActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    iput-boolean p2, p0, Lcom/webetubot/BotConfigActivity$5;->val$toast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "\t"

    const-string v1, ""

    const-string v2, "uuid="

    const/4 v3, 0x1

    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v4}, Lcom/webetubot/BotConfigActivity;->access$1100(Lcom/webetubot/BotConfigActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 221
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v1, "\u0633\u062c\u0651\u0644 \u0627\u0644\u062f\u062e\u0648\u0644 \u0641\u064a \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0623\u0648\u0644\u0627"

    invoke-static {v0, v3, v1}, Lcom/webetubot/BotConfigActivity;->access$1200(Lcom/webetubot/BotConfigActivity;ZLjava/lang/String;)V

    return-void

    .line 222
    :cond_0
    iget-object v5, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v5}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v5, "uuid"

    const/4 v6, 0x0

    .line 223
    invoke-interface {v11, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 224
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v1, "\u0627\u0641\u062a\u062d \u0634\u0627\u0634\u0629 \u0627\u0644\u0625\u0637\u0639\u0627\u0645 \u0645\u0631\u0629 \u0648\u0627\u062d\u062f\u0629 \u0623\u0648\u0644\u0627"

    invoke-static {v0, v3, v1}, Lcom/webetubot/BotConfigActivity;->access$1200(Lcom/webetubot/BotConfigActivity;ZLjava/lang/String;)V

    return-void

    .line 225
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v2, v5}, Lcom/webetubot/BotConfigActivity;->access$1300(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&wilaya="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v6, "wilaya"

    invoke-interface {v11, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/webetubot/BotConfigActivity;->access$1300(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&residence="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v6, "residence"

    .line 226
    invoke-interface {v11, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/webetubot/BotConfigActivity;->access$1300(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v5, v4}, Lcom/webetubot/BotConfigActivity;->access$1300(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GET"

    const-string v6, "/getdepotres"

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v7, v2

    move-object v9, v4

    .line 227
    invoke-static/range {v5 .. v10}, Lcom/webetubot/GsApi;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/webetubot/GsApi$Result;

    move-result-object v5

    .line 228
    invoke-virtual {v5}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\ud83d\udccb \u062a\u0645 \u062c\u0644\u0628 \u0642\u0627\u0626\u0645\u0629 \u0645\u0637\u0627\u0639\u0645 \u0627\u0644\u0625\u0642\u0627\u0645\u0629 \u0645\u0646 \u0627\u0644\u0633\u064a\u0631\u0641\u0631"

    invoke-static {v6}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 229
    :cond_2
    iget v6, v5, Lcom/webetubot/GsApi$Result;->code:I

    const/16 v7, 0x191

    if-ne v6, v7, :cond_3

    .line 230
    iget-object v6, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    invoke-static {v6}, Lcom/webetubot/GsApi;->gsLogin(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "GET"

    const-string v6, "/getdepotres"

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v7, v2

    move-object v9, v4

    .line 231
    invoke-static/range {v5 .. v10}, Lcom/webetubot/GsApi;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/webetubot/GsApi$Result;

    move-result-object v5

    .line 234
    :cond_3
    invoke-virtual {v5}, Lcom/webetubot/GsApi$Result;->ok()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "\u26a0\ufe0f \u0641\u0634\u0644 \u062c\u0644\u0628 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u0645\u0637\u0627\u0639\u0645 \u0645\u0646 \u0627\u0644\u0633\u064a\u0631\u0641\u0631"

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    const-string v1, "\u0641\u0634\u0644 \u062c\u0644\u0628 \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u0645\u0637\u0627\u0639\u0645\u060c \u062a\u0623\u0643\u062f \u0645\u0646 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u0648\u062d\u0627\u0648\u0644 \u0623\u064a\u062c\u062f\u064b\u0627"

    invoke-static {v0, v3, v1}, Lcom/webetubot/BotConfigActivity;->access$1200(Lcom/webetubot/BotConfigActivity;ZLjava/lang/String;)V

    return-void

    .line 235
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v5, Lcom/webetubot/GsApi$Result;->body:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "depots"

    .line 236
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    .line 241
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 242
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    .line 243
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "nameAR"

    const-string v12, "nameEN"

    const-string v13, "nameFR"

    .line 244
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    :cond_6
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "depot_names"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    new-instance v1, Lcom/webetubot/BotConfigActivity$5$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/webetubot/BotConfigActivity$5$1;-><init>(Lcom/webetubot/BotConfigActivity$5;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/webetubot/BotConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "\u26a0\ufe0f \u062d\u0635\u0644 \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u062c\u0644\u0628 \u0627\u0644\u0645\u0637\u0627\u0639\u0645"

    .line 262
    invoke-static {v1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/webetubot/BotConfigActivity$5;->this$0:Lcom/webetubot/BotConfigActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u062e\u0637\u0623: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/webetubot/BotConfigActivity;->access$1200(Lcom/webetubot/BotConfigActivity;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
