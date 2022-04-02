.class public Lcom/mopub/network/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdLoader$Listener;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

.field private mContentDownloaded:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

.field private volatile mFailed:Z

.field private mHandler:Landroid/os/Handler;

.field protected mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

.field private mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

.field protected mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

.field private final mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

.field private volatile mRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .registers 12

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 76
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 81
    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    .line 83
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance p5, Lcom/mopub/network/AdLoader$1;

    invoke-direct {p5, p0}, Lcom/mopub/network/AdLoader$1;-><init>(Lcom/mopub/network/AdLoader;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    const/4 p5, 0x0

    .line 107
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    .line 108
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    .line 109
    new-instance p5, Lcom/mopub/network/MultiAdRequest;

    iget-object v5, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/network/AdLoader;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mopub/network/AdLoader;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->deliverError(Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method private creativeDownloadFailed(Lcom/mopub/mobileads/MoPubError;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_10

    .line 244
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Must provide error code to report creative download error"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 248
    :cond_10
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_2c

    .line 249
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1f

    goto :goto_2c

    .line 254
    :cond_1f
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    if-eqz v0, :cond_2b

    .line 255
    invoke-virtual {v0, v2, p1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoad(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 256
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoadFail(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    :cond_2b
    return-void

    .line 250
    :cond_2c
    :goto_2c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot send creative mFailed analytics."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private deliverError(Lcom/mopub/volley/VolleyError;)V
    .registers 6

    .line 295
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 298
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_24

    .line 299
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_12

    .line 300
    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_24

    .line 302
    :cond_12
    new-instance v1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v1, v2, p1, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    .line 302
    invoke-interface {v0, v1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private deliverResponse(Lcom/mopub/network/AdResponse;)V
    .registers 4

    .line 315
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 318
    new-instance v1, Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-direct {v1, p1}, Lcom/mopub/network/ContentDownloadAnalytics;-><init>(Lcom/mopub/network/AdResponse;)V

    iput-object v1, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    .line 319
    invoke-virtual {v1, v0}, Lcom/mopub/network/ContentDownloadAnalytics;->reportBeforeLoad(Landroid/content/Context;)V

    .line 321
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_1e

    .line 322
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 323
    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    :cond_1e
    return-void
.end method

.method private fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/MultiAdRequest;",
            "Landroid/content/Context;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 270
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_7
    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_17

    .line 278
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_19

    :cond_17
    const-string v0, "<no body>"

    .line 280
    :goto_19
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 282
    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    .line 283
    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    .line 284
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    .line 285
    invoke-virtual {p2, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-object p1
.end method


# virtual methods
.method public creativeDownloadSuccess()V
    .registers 5

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->mContentDownloaded:Z

    .line 227
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 228
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Response analytics should not be null here"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_14
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2f

    .line 233
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_23

    goto :goto_2f

    .line 238
    :cond_23
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoad(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 239
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-virtual {v0, v1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoadSuccess(Landroid/content/Context;)V

    return-void

    .line 234
    :cond_2f
    :goto_2f
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Cannot send \'x-after-load-url\' analytics."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasMoreAds()Z
    .registers 4

    .line 121
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 125
    :cond_6
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mContentDownloaded:Z

    if-eqz v0, :cond_b

    return v1

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_1b

    .line 130
    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->isWaterfallFinished()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public isFailed()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    return v0
.end method

.method public loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubError;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    if-eqz v0, :cond_7

    .line 145
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    return-object p1

    .line 148
    :cond_7
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 150
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$2;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$2;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 159
    :cond_17
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_1a
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    if-nez v2, :cond_6a

    .line 163
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v2, v2, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/mopub/network/RequestRateTracker;->isBlockedByRateLimit(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 165
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v6, v6, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is blocked by request rate limiting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 166
    iput-boolean v2, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    .line 167
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$3;

    invoke-direct {v2, p0}, Lcom/mopub/network/AdLoader$3;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    monitor-exit v0

    return-object v1

    .line 175
    :cond_5a
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_6a
    if-eqz p1, :cond_6f

    .line 181
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->creativeDownloadFailed(Lcom/mopub/mobileads/MoPubError;)V

    .line 185
    :cond_6f
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 187
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object p1

    .line 188
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$4;

    invoke-direct {v2, p0, p1}, Lcom/mopub/network/AdLoader$4;-><init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    monitor-exit v0

    return-object p1

    .line 198
    :cond_8b
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->isWaterfallFinished()Z

    move-result p1

    if-nez p1, :cond_c2

    .line 200
    new-instance p1, Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v4, v1, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v5, v1, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    .line 206
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 208
    :cond_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_1a .. :try_end_c3} :catchall_ce

    .line 211
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$5;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$5;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :catchall_ce
    move-exception p1

    .line 208
    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw p1
.end method
