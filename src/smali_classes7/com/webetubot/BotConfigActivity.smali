.class public Lcom/webetubot/BotConfigActivity;
.super Landroid/app/Activity;
.source "BotConfigActivity.java"


# static fields
.field private static final BG:I

.field private static final CARD:I

.field private static final GREEN:I

.field private static final MUTED:I

.field private static final TXT:I


# instance fields
.field private bLunchFri:Landroid/widget/Button;

.field private bMeal1:Landroid/widget/Button;

.field private bMeal2:Landroid/widget/Button;

.field private bMeal3:Landroid/widget/Button;

.field private cb1:Landroid/widget/CheckBox;

.field private cb2:Landroid/widget/CheckBox;

.field private cb3:Landroid/widget/CheckBox;

.field private depotIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private depotNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/content/SharedPreferences;

.field private selLunchFri:I

.field private selMeal1:I

.field private selMeal2:I

.field private selMeal3:I

.field private swEnabled:Landroid/widget/Switch;

.field private tvLog:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#0E9F6E"

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/webetubot/BotConfigActivity;->GREEN:I

    const-string v0, "#101418"

    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/webetubot/BotConfigActivity;->BG:I

    const-string v0, "#1A1F25"

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/webetubot/BotConfigActivity;->CARD:I

    const-string v0, "#E5E7EB"

    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/webetubot/BotConfigActivity;->TXT:I

    const-string v0, "#9CA3AF"

    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/webetubot/BotConfigActivity;->MUTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/webetubot/BotConfigActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->save()V

    return-void
.end method

.method static synthetic access$100(Lcom/webetubot/BotConfigActivity;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->loadDepots(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->bLunchFri:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/webetubot/BotConfigActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->ensureToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/webetubot/BotConfigActivity;ZLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/webetubot/BotConfigActivity;->uiToast(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/webetubot/BotConfigActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->indexOrDefault(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/webetubot/BotConfigActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->refreshPickers()V

    return-void
.end method

.method static synthetic access$1800(Lcom/webetubot/BotConfigActivity;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->pick(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/webetubot/BotConfigActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    return p0
.end method

.method static synthetic access$202(Lcom/webetubot/BotConfigActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    return p1
.end method

.method static synthetic access$300(Lcom/webetubot/BotConfigActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->bMeal1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/webetubot/BotConfigActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    return p0
.end method

.method static synthetic access$502(Lcom/webetubot/BotConfigActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    return p1
.end method

.method static synthetic access$600(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->bMeal2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/webetubot/BotConfigActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    return p0
.end method

.method static synthetic access$702(Lcom/webetubot/BotConfigActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    return p1
.end method

.method static synthetic access$800(Lcom/webetubot/BotConfigActivity;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/webetubot/BotConfigActivity;->bMeal3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/webetubot/BotConfigActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    return p0
.end method

.method static synthetic access$902(Lcom/webetubot/BotConfigActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    return p1
.end method

.method private button(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 361
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 363
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 366
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 367
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p2, 0xc

    .line 368
    invoke-direct {p0, p2}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xa

    .line 370
    invoke-direct {p0, p2}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p2

    invoke-virtual {v0, v1, v2, v1, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 371
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x6

    .line 372
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p1

    invoke-virtual {p2, v1, v2, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 384
    invoke-virtual {p0}, Lcom/webetubot/BotConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 309
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method private ensureToken()Ljava/lang/String;
    .locals 9

    .line 269
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const/4 v2, 0x0

    .line 270
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "token_exp"

    const-wide/16 v4, 0x0

    .line 271
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    if-eqz v1, :cond_0

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x258

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/webetubot/GsApi;->refreshProgresToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    return-object v1
.end method

.method private indexOrDefault(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private loadDepots(Z)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/webetubot/BotConfigActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/webetubot/BotConfigActivity$5;-><init>(Lcom/webetubot/BotConfigActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private mealCheck(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 6

    .line 313
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 315
    sget p1, Lcom/webetubot/BotConfigActivity;->TXT:I

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 316
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 318
    :try_start_0
    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v4, [I

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [I

    sget v3, Lcom/webetubot/BotConfigActivity;->GREEN:I

    aput v3, v1, v4

    const-string v3, "#6B7280"

    .line 320
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v5

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :catchall_0
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v1, "meals"

    const-string v2, "1,2,3"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object v0
.end method

.method private pick(I)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "\u0644\u0627 \u062a\u0648\u062c\u062f \u0645\u0637\u0627\u0639\u0645 \u2014 \u062d\u062f\u0651\u062b \u0627\u0644\u0642\u0627\u0626\u0645\u0629"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 163
    iget v0, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    :goto_0
    if-gez v0, :cond_4

    move v0, v1

    .line 166
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u062e\u062a\u0631 \u0627\u0644\u0645\u0637\u0639\u0645"

    .line 167
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    .line 168
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/webetubot/BotConfigActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/webetubot/BotConfigActivity$4;-><init>(Lcom/webetubot/BotConfigActivity;I)V

    const-string p1, "\u062a\u062d\u062f\u064a\u062f"

    .line 169
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    .line 178
    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private pickerButton()Landroid/widget/Button;
    .locals 7

    .line 328
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 330
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v2, 0x0

    .line 331
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    const v3, 0x800013

    .line 332
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 333
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 334
    sget v4, Lcom/webetubot/BotConfigActivity;->CARD:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v4, 0xa

    .line 335
    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 336
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0xc

    .line 337
    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 338
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    .line 339
    invoke-direct {p0, v1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v1

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v2, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "\u2014 \u0627\u062e\u062a\u0631 \u2014"

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v1, Lcom/webetubot/BotConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/webetubot/BotConfigActivity$7;-><init>(Lcom/webetubot/BotConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private refreshLog()V
    .locals 6

    .line 282
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/webetubot/BotConfigActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "webetu_bot.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ""

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 287
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 289
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 290
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 291
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_0
    const-string v0, "\n"

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    array-length v2, v0

    add-int/lit8 v2, v2, -0x28

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 296
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private refreshPickers()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->bMeal1:Landroid/widget/Button;

    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    invoke-direct {p0, v0, v1}, Lcom/webetubot/BotConfigActivity;->updatePickerText(Landroid/widget/Button;I)V

    .line 208
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->bMeal2:Landroid/widget/Button;

    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    invoke-direct {p0, v0, v1}, Lcom/webetubot/BotConfigActivity;->updatePickerText(Landroid/widget/Button;I)V

    .line 209
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->bMeal3:Landroid/widget/Button;

    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    invoke-direct {p0, v0, v1}, Lcom/webetubot/BotConfigActivity;->updatePickerText(Landroid/widget/Button;I)V

    .line 210
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->bLunchFri:Landroid/widget/Button;

    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    invoke-direct {p0, v0, v1}, Lcom/webetubot/BotConfigActivity;->updatePickerText(Landroid/widget/Button;I)V

    return-void
.end method

.method private save()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->cb1:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->cb2:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "2,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->cb3:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v2, "meals"

    .line 191
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    const-string v2, "444"

    invoke-direct {p0, v1, v2}, Lcom/webetubot/BotConfigActivity;->selId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "depot_meal1"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    const-string v3, "570"

    invoke-direct {p0, v1, v3}, Lcom/webetubot/BotConfigActivity;->selId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "depot_meal2"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    invoke-direct {p0, v1, v2}, Lcom/webetubot/BotConfigActivity;->selId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "depot_meal3"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget v1, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    invoke-direct {p0, v1, v2}, Lcom/webetubot/BotConfigActivity;->selId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "depot_lunch_friday"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->scheduleAlarms(Landroid/content/Context;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ud83d\udcbe \u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u0645\u0641\u0639\u0651\u0644"

    goto :goto_1

    :cond_5
    const-string v1, "\u0645\u0648\u0642\u0641"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u0645\u0637\u0627\u0639\u0645 \u062c\u062f\u064a\u062f\u0629 \u0645\u062d\u0641\u0648\u0638\u0629"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/webetubot/BotPlugin;->log(Ljava/lang/String;)V

    return-void
.end method

.method private selId(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lcom/webetubot/BotConfigActivity;->depotIds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method private space(I)Landroid/view/View;
    .locals 3

    .line 378
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;IZI)Landroid/widget/TextView;
    .locals 0

    .line 351
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 353
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 355
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x6

    .line 356
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p2, p4, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p3
.end method

.method private tintSwitch(Landroid/widget/Switch;)V
    .locals 9

    const-string v0, "#4B5563"

    .line 141
    :try_start_0
    sget v1, Lcom/webetubot/BotConfigActivity;->GREEN:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 142
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 144
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const v5, 0x10100a0

    filled-new-array {v5}, [I

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v7, [I

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v3, [I

    aput v1, v6, v7

    const-string v1, "#6B7280"

    .line 146
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v6, v8

    invoke-direct {v2, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 144
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 147
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v3, [[I

    filled-new-array {v5}, [I

    move-result-object v4

    aput-object v4, v2, v7

    new-array v4, v7, [I

    aput-object v4, v2, v8

    new-array v3, v3, [I

    const-string v4, "#770E9F6E"

    .line 149
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v7

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v8

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 147
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private uiToast(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance p1, Lcom/webetubot/BotConfigActivity$6;

    invoke-direct {p1, p0, p2}, Lcom/webetubot/BotConfigActivity$6;-><init>(Lcom/webetubot/BotConfigActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/webetubot/BotConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePickerText(Landroid/widget/Button;I)V
    .locals 1

    if-ltz p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->depotNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string p2, "\u2014 \u0627\u062e\u062a\u0631 \u2014"

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Lcom/webetubot/BotPlugin;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    .line 54
    invoke-virtual {p0}, Lcom/webetubot/BotConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/webetubot/BotConfigActivity;->GREEN:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 56
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 59
    sget v1, Lcom/webetubot/BotConfigActivity;->BG:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x10

    .line 60
    invoke-direct {p0, v1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x18

    invoke-direct {p0, v5}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/webetubot/BotConfigActivity;->setContentView(Landroid/view/View;)V

    .line 66
    sget v2, Lcom/webetubot/BotConfigActivity;->TXT:I

    const-string v3, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0628\u0648\u062a \u0627\u0644\u062d\u062c\u0632"

    const/16 v4, 0x16

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x11

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x8

    .line 69
    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->space(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    const-string v5, "\u062a\u0641\u0639\u064a\u0644 \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a"

    .line 72
    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setTextColor(I)V

    .line 74
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setTextSize(F)V

    .line 75
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->tintSwitch(Landroid/widget/Switch;)V

    .line 76
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v6, "enabled"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    iget-object v4, p0, Lcom/webetubot/BotConfigActivity;->swEnabled:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0xc

    .line 78
    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->space(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v5, "\u0627\u0644\u0648\u062c\u0628\u0627\u062a \u0627\u0644\u0645\u062d\u062c\u0648\u0632\u0629"

    .line 80
    invoke-direct {p0, v5, v1, v0, v2}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "\u0641\u0637\u0648\u0631 \u0627\u0644\u0635\u0628\u0627\u062d"

    .line 81
    invoke-direct {p0, v1, v7}, Lcom/webetubot/BotConfigActivity;->mealCheck(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb1:Landroid/widget/CheckBox;

    const-string v1, "\u0627\u0644\u063a\u062f\u0627\u0621"

    const-string v2, "2"

    .line 82
    invoke-direct {p0, v1, v2}, Lcom/webetubot/BotConfigActivity;->mealCheck(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb2:Landroid/widget/CheckBox;

    const-string v1, "\u0627\u0644\u0639\u0634\u0627\u0621"

    const-string v2, "3"

    .line 83
    invoke-direct {p0, v1, v2}, Lcom/webetubot/BotConfigActivity;->mealCheck(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb3:Landroid/widget/CheckBox;

    .line 84
    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb1:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb2:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->cb3:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->space(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    sget v1, Lcom/webetubot/BotConfigActivity;->MUTED:I

    const-string v2, "\u0645\u0637\u0639\u0645 \u0641\u0637\u0648\u0631 \u0627\u0644\u0635\u0628\u0627\u062d"

    const/16 v5, 0xf

    invoke-direct {p0, v2, v5, v0, v1}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->pickerButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal1:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal1:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u0645\u0637\u0639\u0645 \u0627\u0644\u063a\u062f\u0627\u0621"

    .line 89
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->pickerButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal2:Landroid/widget/Button;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal2:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u0645\u0637\u0639\u0645 \u0627\u0644\u0639\u0634\u0627\u0621"

    .line 91
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->pickerButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal3:Landroid/widget/Button;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->bMeal3:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u0645\u0637\u0639\u0645 \u063a\u062f\u0627\u0621 \u064a\u0648\u0645 \u0627\u0644\u062c\u0645\u0639\u0629"

    .line 93
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->pickerButton()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/webetubot/BotConfigActivity;->bLunchFri:Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/webetubot/BotConfigActivity;->bLunchFri:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->space(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u062d\u062c\u0632 \u0627\u0644\u0622\u0646"

    const-string v6, "#374151"

    .line 97
    invoke-direct {p0, v2, v6}, Lcom/webetubot/BotConfigActivity;->button(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 98
    new-instance v7, Lcom/webetubot/BotConfigActivity$1;

    invoke-direct {v7, p0}, Lcom/webetubot/BotConfigActivity$1;-><init>(Lcom/webetubot/BotConfigActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u062a\u062d\u062f\u064a\u062b \u0642\u0627\u0626\u0645\u0629 \u0627\u0644\u0645\u0637\u0627\u0639\u0645"

    .line 105
    invoke-direct {p0, v2, v6}, Lcom/webetubot/BotConfigActivity;->button(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 106
    new-instance v6, Lcom/webetubot/BotConfigActivity$2;

    invoke-direct {v6, p0}, Lcom/webetubot/BotConfigActivity$2;-><init>(Lcom/webetubot/BotConfigActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u062d\u0641\u0638 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    const-string v6, "#0E9F6E"

    .line 111
    invoke-direct {p0, v2, v6}, Lcom/webetubot/BotConfigActivity;->button(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 112
    new-instance v6, Lcom/webetubot/BotConfigActivity$3;

    invoke-direct {v6, p0}, Lcom/webetubot/BotConfigActivity$3;-><init>(Lcom/webetubot/BotConfigActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0, v4}, Lcom/webetubot/BotConfigActivity;->space(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u0633\u062c\u0644 \u0627\u0644\u0628\u0648\u062a (\u0622\u062e\u0631 \u0627\u0644\u0639\u0645\u0644\u064a\u0627\u062a)"

    .line 119
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/webetubot/BotConfigActivity;->text(Ljava/lang/String;IZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 126
    sget v1, Lcom/webetubot/BotConfigActivity;->CARD:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    invoke-direct {p0, v3}, Lcom/webetubot/BotConfigActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 128
    iget-object v1, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/webetubot/BotConfigActivity;->tvLog:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v0, "depot_meal1"

    const-string v1, "444"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->indexOrDefault(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal1:I

    .line 132
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v0, "depot_meal2"

    const-string v2, "570"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->indexOrDefault(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal2:I

    .line 133
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v0, "depot_meal3"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->indexOrDefault(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selMeal3:I

    .line 134
    iget-object p1, p0, Lcom/webetubot/BotConfigActivity;->p:Landroid/content/SharedPreferences;

    const-string v0, "depot_lunch_friday"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->indexOrDefault(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/webetubot/BotConfigActivity;->selLunchFri:I

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/webetubot/BotConfigActivity;->loadDepots(Z)V

    .line 136
    invoke-direct {p0}, Lcom/webetubot/BotConfigActivity;->refreshLog()V

    return-void
.end method
