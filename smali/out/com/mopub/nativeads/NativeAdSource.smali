.class Lcom/mopub/nativeads/NativeAdSource;
.super Ljava/lang/Object;
.source "NativeAdSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    }
.end annotation


# static fields
.field private static final CACHE_LIMIT:I = 0x1

.field private static final EXPIRATION_TIME_MILLISECONDS:I = 0xdbba00

.field private static final MAXIMUM_RETRY_TIME_MILLISECONDS:I = 0x493e0

.field static final RETRY_TIME_ARRAY_MILLISECONDS:[I


# instance fields
.field private final mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

.field private mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

.field mCurrentRetries:I

.field private mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

.field private final mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private final mNativeAdCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReplenishCacheHandler:Landroid/os/Handler;

.field private final mReplenishCacheRunnable:Ljava/lang/Runnable;

.field mRequestInFlight:Z

.field private mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

.field mRetryInFlight:Z

.field mSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_a

    sput-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/nativeads/NativeAdSource;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    .line 87
    new-instance p1, Lcom/mopub/nativeads/NativeAdSource$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/NativeAdSource$1;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object p3, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 98
    new-instance p1, Lcom/mopub/nativeads/NativeAdSource$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/NativeAdSource$2;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 138
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/MoPubNative;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/NativeAdSource;)Ljava/util/List;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/NativeAdSource;)Ljava/lang/Runnable;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/NativeAdSource;)Landroid/os/Handler;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 202
    iput-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 205
    :cond_a
    iput-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/TimestampWrapper;

    .line 208
    iget-object v1, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_12

    .line 210
    :cond_26
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 214
    iput v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 215
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    return-void
.end method

.method dequeueAd()Lcom/mopub/nativeads/NativeAd;
    .registers 9

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 233
    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mRetryInFlight:Z

    if-nez v2, :cond_13

    .line 234
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_13
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 239
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/TimestampWrapper;

    .line 241
    iget-wide v3, v2, Lcom/mopub/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xdbba00

    cmp-long v7, v3, v5

    if-gez v7, :cond_13

    .line 242
    iget-object v0, v2, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    return-object v0

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method getAdRendererCount()I
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method getMoPubNativeNetworkListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method getRetryTime()I
    .registers 4

    .line 262
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v2, v1

    if-lt v0, v2, :cond_c

    .line 263
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    .line 265
    :cond_c
    sget-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    iget v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    aget v0, v0, v1

    return v0
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method loadAds(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .registers 6

    .line 177
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    return-void
.end method

.method loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .registers 5

    .line 183
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 185
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 186
    invoke-virtual {p2, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_d

    .line 189
    :cond_1d
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 190
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 192
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->replenishCache()V

    return-void
.end method

.method registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_c

    .line 157
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    :cond_c
    return-void
.end method

.method replenishCache()V
    .registers 4

    .line 275
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_20

    .line 276
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    :cond_20
    return-void
.end method

.method resetRetryTime()V
    .registers 2

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    return-void
.end method

.method setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    return-void
.end method

.method setMoPubNative(Lcom/mopub/nativeads/MoPubNative;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    return-void
.end method

.method updateRetryTime()V
    .registers 3

    .line 250
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 251
    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    :cond_d
    return-void
.end method
