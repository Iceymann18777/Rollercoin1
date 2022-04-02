.class final Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private isSeeking:Z

.field private lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

.field private final mediaPeriodIdToInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

.field private timeline:Landroidx/media2/exoplayer/external/Timeline;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    .line 704
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 705
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;)Ljava/util/ArrayList;
    .registers 1

    .line 687
    iget-object p0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method private updateLastReportedPlayingMediaPeriod()V
    .registers 3

    .line 854
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 855
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    :cond_13
    return-void
.end method

.method private updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "newTimeline"
        }
    .end annotation

    .line 861
    iget-object v0, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p1

    .line 866
    :cond_c
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 867
    new-instance v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;I)V

    return-object v1
.end method


# virtual methods
.method public getLastReportedPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 2

    .line 731
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->lastReportedPlayingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 3

    .line 750
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_18

    .line 752
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    :goto_18
    return-object v0
.end method

.method public getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriodId"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object p1
.end method

.method public getPlayingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 3

    .line 717
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    if-eqz v0, :cond_15

    goto :goto_1f

    .line 719
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public getReadingMediaPeriod()Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 2

    .line 740
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-object v0
.end method

.method public isSeeking()Z
    .registers 2

    .line 763
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    return v0
.end method

.method public onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 822
    :goto_f
    new-instance v2, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    if-eqz v0, :cond_16

    .line 823
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_18

    :cond_16
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    :goto_18
    invoke-direct {v2, p2, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;I)V

    .line 824
    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_38

    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 827
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    :cond_38
    return-void
.end method

.method public onMediaPeriodReleased(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriodId"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 841
    :cond_c
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 842
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    if-eqz v0, :cond_31

    iget-object v0, v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 843
    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    goto :goto_2f

    :cond_27
    iget-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    :goto_2f
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 790
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    return-void
.end method

.method public onReadingStarted(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriodId"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    return-void
.end method

.method public onSeekProcessed()V
    .registers 2

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    .line 816
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    return-void
.end method

.method public onSeekStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->isSeeking:Z

    return-void
.end method

.method public onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    const/4 v0, 0x0

    .line 795
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 796
    iget-object v1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    .line 797
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    invoke-direct {p0, v1, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v1

    .line 798
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v2, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodIdToInfo:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 801
    :cond_24
    iget-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    if-eqz v0, :cond_2e

    .line 802
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodInfoToNewTimeline(Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 804
    :cond_2e
    iput-object p1, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 805
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->updateLastReportedPlayingMediaPeriod()V

    return-void
.end method

.method public tryResolveWindowIndex(I)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowIndex"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 773
    :goto_3
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 774
    iget-object v3, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;

    .line 775
    iget-object v4, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    .line 776
    iget-object v5, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 777
    invoke-virtual {v5, v4, v6}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    if-ne v4, p1, :cond_30

    if-eqz v2, :cond_2f

    return-object v0

    :cond_2f
    move-object v2, v3

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_33
    return-object v2
.end method
