.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field private static final BACKOFF_FACTOR:D = 1.5

.field static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field private static final MAX_REFRESH_TIME_MILLISECONDS:I = 0x927c0

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveRequest:Lcom/mopub/volley/Request;

.field private final mAdListener:Lcom/mopub/network/AdLoader$Listener;

.field mAdLoader:Lcom/mopub/network/AdLoader;

.field private mAdResponse:Lcom/mopub/network/AdResponse;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdWasLoaded:Z

.field mBackoffPower:I

.field private final mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;

.field private mCurrentAutoRefreshStatus:Z

.field private mCustomEventClassName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasOverlay:Z

.field private mIsDestroyed:Z

.field private mIsTesting:Z

.field private mKeywords:Ljava/lang/String;

.field private mLastTrackedRequestId:Ljava/lang/String;

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMillis:Ljava/lang/Integer;

.field private mRequestedAdSize:Landroid/graphics/Point;

.field private mShouldAllowAutoRefresh:Z

.field private mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field private mUserDataKeywords:Ljava/lang/String;

.field private mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .registers 5

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 91
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    .line 97
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    .line 118
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 122
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    .line 124
    new-instance p1, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object p2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 126
    new-instance p1, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdLoader$Listener;

    .line 138
    new-instance p1, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    const p1, 0xea60

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 148
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    const-string p1, ""

    .line 149
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mLastTrackedRequestId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/MoPubView;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdViewController;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private cancelRefreshTimer()V
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 659
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 660
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 661
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz v1, :cond_45

    if-eqz v0, :cond_45

    .line 664
    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->getShouldHonorServerDimensions(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_45

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_45

    .line 665
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    .line 666
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 668
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    .line 670
    :cond_45
    sget-object p1, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 211
    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_23

    .line 212
    sget-object p1, Lcom/mopub/mobileads/AdViewController$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_20

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    .line 218
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 216
    :cond_1d
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 214
    :cond_20
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_23
    if-nez v0, :cond_31

    .line 223
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 224
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 226
    :cond_2e
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 229
    :cond_31
    iget-object p0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget p0, p0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 p1, 0x190

    if-lt p0, p1, :cond_3c

    .line 230
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 233
    :cond_3c
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method

.method private static getShouldHonorServerDimensions(Landroid/view/View;)Z
    .registers 2

    .line 114
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private internalLoadAd()V
    .registers 5

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    .line 248
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 249
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 255
    :cond_1d
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_34

    .line 256
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad because there is no network connectivity."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 261
    :cond_34
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .registers 5

    .line 622
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 626
    invoke-static {v0, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 631
    :cond_10
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 634
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    :cond_21
    if-eqz v3, :cond_2a

    .line 636
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private setAutoRefreshStatus(Z)V
    .registers 8

    .line 432
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-eq v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_3f

    if-eqz p1, :cond_14

    const-string v0, "enabled"

    goto :goto_16

    :cond_14
    const-string v0, "disabled"

    .line 436
    :goto_16
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 439
    :cond_3f
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    .line 440
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_4b

    .line 441
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    goto :goto_52

    .line 442
    :cond_4b
    iget-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-nez p1, :cond_52

    .line 443
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    :cond_52
    :goto_52
    return-void
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .registers 3

    .line 110
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 576
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad failed to load."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 579
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 584
    :cond_17
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 585
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 588
    :cond_22
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method cleanup()V
    .registers 2

    .line 481
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 485
    :cond_5
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    .line 488
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 494
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 495
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const-string v0, ""

    .line 496
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLastTrackedRequestId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    return-void
.end method

.method creativeDownloadSuccess()V
    .registers 5

    .line 323
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 325
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    if-nez v0, :cond_15

    .line 326
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mAdLoader is not supposed to be null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 329
    :cond_15
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    return-void
.end method

.method dismissOverlay()V
    .registers 2

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mHasOverlay:Z

    .line 454
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->resumeRefresh()V

    return-void
.end method

.method engageOverlay()V
    .registers 2

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mHasOverlay:Z

    .line 449
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->pauseRefresh()V

    return-void
.end method

.method fetchAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .registers 10

    .line 537
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 538
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_b

    goto :goto_38

    .line 544
    :cond_b
    monitor-enter p0

    .line 545
    :try_start_c
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    invoke-virtual {v1}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 546
    :cond_18
    new-instance v6, Lcom/mopub/network/AdLoader;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    .line 548
    :cond_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_35

    .line 549
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    return-void

    :catchall_35
    move-exception p1

    .line 548
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1

    .line 539
    :cond_38
    :goto_38
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 540
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    return-void
.end method

.method forceRefresh()V
    .registers 1

    .line 553
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 554
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method generateAdUrl()Ljava/lang/String;
    .registers 5

    .line 559
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 563
    :cond_6
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    .line 565
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    .line 566
    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    .line 567
    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    .line 568
    :cond_1c
    invoke-virtual {v2, v1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRequestedAdSize:Landroid/graphics/Point;

    .line 569
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mWindowInsets:Landroid/view/WindowInsets;

    .line 570
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    .line 572
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdHeight()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 398
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getAdReport()Lcom/mopub/common/AdReport;
    .registers 5

    .line 459
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_16

    .line 460
    new-instance v1, Lcom/mopub/common/AdReport;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-direct {v1, v0, v2, v3}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    return-object v1

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method getAdTimeoutDelay(I)Ljava/lang/Integer;
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_9

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 507
    :cond_9
    invoke-virtual {v0, p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 390
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBroadcastIdentifier()J
    .registers 3

    .line 385
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    return-wide v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    return v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mCustomEventClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getLocalExtras()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_11

    :cond_c
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_11
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method getRefreshTimeMillis()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTesting()Z
    .registers 2

    .line 466
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .registers 2

    .line 342
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-object v0
.end method

.method isDestroyed()Z
    .registers 2

    .line 474
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .registers 2

    const/4 v0, 0x1

    .line 242
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 243
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    return-void
.end method

.method loadCustomEvent(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_13

    .line 197
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 201
    :cond_13
    invoke-virtual {p1, p2, p3}, Lcom/mopub/mobileads/MoPubView;->loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1d

    .line 295
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 296
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v0, v1

    .line 295
    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_30

    .line 299
    :cond_1d
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 302
    :goto_30
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, ""

    .line 303
    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return v1

    .line 307
    :cond_40
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v2
.end method

.method loadNonJavascript(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .registers 9

    if-nez p1, :cond_8

    .line 267
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_8
    const-string v0, "javascript:"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    .line 272
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 275
    :cond_2c
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_5a

    .line 276
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 277
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already loading an ad for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wait to finish."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_59
    return-void

    .line 282
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/AdViewController;->fetchAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method onAdLoadError(Lcom/mopub/volley/VolleyError;)V
    .registers 4

    .line 169
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_13

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 177
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 178
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 182
    :cond_13
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AdViewController;->getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    .line 183
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne p1, v0, :cond_23

    .line 184
    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 187
    :cond_23
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method onAdLoadSuccess(Lcom/mopub/network/AdResponse;)V
    .registers 4

    const/4 v0, 0x1

    .line 154
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 155
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 156
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mCustomEventClassName:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object p1

    .line 161
    invoke-virtual {p0, v0, v1, p1}, Lcom/mopub/mobileads/AdViewController;->loadCustomEvent(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    return-void
.end method

.method pauseRefresh()V
    .registers 2

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    return-void
.end method

.method registerClick()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_d

    .line 531
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public reload()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method resumeRefresh()V
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mHasOverlay:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 422
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    :cond_c
    return-void
.end method

.method scheduleRefreshTimerIfEnabled()V
    .registers 11

    .line 592
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    .line 593
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_32

    .line 595
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 597
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget v8, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long v4, v4, v6

    .line 596
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 595
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    return-void
.end method

.method setAdContentView(Landroid/view/View;)V
    .registers 4

    .line 643
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    return-void
.end method

.method setLocalExtras(Ljava/util/Map;)V
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

    .line 602
    new-instance v0, Ljava/util/TreeMap;

    if-eqz p1, :cond_8

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_b
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2

    return-void
.end method

.method setNotLoading()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 314
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 317
    :cond_10
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/volley/Request;

    .line 319
    :cond_12
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdLoader:Lcom/mopub/network/AdLoader;

    return-void
.end method

.method setRefreshTimeMillis(Ljava/lang/Integer;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method setRequestedAdSize(Landroid/graphics/Point;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRequestedAdSize:Landroid/graphics/Point;

    return-void
.end method

.method setShouldAllowAutoRefresh(Z)V
    .registers 2

    .line 427
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    .line 428
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    return-void
.end method

.method public setTesting(Z)V
    .registers 2

    .line 470
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .registers 3

    .line 349
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-void

    .line 353
    :cond_a
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-void
.end method

.method public setWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mWindowInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method trackImpression()V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_41

    .line 512
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLastTrackedRequestId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 515
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ignoring duplicate impression."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_1e
    if-eqz v0, :cond_22

    .line 520
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLastTrackedRequestId:Ljava/lang/String;

    .line 522
    :cond_22
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 524
    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_41
    return-void
.end method
