.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;"
        }
    .end annotation
.end field

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private final livePresentationDelayMs:J

.field private final livePresentationDelayOverridesManifest:Z

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I

.field private final tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.dash"

    .line 75
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private getManifestLoadRetryDelayMillis()J
    .registers 3

    .line 1081
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getNowUnixTimeUs()J
    .registers 6

    .line 1091
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 1092
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1094
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .registers 4

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 943
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 945
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .registers 3

    .line 938
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 p1, 0x1

    .line 939
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private processManifest(Z)V
    .registers 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 950
    :goto_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 951
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 952
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    if-lt v3, v4, :cond_26

    .line 953
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 960
    :cond_29
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 961
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 962
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 961
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v4

    .line 963
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 964
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 963
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v5

    .line 966
    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 967
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    .line 968
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_b8

    iget-boolean v4, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    if-nez v4, :cond_b8

    .line 971
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getNowUnixTimeUs()J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 972
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 973
    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v14

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 974
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 975
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_b4

    .line 976
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_96
    cmp-long v14, v4, v12

    if-gez v14, :cond_a6

    if-lez v2, :cond_a6

    .line 980
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_96

    :cond_a6
    if-nez v2, :cond_ad

    .line 983
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_b3

    .line 987
    :cond_ad
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    :goto_b3
    move-wide v6, v4

    :cond_b4
    move-wide/from16 v20, v6

    const/4 v2, 0x1

    goto :goto_bb

    :cond_b8
    move-wide/from16 v20, v6

    const/4 v2, 0x0

    :goto_bb
    sub-long v8, v8, v20

    move-wide/from16 v22, v8

    const/4 v4, 0x0

    .line 993
    :goto_c0
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_d4

    .line 994
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 997
    :cond_d4
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_104

    .line 998
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayMs:J

    .line 999
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->livePresentationDelayOverridesManifest:Z

    if-nez v5, :cond_ec

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    cmp-long v7, v5, v10

    if-eqz v7, :cond_ec

    .line 1001
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 1004
    :cond_ec
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v3

    sub-long v3, v22, v3

    const-wide/32 v5, 0x4c4b40

    cmp-long v7, v3, v5

    if-gez v7, :cond_101

    const-wide/16 v3, 0x2

    .line 1009
    div-long v3, v22, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_101
    move-wide/from16 v24, v3

    goto :goto_106

    :cond_104
    move-wide/from16 v24, v12

    .line 1013
    :goto_106
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1014
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v3, v5

    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v5

    add-long v17, v3, v5

    .line 1015
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->tag:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v3

    move/from16 v19, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    invoke-direct/range {v14 .. v27}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Object;)V

    .line 1025
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 1027
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v1, :cond_17a

    .line 1029
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_149

    .line 1032
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1034
    :cond_149
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v1, :cond_151

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    goto :goto_17a

    :cond_151
    if-eqz p1, :cond_17a

    .line 1036
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_17a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_17a

    .line 1040
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v5, v1, v12

    if-nez v5, :cond_16a

    goto :goto_16b

    :cond_16a
    move-wide v3, v1

    .line 1048
    :goto_16b
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v1, v3

    .line 1050
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1051
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    :cond_17a
    :goto_17a
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .registers 4

    .line 906
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 907
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 908
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_53

    :cond_13
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 910
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 911
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_4a

    :cond_24
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 913
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 914
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_40

    .line 918
    :cond_35
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_56

    .line 915
    :cond_40
    :goto_40
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_56

    .line 912
    :cond_4a
    :goto_4a
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_56

    .line 909
    :cond_53
    :goto_53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    :goto_56
    return-void
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .registers 6

    .line 924
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 925
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_c
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 927
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    :goto_11
    return-void
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 933
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void
.end method

.method private scheduleManifestRefresh(J)V
    .registers 5

    .line 1057
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide p2

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method

.method private startLoadingManifest()V
    .registers 6

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1065
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 1066
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    return-void

    .line 1070
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_1f
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 1072
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3b

    const/4 v0, 0x0

    .line 1073
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1074
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 1077
    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 1074
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void

    :catchall_3b
    move-exception v1

    .line 1072
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 679
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v7, v2, v3

    .line 680
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 681
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v12

    .line 682
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v2, v7

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object v4, v1

    move-object/from16 v16, p2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v18}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V

    .line 697
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 893
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 895
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 896
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 900
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 893
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v13, p2

    .line 751
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 758
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 751
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 761
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v4, 0x0

    if-nez v3, :cond_2b

    const/4 v3, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    .line 763
    :goto_2f
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v3, :cond_47

    .line 764
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 765
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v10, v8, v5

    if-gez v10, :cond_47

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 769
    :cond_47
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_bc

    sub-int v5, v3, v7

    .line 771
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    if-le v5, v8, :cond_5d

    const-string v5, "DashMediaSource"

    const-string v8, "Loaded out of sync manifest"

    .line 777
    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    const/4 v5, 0x1

    goto :goto_98

    .line 779
    :cond_5d
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v10

    if-eqz v5, :cond_97

    iget-wide v8, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_97

    const-string v5, "DashMediaSource"

    .line 784
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded stale dynamic manifest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_97
    const/4 v5, 0x0

    :goto_98
    if-eqz v5, :cond_ba

    .line 794
    iget v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 795
    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    if-ge v2, v0, :cond_b2

    .line 796
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_b9

    .line 798
    :cond_b2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    :goto_b9
    return-void

    .line 802
    :cond_ba
    iput v4, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 805
    :cond_bc
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 806
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v2, v5

    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    sub-long v8, v13, p4

    .line 807
    iput-wide v8, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 808
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 809
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v2, :cond_ea

    .line 810
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    .line 814
    :try_start_d4
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v0, v5, :cond_dd

    const/4 v4, 0x1

    :cond_dd
    if-eqz v4, :cond_e5

    .line 816
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 818
    :cond_e5
    monitor-exit v2

    goto :goto_ea

    :catchall_e7
    move-exception v0

    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_e7

    throw v0

    :cond_ea
    :goto_ea
    if-nez v3, :cond_104

    .line 822
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_100

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v0, :cond_100

    .line 823
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_10c

    .line 825
    :cond_100
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_10c

    .line 828
    :cond_104
    iget v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 829
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    :goto_10c
    return-void
.end method

.method onManifestLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 839
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/4 v3, 0x4

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 840
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1d

    .line 842
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_22

    :cond_1d
    const/4 v4, 0x0

    .line 845
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    .line 846
    :goto_22
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 848
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    .line 855
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 846
    invoke-virtual/range {v3 .. v15}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 861
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 863
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 864
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 868
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 861
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 869
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 877
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 879
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 880
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 884
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 877
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 887
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 888
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v1
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3

    .line 659
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 660
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    .line 661
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_2b

    .line 664
    :cond_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 665
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "Loader:DashMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 666
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 667
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->startLoadingManifest()V

    :goto_2b
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3

    .line 703
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 704
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->release()V

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 6

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadPending:Z

    const/4 v1, 0x0

    .line 711
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 712
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_f

    .line 713
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 714
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_f
    const-wide/16 v2, 0x0

    .line 716
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 717
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 718
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_1d

    :cond_1c
    move-object v4, v1

    :goto_1d
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 719
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 720
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 721
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_2e

    .line 722
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 723
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 725
    :cond_2e
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 726
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 727
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 728
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->firstPeriodId:I

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
