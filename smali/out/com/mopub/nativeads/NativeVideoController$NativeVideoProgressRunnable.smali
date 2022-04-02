.class Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoProgressRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field private mDuration:J

.field private mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

.field private mStopRequested:Z

.field private mTextureView:Landroid/view/TextureView;

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private final mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

.field private final mVisibilityTrackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/common/VisibilityTracker$VisibilityChecker;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 567
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 568
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 569
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 570
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 571
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    .line 574
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    .line 575
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    .line 576
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const-wide/16 p1, -0x1

    .line 577
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    const/4 p1, 0x0

    .line 578
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 557
    new-instance v4, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    invoke-direct {v4}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method


# virtual methods
.method checkImpressionTrackers(Z)V
    .registers 9

    .line 611
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    .line 612
    iget-boolean v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    if-eqz v3, :cond_1a

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    if-nez p1, :cond_2a

    .line 616
    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget v5, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    iget-object v6, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumVisiblePx:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v4, v5, v6}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 618
    :cond_2a
    iget v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    add-long/2addr v3, v5

    long-to-int v4, v3

    iput v4, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    if-nez p1, :cond_3b

    .line 619
    iget v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    iget v4, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    if-lt v3, v4, :cond_7

    .line 621
    :cond_3b
    iget-object v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    invoke-interface {v3}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;->execute()V

    const/4 v3, 0x1

    .line 622
    iput-boolean v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    goto :goto_17

    .line 627
    :cond_44
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_53

    iget-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    if-eqz p1, :cond_53

    .line 628
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    :cond_53
    return-void
.end method

.method public doWork()V
    .registers 6

    .line 634
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_70

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_70

    .line 638
    :cond_b
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 639
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    .line 643
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    if-eqz v0, :cond_32

    .line 644
    iget-wide v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 645
    invoke-interface {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;->updateProgress(I)V

    .line 648
    :cond_32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-int v2, v1

    iget-wide v3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-int v1, v3

    .line 649
    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastTracker;

    .line 654
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_4d

    .line 657
    :cond_60
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_4d

    .line 660
    :cond_6b
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_70
    :goto_70
    return-void
.end method

.method getCurrentPosition()J
    .registers 3

    .line 598
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-wide v0
.end method

.method getDuration()J
    .registers 3

    .line 602
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    return-wide v0
.end method

.method requestStop()V
    .registers 2

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    return-void
.end method

.method seekTo(J)V
    .registers 3

    .line 594
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-void
.end method

.method setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    return-void
.end method

.method setTextureView(Landroid/view/TextureView;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method setUpdateIntervalMillis(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    return-void
.end method
