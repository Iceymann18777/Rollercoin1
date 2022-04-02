.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"


# static fields
.field public static final CONTENT_VIEW_TYPE:I = 0x0

.field private static final DEFAULT_AD_VIEW_TYPE:I = -0x1

.field private static final EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private static final MAX_VISIBLE_RANGE:I = 0x64

.field private static final RANGE_BUFFER:I = 0x6


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private final mAdSource:Lcom/mopub/nativeads/NativeAdSource;

.field private mAdUnitId:Ljava/lang/String;

.field private mHasPlacedAds:Z

.field private mHasReceivedAds:Z

.field private mHasReceivedPositions:Z

.field private mItemCount:I

.field private final mNativeAdMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPlacement:Z

.field private mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

.field private mPlacementData:Lcom/mopub/nativeads/PlacementData;

.field private final mPlacementHandler:Landroid/os/Handler;

.field private final mPlacementRunnable:Ljava/lang/Runnable;

.field private final mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

.field private final mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mopub/nativeads/NativeAd;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVisibleRangeEnd:I

.field private mVisibleRangeStart:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .registers 5

    .line 130
    new-instance v0, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {v0}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/ClientPositioningSource;

    invoke-direct {v1, p2}, Lcom/mopub/nativeads/ClientPositioningSource;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .registers 4

    .line 116
    new-instance p2, Lcom/mopub/nativeads/NativeAdSource;

    invoke-direct {p2}, Lcom/mopub/nativeads/NativeAdSource;-><init>()V

    new-instance v0, Lcom/mopub/nativeads/ServerPositioningSource;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/ServerPositioningSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/NativeAdSource;Lcom/mopub/nativeads/PositioningSource;)V
    .registers 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    const-string v0, "activity is not allowed to be null"

    .line 137
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSource is not allowed to be null"

    .line 138
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioningSource is not allowed to be null"

    .line 139
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mActivity:Landroid/app/Activity;

    .line 143
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    .line 144
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    .line 145
    invoke-static {}, Lcom/mopub/nativeads/PlacementData;->empty()Lcom/mopub/nativeads/PlacementData;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 147
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeAdMap:Ljava/util/WeakHashMap;

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    .line 150
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    .line 151
    new-instance p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 163
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    return-void
.end method

.method private clearNativeAd(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_1a

    .line 720
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 721
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method private notifyNeedsPlacement()V
    .registers 3

    .line 641
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNeedsPlacement:Z

    .line 647
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private placeAds()V
    .registers 3

    .line 655
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 662
    :cond_b
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    add-int/lit8 v1, v0, 0x6

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAdsInRange(II)Z

    return-void
.end method

.method private placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V
    .registers 4

    .line 302
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 304
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    .line 305
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAds()V

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    return-void
.end method

.method private prepareNativeAd(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V
    .registers 5

    .line 731
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mNativeAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    return-void
.end method

.method private tryPlaceAd(I)Z
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->dequeueAd()Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 704
    :cond_a
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v1, p1, v0}, Lcom/mopub/nativeads/PlacementData;->placeAd(ILcom/mopub/nativeads/NativeAd;)V

    .line 705
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 707
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    return v1
.end method

.method private tryPlaceAdsInRange(II)Z
    .registers 5

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_2
    if-gt p1, p2, :cond_25

    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    .line 677
    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    if-lt p1, v1, :cond_c

    goto :goto_25

    .line 680
    :cond_c
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/PlacementData;->shouldPlaceAd(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 681
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->tryPlaceAd(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 p1, 0x0

    return p1

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    .line 686
    :cond_1e
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/PlacementData;->nextInsertionPosition(I)I

    move-result p1

    goto :goto_2

    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 429
    :goto_12
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 430
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeAd(Landroid/view/View;)V

    .line 431
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearNativeAd(Landroid/view/View;)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->prepareNativeAd(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    .line 433
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    :cond_24
    return-void
.end method

.method public clearAds()V
    .registers 3

    .line 359
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 360
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 375
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0}, Lcom/mopub/nativeads/PlacementData;->clearAds()V

    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    return-object p1
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAdSource;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    if-eqz p2, :cond_d

    goto :goto_13

    .line 412
    :cond_d
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mActivity:Landroid/app/Activity;

    .line 413
    invoke-virtual {p1, p2, p3}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 414
    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    return-object p2
.end method

.method public getAdViewType(I)I
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAdSource;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method public getAdViewTypeCount()I
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public getAdjustedCount(I)I
    .registers 3

    .line 554
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result p1

    return p1
.end method

.method public getAdjustedPosition(I)I
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result p1

    return p1
.end method

.method public getOriginalCount(I)I
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalCount(I)I

    move-result p1

    return p1
.end method

.method public getOriginalPosition(I)I
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result p1

    return p1
.end method

.method handleAdsAvailable()V
    .registers 2

    .line 287
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz v0, :cond_8

    .line 288
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    return-void

    .line 293
    :cond_8
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    if-eqz v0, :cond_11

    .line 294
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    :cond_11
    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    return-void
.end method

.method handlePositioningLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .registers 3

    .line 275
    invoke-static {p1}, Lcom/mopub/nativeads/PlacementData;->fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;

    move-result-object p1

    .line 276
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    if-eqz v0, :cond_c

    .line 277
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeInitialAds(Lcom/mopub/nativeads/PlacementData;)V

    goto :goto_e

    .line 279
    :cond_c
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPendingPlacementData:Lcom/mopub/nativeads/PlacementData;

    :goto_e
    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    return-void
.end method

.method public insertItem(I)V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    return-void
.end method

.method public isAd(I)Z
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->isPlacedAd(I)Z

    move-result p1

    return p1
.end method

.method public loadAds(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .registers 5

    const-string v0, "Cannot load ads with a null ad unit ID"

    .line 233
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAdSource;->getAdRendererCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 238
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads"

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_1f
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdUnitId:Ljava/lang/String;

    .line 245
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    .line 246
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedPositions:Z

    .line 247
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasReceivedAds:Z

    .line 249
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPositioningSource:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    .line 263
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeAdSource;->setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V

    .line 270
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public moveItem(II)V
    .registers 4

    .line 636
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->moveItem(II)V

    return-void
.end method

.method public placeAdsInRange(II)V
    .registers 3

    .line 330
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    add-int/lit8 p1, p1, 0x64

    .line 331
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeEnd:I

    .line 332
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .registers 3

    const-string v0, "Cannot register a null adRenderer"

    .line 177
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdSource:Lcom/mopub/nativeads/NativeAdSource;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAdSource;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-void
.end method

.method public removeAdsInRange(II)I
    .registers 8

    .line 447
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0}, Lcom/mopub/nativeads/PlacementData;->getPlacedAdPositions()[I

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result p1

    .line 450
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v1, p2}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result p2

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_3b

    .line 456
    aget v3, v0, v2

    if-lt v3, p1, :cond_38

    if-lt v3, p2, :cond_23

    goto :goto_38

    .line 461
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    if-ge v3, v4, :cond_32

    add-int/lit8 v4, v4, -0x1

    .line 466
    iput v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mVisibleRangeStart:I

    .line 468
    :cond_32
    iget v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 471
    :cond_3b
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    move-result p1

    .line 472
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v1, v0}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_45

    :cond_5b
    return p1
.end method

.method public removeItem(I)V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .registers 2

    if-nez p1, :cond_4

    .line 202
    sget-object p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->EMPTY_NATIVE_AD_LOADED_LISTENER:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    :cond_4
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public setItemCount(I)V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mPlacementData:Lcom/mopub/nativeads/PlacementData;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedCount(I)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mItemCount:I

    .line 570
    iget-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->mHasPlacedAds:Z

    if-eqz p1, :cond_f

    .line 571
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->notifyNeedsPlacement()V

    :cond_f
    return-void
.end method
