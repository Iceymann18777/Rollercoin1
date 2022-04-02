.class public Lcom/mopub/mobileads/MoPubView;
.super Landroid/widget/FrameLayout;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubView$MoPubAdSize;,
        Lcom/mopub/mobileads/MoPubView$MoPubAdSizeInt;,
        Lcom/mopub/mobileads/MoPubView$BannerAdListener;
    }
.end annotation


# static fields
.field private static final CUSTOM_EVENT_BANNER_ADAPTER_FACTORY:Ljava/lang/String; = "com.mopub.mobileads.factories.CustomEventBannerAdapterFactory"


# instance fields
.field protected mAdViewController:Lcom/mopub/mobileads/AdViewController;

.field private mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

.field private mContext:Landroid/content/Context;

.field protected mCustomEventBannerAdapter:Ljava/lang/Object;

.field private mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubView;->getMoPubAdSizeFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubView;->mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 148
    invoke-static {p1}, Lcom/mopub/common/util/ManifestUtils;->checkWebViewActivitiesDeclared(Landroid/content/Context;)V

    .line 150
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getVisibility()I

    move-result p2

    iput p2, p0, Lcom/mopub/mobileads/MoPubView;->mScreenVisibility:I

    const/4 p2, 0x0

    .line 153
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/MoPubView;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/MoPubView;->setVerticalScrollBarEnabled(Z)V

    .line 156
    invoke-static {p1, p0}, Lcom/mopub/mobileads/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 157
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->registerScreenStateBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubView;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/mopub/mobileads/MoPubView;->mScreenVisibility:I

    return p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubView;I)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdVisibility(I)V

    return-void
.end method

.method private getMoPubAdSizeFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .registers 8

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/base/R$styleable;->MoPubView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 392
    :try_start_b
    sget p2, Lcom/mopub/mobileads/base/R$styleable;->MoPubView_moPubAdSize:I

    .line 393
    invoke-virtual {p3}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->toInt()I

    move-result v0

    .line 392
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 394
    invoke-static {p2}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->valueOf(I)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object p3
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_19} :catch_1f
    .catchall {:try_start_b .. :try_end_19} :catchall_1d

    .line 400
    :goto_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_30

    :catchall_1d
    move-exception p2

    goto :goto_31

    :catch_1f
    move-exception p2

    .line 396
    :try_start_20
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Encountered a problem while setting the MoPubAdSize"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_1d

    goto :goto_19

    :goto_30
    return-object p3

    .line 400
    :goto_31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_36

    :goto_35
    throw p2

    :goto_36
    goto :goto_35
.end method

.method private invalidateAdapter()V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    if-eqz v0, :cond_24

    .line 242
    :try_start_4
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v2, "invalidate"

    invoke-direct {v1, v0, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setAccessible()Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_24

    :catch_13
    move-exception v0

    .line 246
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error invalidating adapter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .registers 4

    .line 177
    new-instance v0, Lcom/mopub/mobileads/MoPubView$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubView$1;-><init>(Lcom/mopub/mobileads/MoPubView;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setAdVisibility(I)V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_5

    return-void

    .line 332
    :cond_5
    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 333
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->resumeRefresh()V

    goto :goto_16

    .line 335
    :cond_11
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->pauseRefresh()V

    :goto_16
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .registers 5

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_15

    .line 202
    :catch_8
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to unregister screen state broadcast receiver (never registered)."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method


# virtual methods
.method protected adClicked()V
    .registers 3

    .line 367
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_f

    .line 369
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$BannerAdListener;->onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V

    :cond_f
    return-void
.end method

.method protected adClosed()V
    .registers 3

    .line 360
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_f

    .line 362
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$BannerAdListener;->onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V

    :cond_f
    return-void
.end method

.method protected adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 347
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_1d

    .line 349
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubView$BannerAdListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1d
    return-void
.end method

.method protected adLoaded()V
    .registers 3

    .line 340
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_f

    .line 342
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$BannerAdListener;->onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V

    :cond_f
    return-void
.end method

.method protected adPresentedOverlay()V
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    if-eqz v0, :cond_7

    .line 355
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubView$BannerAdListener;->onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V

    :cond_7
    return-void
.end method

.method protected creativeDownloaded()V
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 375
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->creativeDownloadSuccess()V

    .line 377
    :cond_7
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->adLoaded()V

    return-void
.end method

.method public destroy()V
    .registers 5

    .line 224
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Destroy() called"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->unregisterScreenStateBroadcastReceiver()V

    .line 226
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 229
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->cleanup()V

    .line 230
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 233
    :cond_1d
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    if-eqz v0, :cond_26

    .line 234
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->invalidateAdapter()V

    .line 235
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method dismissOverlay()V
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 528
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->dismissOverlay()V

    :cond_7
    return-void
.end method

.method engageOverlay()V
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 522
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->engageOverlay()V

    :cond_7
    return-void
.end method

.method public forceRefresh()V
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 566
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->invalidateAdapter()V

    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    .line 570
    :cond_a
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_11

    .line 571
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->forceRefresh()V

    :cond_11
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .registers 2

    .line 594
    sget-object v0, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    return-object v0
.end method

.method public getAdHeight()I
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getAdSize()Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object v0
.end method

.method getAdTimeoutDelay(I)Ljava/lang/Integer;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_9

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 256
    :cond_9
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getAdViewController()Lcom/mopub/mobileads/AdViewController;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    return-object v0
.end method

.method public getAdWidth()I
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getAutorefreshEnabled()Z
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0

    .line 535
    :cond_9
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t get autorefresh status for destroyed MoPubView. Returning false."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v3
.end method

.method public getBannerAdListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    .line 497
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 499
    :cond_9
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTesting()Z
    .registers 5

    .line 556
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getTesting()Z

    move-result v0

    return v0

    .line 558
    :cond_9
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t get testing status for destroyed MoPubView. Returning false."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v3
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public loadAd()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_1a

    .line 213
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdViewController;->setRequestedAdSize(Landroid/graphics/Point;)V

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    :cond_1a
    return-void
.end method

.method public loadAd(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .registers 2

    .line 207
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdSize(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    .line 208
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    return-void
.end method

.method protected loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_5

    return-void

    .line 270
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 271
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 272
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    return-void

    .line 276
    :cond_1e
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    if-eqz v0, :cond_25

    .line 277
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubView;->invalidateAdapter()V

    .line 280
    :cond_25
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Loading custom event adapter."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, "com.mopub.mobileads.factories.CustomEventBannerAdapterFactory"

    .line 282
    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 284
    :try_start_38
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 285
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v4, 0x0

    const-string v5, "create"

    invoke-direct {v3, v4, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v3, Lcom/mopub/mobileads/MoPubView;

    .line 287
    invoke-virtual {v0, v3, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    .line 288
    invoke-virtual {v0, v3, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-class v0, Ljava/util/Map;

    .line 289
    invoke-virtual {p1, v0, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 290
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-class p2, Lcom/mopub/common/AdReport;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 291
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdReport()Lcom/mopub/common/AdReport;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mCustomEventBannerAdapter:Ljava/lang/Object;

    .line 293
    new-instance p2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v0, "loadAd"

    invoke-direct {p2, p1, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setAccessible()Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8a} :catch_8b

    goto :goto_a6

    :catch_8b
    move-exception p1

    .line 297
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error loading custom event"

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_a6

    .line 300
    :cond_9b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Could not load custom event -- missing banner module"

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_a6
    return-void
.end method

.method protected loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 263
    :cond_6
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_9

    .line 171
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubView;->setWindowInsets(Landroid/view/WindowInsets;)V

    .line 173
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_10

    .line 164
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubView;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_10
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .line 321
    iget v0, p0, Lcom/mopub/mobileads/MoPubView;->mScreenVisibility:I

    invoke-static {v0, p1}, Lcom/mopub/common/util/Visibility;->hasScreenVisibilityChanged(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 322
    iput p1, p0, Lcom/mopub/mobileads/MoPubView;->mScreenVisibility:I

    .line 323
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdVisibility(I)V

    :cond_d
    return-void
.end method

.method pauseAutoRefresh()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 510
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->pauseRefresh()V

    :cond_7
    return-void
.end method

.method protected registerClick()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_a

    .line 306
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->registerClick()V

    .line 309
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->adClicked()V

    :cond_a
    return-void
.end method

.method protected resolveAdSize()Landroid/graphics/Point;
    .registers 5

    .line 407
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 408
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 411
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_29

    if-eqz v1, :cond_29

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_29

    .line 412
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 416
    :cond_29
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    if-eq v2, v3, :cond_4d

    .line 417
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 418
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubView;->mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->toInt()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_65

    .line 419
    :cond_4d
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_65

    if-eqz v1, :cond_65

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v1, :cond_65

    .line 420
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_65
    :goto_65
    return-object v0
.end method

.method resumeAutoRefresh()V
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 516
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->resumeRefresh()V

    :cond_7
    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .registers 5

    .line 542
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_17

    .line 544
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdContentView(Landroid/view/View;)V

    .line 545
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 547
    :cond_17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method

.method public setAdSize(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mMoPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 504
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setShouldAllowAutoRefresh(Z)V

    :cond_7
    return-void
.end method

.method public setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView;->mBannerAdListener:Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setKeywords(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setLocalExtras(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTesting(Z)V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setTesting(Z)V

    :cond_7
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 446
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setUserDataKeywords(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method setWindowInsets(Landroid/view/WindowInsets;)V
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_7

    .line 585
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_7
    return-void
.end method

.method protected trackNativeImpression()V
    .registers 5

    .line 314
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Tracking impression. MoPubView internal."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->trackImpression()V

    :cond_14
    return-void
.end method
