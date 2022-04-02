.class public abstract Lcom/startapp/android/publish/ads/banner/BannerBase;
.super Landroid/widget/RelativeLayout;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/banner/BannerBase$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerLayout"


# instance fields
.field protected adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

.field protected adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

.field protected adTag:Ljava/lang/String;

.field private attachedToWindow:Z

.field private clicked:Z

.field protected drawn:Z

.field private error:Ljava/lang/String;

.field private firstLoad:Z

.field protected innerBanner3dId:I

.field protected innerBannerStandardId:I

.field protected offset:I

.field private shouldReloadBanner:Z

.field private task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

.field private timer:Ljava/util/Timer;

.field private viewabilityChecker:Lcom/startapp/android/publish/adsCommon/o;

.field private visibilityHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 41
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->offset:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    .line 43
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->drawn:Z

    .line 44
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x9876543

    add-int/2addr v1, v2

    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->innerBanner3dId:I

    add-int/2addr v1, v0

    .line 45
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->innerBannerStandardId:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adTag:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->visibilityHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/startapp/android/publish/adsCommon/o;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/o;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->viewabilityChecker:Lcom/startapp/android/publish/adsCommon/o;

    .line 51
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->clicked:Z

    .line 52
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    .line 56
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    .line 72
    new-instance p1, Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    invoke-direct {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a;-><init>(Lcom/startapp/android/publish/ads/banner/BannerBase;)V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 38
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 41
    iput p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->offset:I

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    .line 43
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->drawn:Z

    .line 44
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x9876543

    add-int/2addr v1, v2

    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->innerBanner3dId:I

    add-int/2addr v1, v0

    .line 45
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->innerBannerStandardId:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adTag:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->visibilityHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/startapp/android/publish/adsCommon/o;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/o;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->viewabilityChecker:Lcom/startapp/android/publish/adsCommon/o;

    .line 51
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->clicked:Z

    .line 52
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    .line 56
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    .line 72
    new-instance p3, Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    invoke-direct {p3, p0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a;-><init>(Lcom/startapp/android/publish/ads/banner/BannerBase;)V

    iput-object p3, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setBannerAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/ads/banner/BannerBase;)Landroid/os/Handler;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->visibilityHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/ads/banner/BannerBase;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->clearVisibilityHandler()V

    return-void
.end method

.method private cancelReloadTask()V
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 248
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    if-eqz v0, :cond_d

    .line 249
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a;->cancel()Z

    .line 251
    :cond_d
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_14

    .line 252
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_14
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    .line 255
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    :cond_19
    return-void
.end method

.method private clearVisibilityHandler()V
    .registers 5

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_23

    :catch_7
    move-exception v0

    const/4 v1, 0x6

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BannerBase.reload - removeCallbacksAndMessages failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BannerLayout"

    invoke-static {v2, v1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_23
    return-void
.end method

.method private initDebug()V
    .registers 4

    .line 108
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getWidthInDp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setMinimumWidth(I)V

    .line 109
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getHeightInDp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setMinimumHeight(I)V

    const/16 v0, 0xa9

    .line 110
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setBackgroundColor(I)V

    .line 112
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getBannerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scheduleReloadTask()V
    .registers 8

    .line 231
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_36

    .line 235
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    if-eqz v0, :cond_12

    .line 236
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a;->cancel()Z

    .line 238
    :cond_12
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_19

    .line 239
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 241
    :cond_19
    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a;-><init>(Lcom/startapp/android/publish/ads/banner/BannerBase;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    .line 242
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->timer:Ljava/util/Timer;

    .line 243
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->task:Lcom/startapp/android/publish/ads/banner/BannerBase$a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getRefreshRate()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getRefreshRate()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_36
    :goto_36
    return-void
.end method

.method private setBannerAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 225
    new-instance v0, Lcom/startapp/android/publish/ads/banner/b;

    invoke-direct {v0, p1, p2}, Lcom/startapp/android/publish/ads/banner/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setAdTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addDisplayEventOnLoad()V
    .registers 5

    .line 345
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->isFirstLoad()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/g;->a()Lcom/startapp/android/publish/adsCommon/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/g;->b()Lcom/startapp/android/publish/adsCommon/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_14
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setFirstLoad(Z)V

    .line 349
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/adsCommon/a/a;

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getAdTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/a/a;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/a/b;->a(Lcom/startapp/android/publish/adsCommon/a/a;)V

    :cond_2a
    return-void
.end method

.method protected getAdTag()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBannerId()I
.end method

.method protected abstract getBannerName()Ljava/lang/String;
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->error:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getHeightInDp()I
.end method

.method protected getMinViewabilityPercentage()I
    .registers 2

    .line 180
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/c;->a()Lcom/startapp/android/publish/ads/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/c;->b()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->q()I

    move-result v0

    return v0
.end method

.method protected abstract getOffset()I
.end method

.method protected abstract getRefreshRate()I
.end method

.method protected abstract getWidthInDp()I
.end method

.method protected init()V
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 93
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->initRuntime()V

    goto :goto_d

    .line 95
    :cond_a
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->initDebug()V

    :goto_d
    return-void
.end method

.method protected abstract initRuntime()V
.end method

.method public isClicked()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->clicked:Z

    return v0
.end method

.method public isFirstLoad()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    return v0
.end method

.method protected isVisible()Z
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->viewabilityChecker:Lcom/startapp/android/publish/adsCommon/o;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getMinViewabilityPercentage()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/startapp/android/publish/adsCommon/o;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected load()V
    .registers 4

    .line 150
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->clearVisibilityHandler()V

    .line 151
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/g;->a()Lcom/startapp/android/publish/adsCommon/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/g;->b()Lcom/startapp/android/publish/adsCommon/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_22

    .line 162
    :cond_16
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 163
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->reload()V

    goto :goto_5f

    .line 152
    :cond_22
    :goto_22
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/g;->a()Lcom/startapp/android/publish/adsCommon/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/g;->b()Lcom/startapp/android/publish/adsCommon/a/e;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getAdTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    .line 153
    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 154
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->reload()V

    goto :goto_5f

    :cond_40
    const/4 v0, 0x4

    .line 156
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 159
    invoke-static {}, Lcom/startapp/common/a/i;->a()Lcom/startapp/common/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/common/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method protected loadBanner()V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->scheduleReloadTask()V

    .line 146
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->load()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 302
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string v0, "BannerLayout"

    const/4 v1, 0x3

    const-string v2, "onAttachedToWindow"

    .line 303
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 305
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->scheduleReloadTask()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 310
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "BannerLayout"

    const/4 v1, 0x3

    const-string v2, "onDetachedFromWindow"

    .line 311
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 313
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->cancelReloadTask()V

    .line 314
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->clearVisibilityHandler()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 283
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_8

    .line 284
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 288
    :cond_8
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "bannerId"

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setBannerId(I)V

    const-string v0, "adRulesResult"

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/a/f;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    const-string v0, "adPreferences"

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    const-string v0, "offset"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->offset:I

    const-string v0, "firstLoad"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    const-string v0, "shouldReloadBanner"

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    const-string v0, "upperState"

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 263
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setClicked(Z)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    .line 268
    :cond_d
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->getBannerId()I

    move-result v2

    const-string v3, "bannerId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "upperState"

    .line 271
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    const-string v2, "adRulesResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 273
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    const-string v2, "adPreferences"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 274
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->offset:I

    const-string v2, "offset"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    const-string v2, "firstLoad"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    const-string v2, "shouldReloadBanner"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    .line 319
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    const-string v0, "BannerLayout"

    const/4 v1, 0x3

    const-string v2, "onWindowFocusChanged"

    .line 320
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 323
    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    if-eqz p1, :cond_17

    .line 324
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldReloadBanner:Z

    .line 325
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->load()V

    :cond_17
    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 329
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->scheduleReloadTask()V

    goto :goto_23

    .line 331
    :cond_1e
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    .line 332
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->cancelReloadTask()V

    :goto_23
    return-void
.end method

.method protected abstract reload()V
.end method

.method public abstract setAdTag(Ljava/lang/String;)V
.end method

.method protected abstract setBannerId(I)V
.end method

.method public setClicked(Z)V
    .registers 2

    .line 362
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->clicked:Z

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    .line 366
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->error:Ljava/lang/String;

    return-void
.end method

.method public setFirstLoad(Z)V
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->firstLoad:Z

    return-void
.end method

.method protected setHardwareAcceleration(Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 354
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase;->attachedToWindow:Z

    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/view/View;Z)Z

    move-result v0

    const-string v1, "hardwareAccelerated"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method protected shouldSendImpression(Lcom/startapp/android/publish/adsCommon/i;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 176
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/i;->c()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected startVisibilityRunnable(Lcom/startapp/android/publish/adsCommon/i;)V
    .registers 5

    .line 188
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->shouldSendImpression(Lcom/startapp/android/publish/adsCommon/i;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x3

    const-string v1, "BannerLayout"

    const-string v2, "BannerBase.startVisibilityRunnable - run visibility check"

    .line 192
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerBase$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase$1;-><init>(Lcom/startapp/android/publish/ads/banner/BannerBase;Lcom/startapp/android/publish/adsCommon/i;)V

    .line 221
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerBase$1;->run()V

    return-void
.end method
