.class public final Lcom/mopub/nativeads/MoPubRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final NATIVE_AD_VIEW_TYPE_BASE:I = -0x38


# instance fields
.field private mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private final mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

.field private final mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

.field private final mViewPositionMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 51
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .registers 5

    .line 64
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    new-instance p3, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {p3, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/common/VisibilityTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .registers 5

    .line 57
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    new-instance p3, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {p3, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/common/VisibilityTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/mopub/common/VisibilityTracker;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    sget-object v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    .line 73
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 74
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    .line 75
    new-instance p2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;

    invoke-direct {p2, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {p3, p2}, Lcom/mopub/common/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V

    .line 83
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 85
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 86
    new-instance p2, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;

    invoke-direct {p2, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V

    .line 97
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 99
    new-instance p1, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 164
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubRecyclerAdapter;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    return-object p0
.end method

.method public static computeScrollOffset(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 236
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 240
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_31

    .line 243
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_31

    .line 245
    :cond_1c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 246
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_31

    .line 249
    :cond_2d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :cond_31
    :goto_31
    return v0
.end method

.method private handleVisibilityChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 553
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7fffffff

    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 554
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1f

    goto :goto_8

    .line 558
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 559
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_8

    .line 561
    :cond_30
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAdsInRange(II)V

    return-void
.end method

.method private setHasStableIdsInternal(Z)V
    .registers 2

    .line 568
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public clearAds()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearAds()V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 457
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->destroy()V

    .line 458
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->destroy()V

    return-void
.end method

.method public getAdjustedPosition(I)I
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 472
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 476
    :cond_b
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 478
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    neg-int p1, p1

    int-to-long v0, p1

    return-wide v0

    .line 481
    :cond_1a
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewType(I)I

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v0, -0x38

    return v0

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getOriginalPosition(I)I
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result p1

    return p1
.end method

.method handleAdLoaded(I)V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_7

    .line 532
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 535
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method handleAdRemoved(I)V
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_7

    .line 541
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    .line 544
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public isAd(I)Z
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result p1

    return p1
.end method

.method public loadAds(Ljava/lang/String;)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;)V

    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 169
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 170
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 7

    .line 422
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 424
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    return-void

    .line 428
    :cond_12
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mViewPositionMap:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;ILjava/lang/Integer;)V

    .line 432
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    const/16 v0, -0x38

    if-lt p2, v0, :cond_35

    .line 405
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewTypeCount()I

    move-result v1

    add-int/2addr v1, v0

    if-gt p2, v1, :cond_35

    .line 407
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p2

    if-nez p2, :cond_25

    .line 409
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "No view binder was registered for ads in MoPubRecyclerAdapter."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 413
    :cond_25
    new-instance v0, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    .line 414
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {p2, v1, p1}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 417
    :cond_35
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 487
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_9

    .line 488
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 492
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 497
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_8

    .line 498
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 503
    :cond_8
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 508
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_8

    .line 509
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 514
    :cond_8
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 519
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_8

    .line 520
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 525
    :cond_8
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public refreshAds(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .registers 12

    .line 279
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    .line 280
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "This adapter is not attached to a RecyclerView and cannot be refreshed."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 284
    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_24

    .line 286
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t refresh ads when there is no layout manager on a RecyclerView."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 290
    :cond_24
    instance-of v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_89

    .line 294
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 295
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 296
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 297
    invoke-static {v0, v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->computeScrollOffset(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    .line 300
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 301
    :goto_3e
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v6, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v6

    if-eqz v6, :cond_4b

    if-lez v5, :cond_4b

    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    .line 306
    :cond_4b
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->getItemCount()I

    move-result v6

    .line 307
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    .line 308
    :goto_53
    iget-object v8, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v8, v7}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v8

    if-eqz v8, :cond_62

    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_62

    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 312
    :cond_62
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    .line 313
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v5, v7}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v5

    .line 314
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    .line 316
    iget-object v7, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v7, v5, v6}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 317
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v5, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    move-result v1

    if-lez v1, :cond_85

    sub-int/2addr v3, v1

    .line 320
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 323
    :cond_85
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_94

    .line 325
    :cond_89
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "This LayoutManager can\'t be refreshed."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_94
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .registers 3

    const-string v0, "Cannot register a null adRenderer"

    .line 200
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStreamAdPlacer:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdLoadedListener:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public setContentChangeStrategy(Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;)V
    .registers 3

    .line 392
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 395
    :cond_7
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mStrategy:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 4

    .line 447
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->setHasStableIdsInternal(Z)V

    .line 450
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 451
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 452
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mOriginalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
