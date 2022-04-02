.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/BaseMediaSource;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;"
        }
    .end annotation
.end field

.field private final livePresentationDelayMs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final sideloadedManifest:Z

.field private final tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$tFjHmMdOxDkhvkY7QhPdfdPmbtI(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private processManifest()V
    .registers 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 675
    :goto_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 676
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    const-wide/high16 v2, -0x8000000000000000L

    .line 681
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v14, v6

    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v5, :cond_52

    aget-object v9, v4, v8

    .line 682
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v10, :cond_4f

    .line 683
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 684
    iget v10, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    iget v12, v9, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    .line 685
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 684
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_52
    const-wide/16 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v6

    if-nez v1, :cond_8a

    .line 691
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_65

    move-wide v11, v8

    goto :goto_66

    :cond_65
    move-wide v11, v4

    .line 692
    :goto_66
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->tag:Ljava/lang/Object;

    move-object v10, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v10 .. v23}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_10a

    .line 703
    :cond_8a
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_e2

    .line 704
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_aa

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_aa

    .line 705
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v4, v2, v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_aa
    move-wide/from16 v21, v14

    sub-long v19, v2, v21

    .line 708
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_c5

    const-wide/16 v1, 0x2

    .line 713
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_c5
    move-wide/from16 v23, v1

    .line 715
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->tag:Ljava/lang/Object;

    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v16 .. v29}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10a

    .line 727
    :cond_e2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_f0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move-wide v12, v1

    goto :goto_f2

    :cond_f0
    sub-long/2addr v2, v14

    move-wide v12, v2

    .line 729
    :goto_f2
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->tag:Ljava/lang/Object;

    move-object v9, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v9 .. v22}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 741
    :goto_10a
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .registers 7

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_7

    return-void

    .line 748
    :cond_7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 750
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/-$$Lambda$SsMediaSource$tFjHmMdOxDkhvkY7QhPdfdPmbtI;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/-$$Lambda$SsMediaSource$tFjHmMdOxDkhvkY7QhPdfdPmbtI;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoadingManifest()V
    .registers 6

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 757
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 759
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 761
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 760
    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 762
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 15

    .line 575
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    .line 576
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 587
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 635
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 637
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 638
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 642
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 635
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 618
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 620
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 621
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 625
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 618
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 626
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    sub-long v1, p2, p4

    .line 627
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 629
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 652
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/4 v3, 0x4

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 653
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1d

    .line 655
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_22

    :cond_1d
    const/4 v4, 0x0

    .line 658
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    .line 659
    :goto_22
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    .line 668
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 659
    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3

    .line 554
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 555
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 556
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_16

    .line 557
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 558
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    goto :goto_33

    .line 560
    :cond_16
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 561
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "Loader:Manifest"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 562
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 563
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    :goto_33
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3

    .line 593
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 5

    .line 599
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 600
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const-wide/16 v2, 0x0

    .line 601
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_1a

    .line 603
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 604
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 606
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 607
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 608
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 610
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
