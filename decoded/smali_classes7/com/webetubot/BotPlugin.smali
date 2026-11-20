.class public Lcom/webetubot/BotPlugin;
.super Ljava/lang/Object;
.source "BotPlugin.java"


# static fields
.field public static final HMAC_SECRET:Ljava/lang/String; = "pUzHUW2WX54uCzhO8JC2eQ6g1Ol21upw"

.field public static final PREFS:Ljava/lang/String; = "webetu_bot"

.field public static final TAG:Ljava/lang/String; = "webetu_bot"

.field private static appContext:Landroid/content/Context;

.field private static watcherRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 33
    sget-object v0, Lcom/webetubot/BotPlugin;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/webetubot/BotPlugin;->watcherRunning:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 33
    sput-boolean p0, Lcom/webetubot/BotPlugin;->watcherRunning:Z

    return p0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->isHomeVisible(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/webetubot/BotPlugin;->addHomeButton(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static addHomeButton(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 6

    .line 125
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "webetu_bot_btn"

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const-string v1, "\ud83e\udd16 \u0628\u0648\u062a \u0627\u0644\u062d\u062c\u0632"

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 131
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v4, -0xf16092

    .line 132
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v4, 0xe

    .line 133
    invoke-static {p0, v4}, Lcom/webetubot/BotPlugin;->dpF(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v1, 0x10

    .line 138
    invoke-static {p0, v1}, Lcom/webetubot/BotPlugin;->dpF(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v1}, Lcom/webetubot/BotPlugin;->dpF(Landroid/content/Context;I)I

    move-result v1

    const/16 v5, 0x5c

    invoke-static {p0, v5}, Lcom/webetubot/BotPlugin;->dpF(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 139
    new-instance v1, Lcom/webetubot/BotPlugin$3;

    invoke-direct {v1, p0}, Lcom/webetubot/BotPlugin$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p0, "\ud83e\udd16 \u0632\u0631 \u0627\u0644\u0628\u0648\u062a \u0645\u0648\u062c\u0648\u062f \u0641\u064a \u0627\u0644\u0634\u0627\u0634\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629"

    .line 144
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static ctx()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/webetubot/BotPlugin;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method private static dpF(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static findHome(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    .line 154
    :try_start_0
    instance-of v1, p0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 155
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u0628\u0648\u0627\u0628\u0629 \u0627\u0644\u0637\u0627\u0644\u0628"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 160
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 161
    check-cast p0, Landroid/view/ViewGroup;

    move v1, v0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/webetubot/BotPlugin;->findHome(Landroid/view/View;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    return v0
.end method

.method public static hideOverlay()V
    .locals 0

    return-void
.end method

.method public static initApp(Landroid/content/Context;)V
    .locals 9

    .line 59
    :try_start_0
    sput-object p0, Lcom/webetubot/BotPlugin;->appContext:Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->makeChannel(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->scheduleAlarms(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/webetubot/BotPlugin;->checkBattery(Landroid/content/Context;Z)V

    .line 62
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "password"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 65
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "token_exp"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    sub-long/2addr v3, v5

    const-wide/16 v0, 0x5460

    cmp-long p0, v3, v0

    if-gez p0, :cond_1

    .line 68
    :cond_0
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/webetubot/BotPlugin$1;

    invoke-direct {v1, p0}, Lcom/webetubot/BotPlugin$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    const-string p0, "\u2705 \u0627\u0644\u0628\u0648\u062a \u062c\u0627\u0647\u0632 \u0648\u064a\u0639\u0645\u0644 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627"

    .line 77
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "\u26a0\ufe0f \u062e\u0637\u0623 \u062e\u062f\u0645\u0629 3"

    .line 79
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static isHomeVisible(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 149
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->findHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static jwtExp(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "\\."

    .line 298
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 299
    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    .line 300
    aget-object p0, p0, v2

    const/16 v2, 0x8

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 301
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "exp"

    .line 302
    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-wide v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "webetu_bot"

    .line 280
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/webetubot/BotPlugin;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "webetu_bot.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 286
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x32000

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "webetu_bot.log.1"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static logLater(Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static makeChannel(Landroid/content/Context;)V
    .locals 4

    .line 85
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 87
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "webetu_bot"

    const-string v2, "Webetu Bot"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static maybePromptOverlay(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static patchBuilder(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 45
    :try_start_0
    new-instance v0, Lcom/webetubot/BotInterceptor;

    invoke-direct {v0}, Lcom/webetubot/BotInterceptor;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    const-string v0, "\ud83d\udd75\ufe0f \u0645\u0631\u0627\u0642\u0628\u0629 \u0627\u0644\u062c\u0644\u0633\u0629: \u0646\u0634\u0637\u0629"

    .line 46
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "\u26a0\ufe0f \u062e\u0637\u0623 \u062e\u062f\u0645\u0629 1"

    .line 48
    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "webetu_bot"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static readSecureStoreToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, ":keystoreUnauthenticated"

    const-string v1, "AES/GCM/NoPadding:"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SecureStore"

    const/4 v4, 0x0

    .line 247
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "key_v1-authenticationToken"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    .line 249
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "aes"

    const-string v5, "scheme"

    .line 250
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    const-string p0, "AndroidKeyStore"

    .line 251
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 252
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v5, "keystoreAlias"

    const-string v6, "key_v1"

    .line 253
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "usesKeystoreSuffix"

    const/4 v7, 0x1

    .line 255
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    aput-object v5, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    goto :goto_0

    .line 258
    :cond_2
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    .line 261
    :goto_0
    array-length v0, v6

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v5, v6, v1

    .line 262
    invoke-virtual {p0, v5, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    .line 263
    instance-of v7, v5, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v7, :cond_3

    check-cast v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    const-string v0, "AES/GCM/NoPadding"

    .line 266
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 267
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const-string v5, "tlen"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "iv"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v0, v8, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p0, "ct"

    .line 268
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 269
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readSecureStore:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method public static scheduleAlarms(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "alarm"

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v1, 0xa

    const/4 v2, 0x1

    .line 185
    invoke-static {p0, v0, v2, v2, v1}, Lcom/webetubot/BotPlugin;->scheduleAt(Landroid/content/Context;Landroid/app/AlarmManager;III)V

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 186
    invoke-static {p0, v0, v3, v1, v2}, Lcom/webetubot/BotPlugin;->scheduleAt(Landroid/content/Context;Landroid/app/AlarmManager;III)V

    const/16 v1, 0x14

    const/16 v2, 0x1e

    const/4 v3, 0x3

    .line 187
    invoke-static {p0, v0, v3, v1, v2}, Lcom/webetubot/BotPlugin;->scheduleAt(Landroid/content/Context;Landroid/app/AlarmManager;III)V

    const-string p0, "\u23f0 \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u064a\u0648\u0645\u064a \u0645\u062c\u062f\u0648\u0644: 01:10 \u0648 08:05 \u0648 20:30"

    .line 188
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scheduleAlarms:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static scheduleAt(Landroid/content/Context;Landroid/app/AlarmManager;III)V
    .locals 5

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 196
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 197
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xd

    const/4 p4, 0x0

    .line 198
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->set(II)V

    .line 199
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-gtz p3, :cond_0

    const/4 p3, 0x6

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Ljava/util/Calendar;->add(II)V

    .line 200
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/webetubot/BotReceiver;

    invoke-direct {p3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.webetubot.BOOK"

    .line 201
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    .line 202
    invoke-static {p0, p2, p3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 203
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static showOverlay(Landroid/app/Activity;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 102
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/webetubot/BotPlugin;->watcherRunning:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lcom/webetubot/BotPlugin;->watcherRunning:Z

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    new-instance v1, Lcom/webetubot/BotPlugin$2;

    invoke-direct {v1, p0, v0}, Lcom/webetubot/BotPlugin$2;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "\u26a0\ufe0f \u062e\u0637\u0623 \u0641\u064a \u0625\u0636\u0627\u0641\u0629 \u0632\u0631 \u0627\u0644\u0628\u0648\u062a"

    .line 120
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static utcDate(I)Ljava/lang/String;
    .locals 5

    const-string v0, "UTC"

    .line 310
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 311
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x1

    .line 312
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p0

    const/4 p0, 0x5

    .line 314
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p0, v4, :cond_1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeSecureStoreToken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const-string v0, "key_v1"

    const-string v1, "tlen"

    const-string v2, "iv"

    const-string v3, ""

    const-string v4, "ct"

    const/4 v5, 0x0

    .line 210
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 211
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0x80

    .line 213
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "scheme"

    const-string v7, "aes"

    .line 214
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "usesKeystoreSuffix"

    const/4 v7, 0x1

    .line 215
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "keystoreAlias"

    .line 216
    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "requireAuthentication"

    .line 217
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "AndroidKeyStore"

    .line 218
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v8, 0x0

    .line 219
    invoke-virtual {v3, v8}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "AES/GCM/NoPadding:key_v1:keystoreUnauthenticated"

    aput-object v11, v10, v5

    const-string v11, "AES/GCM/NoPadding:key_v1"

    aput-object v11, v10, v7

    const/4 v11, 0x2

    aput-object v0, v10, v11

    move v0, v5

    :goto_0
    if-ge v0, v9, :cond_1

    .line 222
    aget-object v11, v10, v0

    .line 223
    invoke-virtual {v3, v11, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v11

    .line 224
    instance-of v12, v11, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v12, :cond_0

    check-cast v11, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v11}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    const-string p0, "writeSecureStore: no keystore key"

    .line 226
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return v5

    :cond_2
    const-string v0, "AES/GCM/NoPadding"

    .line 227
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 229
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 230
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v7, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0, v7}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 231
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v3

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "SecureStore"

    .line 234
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_v1-authenticationToken"

    .line 235
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->readSecureStoreToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeSecureStore ok="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "writeSecureStore:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return v5
.end method

.method public static checkBattery(Landroid/content/Context;Z)V
    .locals 8

    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "app.progres.webetu"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_restricted

    const-string v0, "\ud83d\udeb2 \u0627\u0644\u0628\u0637\u0627\u0631\u064a\u0629: \u063a\u064a\u0631 \u0645\u0642\u064a\u0651\u062f\u0629 \u2014 \u0645\u0645\u062a\u0627\u0632"

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void

    :cond_restricted
    const-string v0, "\u26a0\ufe0f \u0627\u0644\u0628\u0637\u0627\u0631\u064a\u0629 \u0645\u0642\u064a\u0651\u062f\u0629 \u2014 \u0642\u062f \u064a\u0641\u0634\u0644 \u0627\u0644\u062d\u062c\u0632 \u0641\u064a \u0627\u0644\u062e\u0644\u0641\u064a\u0629"

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_prompt_after"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_skip

    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-wide/32 v2, 0x1499700

    add-long/2addr v6, v2

    const-string v4, "battery_prompt_after"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_notify

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/webetubot/BotBatteryPrompt;

    invoke-direct {v1, p0}, Lcom/webetubot/BotBatteryPrompt;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_notify
    const-string v0, "\u26a0\ufe0f \u0644\u0627 \u064a\u0645\u0643\u0646 \u0627\u0644\u062d\u062c\u0632 \u0641\u064a \u0627\u0644\u062e\u0644\u0641\u064a\u0629: \u0641\u0639\u0651\u0644 \u0627\u0644\u0628\u0637\u0627\u0631\u064a\u0629 \u063a\u064a\u0631 \u0645\u0642\u064a\u0651\u062f\u0629"

    const-string v1, "\u26a0\ufe0f \u0644\u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a: \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u2190 \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u0627\u062a \u2190 Webetu \u2190 \u0627\u0644\u0628\u0637\u0627\u0631\u064a\u0629 \u2190 \u063a\u064a\u0631 \u0645\u0642\u064a\u0651\u062f"

    invoke-static {p0, v0, v1}, Lcom/webetubot/BookingJob;->botNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_skip
    return-void

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    return-void
.end method
