.class final Landroidx/media2/exoplayer/external/ExoPlayerImpl;
.super Landroidx/media2/exoplayer/external/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;
    }
.end annotation


# instance fields
.field final emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

.field private final eventHandler:Landroid/os/Handler;

.field private hasPendingPrepare:Z

.field private hasPendingSeek:Z

.field private internalPlayWhenReady:Z

.field private final internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

.field private final internalPlayerHandler:Landroid/os/Handler;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private final pendingListenerNotifications:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private pendingOperationAcks:I

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playWhenReady:Z

.field private playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

.field private playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private repeatMode:I

.field private seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderers",
            "trackSelector",
            "loadControl",
            "bandwidthMeter",
            "clock",
            "looper"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    .line 112
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;-><init>()V

    .line 113
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Init "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.10.1"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 116
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 117
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 118
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    .line 119
    iput v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    .line 120
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 121
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    new-instance v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    array-length v3, v2

    new-array v3, v3, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    array-length v4, v2

    new-array v4, v4, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 127
    new-instance v1, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 128
    sget-object v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 129
    sget-object v1, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 130
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$1;

    move-object/from16 v3, p6

    invoke-direct {v1, p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$1;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    .line 137
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    invoke-static {v3, v4, v1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->createDummy(JLandroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 138
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    .line 139
    new-instance v12, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    iget v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;-><init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/Clock;)V

    iput-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    .line 151
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .registers 2

    .line 51
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    return-void
.end method

.method private getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resetPosition",
            "resetState",
            "playbackState"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    .line 673
    iput v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 674
    iput v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 675
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    goto :goto_20

    .line 677
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    :goto_20
    if-nez p1, :cond_24

    if-eqz p2, :cond_25

    :cond_24
    const/4 v3, 0x1

    :cond_25
    if-eqz v3, :cond_32

    .line 685
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v4, v5, v6}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v4

    goto :goto_36

    .line 686
    :cond_32
    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    :goto_36
    move-object/from16 v17, v4

    if-eqz v3, :cond_3b

    goto :goto_3f

    .line 687
    :cond_3b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    :goto_3f
    move-wide/from16 v22, v1

    if-eqz v3, :cond_49

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4d

    .line 688
    :cond_49
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    :goto_4d
    move-wide v11, v1

    .line 689
    new-instance v1, Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz p2, :cond_55

    .line 690
    sget-object v2, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_59

    :cond_55
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    :goto_59
    move-object v6, v2

    if-eqz p2, :cond_5e

    const/4 v2, 0x0

    goto :goto_62

    .line 691
    :cond_5e
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    :goto_62
    move-object v7, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_69

    .line 697
    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_6d

    :cond_69
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_6d
    move-object v15, v2

    if-eqz p2, :cond_73

    .line 698
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    goto :goto_77

    :cond_73
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    :goto_77
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move/from16 v13, p3

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    return-object v1
.end method

.method private handlePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;IZI)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackInfo",
            "operationAcks",
            "positionDiscontinuity",
            "positionDiscontinuityReason"
        }
    .end annotation

    .line 636
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    if-nez v0, :cond_4f

    .line 638
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_1f

    .line 640
    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    move-object v0, p1

    .line 641
    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    :cond_1f
    move-object v1, p1

    .line 647
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3b

    iget-object p1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 649
    iput p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 650
    iput p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v2, 0x0

    .line 651
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 655
    :cond_3b
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    if-eqz p1, :cond_41

    const/4 v4, 0x0

    goto :goto_43

    :cond_41
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 658
    :goto_43
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    .line 659
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 660
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 661
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V

    :cond_4f
    return-void
.end method

.method private static invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listeners",
            "listenerInvocation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;",
            ">;",
            "Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;",
            ")V"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    .line 836
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->invoke(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method static final synthetic lambda$handleEvent$4$ExoPlayerImpl(Landroidx/media2/exoplayer/external/PlaybackParameters;Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 2

    .line 618
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-void
.end method

.method static final synthetic lambda$handleEvent$5$ExoPlayerImpl(Landroidx/media2/exoplayer/external/ExoPlaybackException;Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 2

    .line 624
    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    return-void
.end method

.method static final synthetic lambda$notifyListeners$6$ExoPlayerImpl(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .registers 2

    .line 729
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->invokeAll(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    return-void
.end method

.method static final synthetic lambda$seekTo$3$ExoPlayerImpl(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 2

    const/4 v0, 0x1

    .line 341
    invoke-interface {p0, v0}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method static final synthetic lambda$setPlayWhenReady$0$ExoPlayerImpl(ZILandroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 3

    .line 264
    invoke-interface {p2, p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method private notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listenerInvocation"
        }
    .end annotation

    .line 728
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 729
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$6;

    invoke-direct {v1, v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$6;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyListeners(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listenerNotificationRunnable"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 734
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_10

    return-void

    .line 738
    :cond_10
    :goto_10
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 739
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 740
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingListenerNotifications:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_10

    :cond_29
    return-void
.end method

.method private periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "periodId",
            "positionUs"
        }
    .end annotation

    .line 745
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide p2

    .line 746
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 747
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private shouldMaskPosition()Z
    .registers 2

    .line 752
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackInfo",
            "positionDiscontinuity",
            "positionDiscontinuityReason",
            "timelineChangeReason",
            "seekProcessed"
        }
    .end annotation

    move-object v0, p0

    .line 712
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-object v2, p1

    .line 713
    iput-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 714
    new-instance v11, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;-><init>(Landroidx/media2/exoplayer/external/PlaybackInfo;Landroidx/media2/exoplayer/external/PlaybackInfo;Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;ZIIZZ)V

    invoke-direct {p0, v11}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;-><init>(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 432
    new-instance v6, Landroidx/media2/exoplayer/external/PlayerMessage;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 436
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayerHandler:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/PlayerMessage;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage$Sender;Landroidx/media2/exoplayer/external/PlayerMessage$Target;Landroidx/media2/exoplayer/external/Timeline;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .line 513
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 514
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 515
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    goto :goto_21

    .line 516
    :cond_1d
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    :goto_21
    return-wide v0

    .line 518
    :cond_22
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .registers 7

    .line 553
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 554
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 556
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    .line 558
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 560
    :cond_2c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 561
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 563
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    .line 564
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 565
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_5d

    .line 567
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->durationUs:J

    goto :goto_5e

    :cond_5d
    move-wide v0, v1

    .line 570
    :cond_5e
    :goto_5e
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v2, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .registers 5

    .line 543
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 544
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 545
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 547
    :cond_25
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .registers 2

    .line 533
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 538
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .registers 3

    .line 472
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 473
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 475
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 4

    .line 502
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 503
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 504
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 507
    :cond_1c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->periodPositionUsToWindowPositionMs(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .registers 2

    .line 596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-object v0
.end method

.method public getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    .registers 2

    .line 591
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .registers 4

    .line 481
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 482
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 484
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    return v0
.end method

.method public getDuration()J
    .registers 5

    .line 491
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 493
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 494
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 495
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 497
    :cond_24
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 2

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 206
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getTotalBufferedDuration()J
    .registers 5

    .line 523
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 622
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 623
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 624
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$5;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$5;-><init>(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_48

    .line 627
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 615
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 616
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 617
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 618
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$4;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    goto :goto_48

    .line 608
    :cond_36
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2, v1, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->handlePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;IZI)V

    :cond_48
    :goto_48
    return-void
.end method

.method public isPlayingAd()Z
    .registers 2

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaSource",
            "resetPosition",
            "resetState"
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackError:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    .line 231
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 v0, 0x2

    .line 233
    invoke-direct {p0, p2, p3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v2

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 240
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 242
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;ZIIZ)V

    return-void
.end method

.method public release()V
    .registers 6

    .line 408
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 410
    invoke-static {}, Landroidx/media2/exoplayer/external/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.10.1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 408
    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 412
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->release()V

    .line 413
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 415
    invoke-direct {p0, v0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    return-void
.end method

.method public seekTo(IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "positionMs"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    if-ltz p1, :cond_8b

    .line 309
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v1

    if-ge p1, v1, :cond_8b

    :cond_12
    const/4 v1, 0x1

    .line 312
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->hasPendingSeek:Z

    .line 313
    iget v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->pendingOperationAcks:I

    .line 314
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->isPlayingAd()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 318
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 320
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 328
    :cond_35
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowIndex:I

    .line 329
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4f

    cmp-long v1, p2, v4

    if-nez v1, :cond_49

    const-wide/16 v1, 0x0

    goto :goto_4a

    :cond_49
    move-wide v1, p2

    .line 330
    :goto_4a
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 331
    iput v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    goto :goto_7c

    :cond_4f
    cmp-long v1, p2, v4

    if-nez v1, :cond_5e

    .line 334
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v1

    goto :goto_62

    :cond_5e
    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v1

    :goto_62
    move-wide v7, v1

    .line 335
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 336
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 337
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 338
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 340
    :goto_7c
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekTo(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    .line 341
    sget-object p1, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$3;->$instance:Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    return-void

    .line 310
    :cond_8b
    new-instance v1, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    throw v1
.end method

.method public setPlayWhenReady(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "suppressPlayback"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    .line 257
    :goto_7
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayWhenReady:Z

    if-eq v0, p2, :cond_12

    .line 258
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayWhenReady:Z

    .line 259
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 261
    :cond_12
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    if-eq p2, p1, :cond_24

    .line 262
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playWhenReady:Z

    .line 263
    iget-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p2, p2, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    .line 264
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$0;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$$Lambda$0;-><init>(ZI)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->notifyListeners(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V

    :cond_24
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 347
    sget-object p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 349
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-void
.end method

.method public setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekParameters"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 360
    sget-object p1, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 362
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 363
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 364
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->internalPlayer:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V

    :cond_13
    return-void
.end method
