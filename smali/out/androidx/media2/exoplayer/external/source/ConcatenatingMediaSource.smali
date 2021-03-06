.class public Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.super Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;,
        Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<",
        "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAtomic:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private nextTimelineUpdateOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOnCompletionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private periodCount:I

.field private playbackThreadHandler:Landroid/os/Handler;

.field private shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

.field private timelineUpdateScheduled:Z

.field private final useLazyPreparation:Z

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;

.field private windowCount:I


# direct methods
.method public varargs constructor <init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isAtomic",
            "shuffleOrder",
            "mediaSources"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(ZZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isAtomic",
            "useLazyPreparation",
            "shuffleOrder",
            "mediaSources"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;-><init>()V

    .line 136
    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p4, v1

    .line 137
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 139
    :cond_f
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v0

    if-lez v0, :cond_19

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object p3

    :cond_19
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 140
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 141
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    .line 142
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 143
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 144
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 145
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    .line 146
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 147
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    .line 148
    new-instance p1, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 149
    new-instance p1, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 150
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAtomic",
            "mediaSources"
        }
    .end annotation

    .line 105
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaSources"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(Z[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    return-void
.end method

.method private addMediaSourceInternal(ILandroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newIndex",
            "newMediaSourceHolder"
        }
    .end annotation

    if-lez p1, :cond_22

    .line 744
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 745
    iget v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 747
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 748
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 745
    invoke-virtual {p2, p1, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(III)V

    goto :goto_26

    :cond_22
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p2, p1, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->reset(III)V

    .line 753
    :goto_26
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 756
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v0

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 757
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v1

    const/4 v2, 0x1

    .line 753
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 758
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 759
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->useLazyPreparation:Z

    if-nez p1, :cond_4d

    .line 761
    iput-boolean v2, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 762
    iget-object p1, p2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-virtual {p0, p2, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    :cond_4d
    return-void
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "mediaSourceHolders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 737
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    add-int/lit8 v1, p1, 0x1

    .line 738
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourceInternal(ILandroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    move p1, v1

    goto :goto_4

    :cond_17
    return-void
.end method

.method private addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mediaSources",
            "handler",
            "onCompletionAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p4, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 543
    :goto_10
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 544
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 545
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 546
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 548
    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 550
    new-instance v5, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 552
    :cond_4b
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v0, :cond_69

    .line 553
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_69

    .line 554
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p2

    .line 555
    new-instance p3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    invoke-direct {p3, p1, v2, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    .line 556
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_70

    :cond_69
    if-eqz p4, :cond_70

    if-eqz p3, :cond_70

    .line 559
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_70
    :goto_70
    return-void
.end method

.method private correctOffsets(IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "childIndexUpdate",
            "windowOffsetUpdate",
            "periodOffsetUpdate"
        }
    .end annotation

    .line 864
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    .line 865
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    add-int/2addr v0, p4

    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    .line 866
    :goto_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 867
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 868
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p3

    iput v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 869
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/2addr v1, p4

    iput v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_3c
    return-void
.end method

.method private createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "runnable"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 636
    :cond_5
    new-instance v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 637
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized dispatchOnCompletionActions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCompletionActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 729
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    .line 730
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;->dispatch()V

    goto :goto_5

    .line 732
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 733
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method

.method private static getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "periodUid"
        }
    .end annotation

    .line 890
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 891
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$200(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;)Ljava/lang/Object;

    move-result-object p1

    :cond_14
    return-object p1
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodUid"
        }
    .end annotation

    .line 885
    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "childPeriodUid"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$200(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 896
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object p1

    .line 898
    :cond_10
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;
    .registers 2

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b2

    if-eq v0, v1, :cond_76

    const/4 v2, 0x2

    if-eq v0, v2, :cond_40

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_26

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    .line 684
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 685
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V

    goto/16 :goto_da

    .line 688
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 681
    :cond_26
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto/16 :goto_da

    .line 675
    :cond_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 677
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 678
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto/16 :goto_da

    .line 668
    :cond_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 669
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    add-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 670
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 671
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 672
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto :goto_da

    .line 654
    :cond_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 655
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    .line 656
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_9b

    .line 657
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_9b

    .line 658
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    goto :goto_a3

    .line 660
    :cond_9b
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v3, v0, v2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    :goto_a3
    sub-int/2addr v2, v1

    :goto_a4
    if-lt v2, v0, :cond_ac

    .line 663
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_a4

    .line 665
    :cond_ac
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    goto :goto_da

    .line 647
    :cond_b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 649
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 650
    iget v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->index:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p0, v0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 651
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    :goto_da
    return v1
.end method

.method private maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaSourceHolder"
        }
    .end annotation

    .line 876
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 878
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 879
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentIndex",
            "newIndex"
        }
    .end annotation

    .line 848
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 849
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 850
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 851
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    iget v3, v3, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 852
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_27
    if-gt v0, v1, :cond_46

    .line 854
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 855
    iput v2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 856
    iput v3, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 857
    iget-object p2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result p2

    add-int/2addr v2, p2

    .line 858
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_46
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 836
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 841
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 842
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v1

    neg-int v1, v1

    const/4 v3, -0x1

    .line 838
    invoke-direct {p0, p1, v3, v2, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    const/4 p1, 0x1

    .line 843
    iput-boolean p1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 844
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    return-void
.end method

.method private removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex",
            "handler",
            "onCompletionAction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p4, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_f

    const/4 v0, 0x1

    .line 569
    :cond_f
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 571
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-static {v2, p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    if-eqz v0, :cond_30

    .line 573
    invoke-direct {p0, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->createOnCompletionAction(Landroid/os/Handler;Ljava/lang/Runnable;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;

    move-result-object p3

    .line 574
    new-instance p4, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;

    .line 575
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 576
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    :cond_30
    if-eqz p4, :cond_37

    if-eqz p3, :cond_37

    .line 578
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_37
    :goto_37
    return-void
.end method

.method private scheduleTimelineUpdate()V
    .registers 2

    const/4 v0, 0x0

    .line 694
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V

    return-void
.end method

.method private scheduleTimelineUpdate(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCompletionAction"
        }
    .end annotation

    .line 698
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    if-nez v0, :cond_13

    .line 699
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    :cond_13
    if-eqz p1, :cond_1a

    .line 703
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method private updateMediaSourceInternal(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/Timeline;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaSourceHolder",
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_b6

    .line 770
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 771
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v1

    if-ne v1, p2, :cond_b

    return-void

    .line 774
    :cond_b
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 775
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_23

    if-eqz v2, :cond_29

    .line 777
    :cond_23
    iget v5, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    add-int/2addr v5, v4

    invoke-direct {p0, v5, v3, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->correctOffsets(IIII)V

    .line 783
    :cond_29
    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-eqz v1, :cond_35

    .line 784
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->cloneWithUpdatedTimeline(Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    goto/16 :goto_b0

    .line 785
    :cond_35
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 787
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->createWithRealTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    goto :goto_b0

    .line 792
    :cond_46
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 794
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    goto :goto_66

    .line 796
    :cond_5e
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    .line 809
    :goto_66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {p2, v3, v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 810
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v1

    if-eqz v0, :cond_7f

    .line 812
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->getPreparePositionUs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7f

    move-wide v11, v5

    goto :goto_80

    :cond_7f
    move-wide v11, v1

    .line 817
    :goto_80
    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const/4 v10, 0x0

    move-object v7, p2

    .line 818
    invoke-virtual/range {v7 .. v12}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 819
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 820
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 821
    invoke-static {p2, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;->createWithRealTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    move-result-object p2

    iput-object p2, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->timeline:Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DeferredTimeline;

    if-eqz v0, :cond_b0

    .line 823
    invoke-virtual {v0, v5, v6}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->overridePreparePositionUs(J)V

    .line 824
    iget-object p2, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 826
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 825
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p2

    .line 827
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    .line 830
    :cond_b0
    :goto_b0
    iput-boolean v4, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    .line 831
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V

    return-void

    .line 768
    :cond_b6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private updateTimelineAndScheduleOnCompletionActions()V
    .registers 9

    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 709
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 710
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    .line 711
    new-instance v1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    iget v5, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->isAtomic:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;IILandroidx/media2/exoplayer/external/source/ShuffleOrder;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    .line 715
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPlaybackThreadHandlerOnPlaybackThread()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    .line 716
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaSources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addPublicMediaSources(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 218
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final bridge synthetic bridge$lambda$0$ConcatenatingMediaSource(Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 375
    :try_start_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 376
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "allocator",
            "startPositionUs"
        }
    .end annotation

    .line 458
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    .line 462
    new-instance v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    new-instance v2, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$1;)V

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 463
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 465
    :cond_1e
    new-instance v8, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)V

    .line 467
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {p2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object p2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-boolean p2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    if-nez p2, :cond_3f

    .line 470
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->hasStartedPreparing:Z

    .line 471
    iget-object p1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V

    goto :goto_50

    .line 472
    :cond_3f
    iget-boolean p2, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-eqz p2, :cond_50

    .line 473
    iget-object p2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getChildPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 474
    invoke-virtual {v8, p1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V

    :cond_50
    :goto_50
    return-object v8
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaSourceHolder",
            "mediaPeriodId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 517
    :goto_1
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 520
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_26

    .line 522
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getPeriodUid(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 523
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "mediaSourceHolder",
            "mediaPeriodId"
        }
    .end annotation

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getSize()I
    .registers 2

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWindowIndexForChildWindowIndex(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaSourceHolder",
            "windowIndex"
        }
    .end annotation

    .line 532
    iget p1, p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p2, p1

    return p2
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "mediaSourceHolder",
            "windowIndex"
        }
    .end annotation

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->getWindowIndexForChildWindowIndex(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;I)I

    move-result p1

    return p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaSourceHolder",
            "mediaSource",
            "timeline",
            "manifest"
        }
    .end annotation

    .line 511
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateMediaSourceInternal(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/Timeline;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "mediaSourceHolder",
            "mediaSource",
            "timeline",
            "manifest"
        }
    .end annotation

    .line 54
    check-cast p1, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    monitor-enter p0

    .line 437
    :try_start_1
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 438
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$$Lambda$0;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 439
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 440
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->updateTimelineAndScheduleOnCompletionActions()V

    goto :goto_33

    .line 442
    :cond_1c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    .line 443
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 444
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->scheduleTimelineUpdate()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 446
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 482
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 483
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;->releasePeriod()V

    .line 484
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->maybeReleaseChildSource(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$MediaSourceHolder;)V

    return-void
.end method

.method public final declared-synchronized releaseSourceInternal()V
    .registers 4

    monitor-enter p0

    .line 490
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 493
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder;->cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->shuffleOrder:Landroidx/media2/exoplayer/external/source/ShuffleOrder;

    const/4 v0, 0x0

    .line 494
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->windowCount:I

    .line 495
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->periodCount:I

    .line 496
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_27

    .line 497
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 498
    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->playbackThreadHandler:Landroid/os/Handler;

    .line 500
    :cond_27
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->timelineUpdateScheduled:Z

    .line 501
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->nextTimelineUpdateOnCompletionActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->pendingOnCompletionActions:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->dispatchOnCompletionActions(Ljava/util/Set;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 503
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeMediaSource(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    .line 279
    :try_start_4
    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 280
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized removeMediaSourceRange(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 317
    :try_start_2
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;->removePublicMediaSources(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 319
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method
