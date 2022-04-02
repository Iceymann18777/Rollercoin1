.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;
.implements Landroidx/media2/exoplayer/external/PlayerMessage$Sender;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;
.implements Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;,
        Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    }
.end annotation


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

.field private enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private foregroundMode:Z

.field private final handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private final loadControl:Landroidx/media2/exoplayer/external/LoadControl;

.field private final mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private nextPendingMessageIndex:I

.field private pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPrepareCount:I

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private final playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private repeatMode:I

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/Clock;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
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
            "emptyTrackSelectorResult",
            "loadControl",
            "bandwidthMeter",
            "playWhenReady",
            "repeatMode",
            "shuffleModeEnabled",
            "eventHandler",
            "clock"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 146
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    .line 147
    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 148
    iput-object p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 149
    iput-object p5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 150
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    .line 151
    iput p7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    .line 152
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 153
    iput-object p9, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 154
    iput-object p10, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    .line 155
    new-instance p6, Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-direct {p6}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;-><init>()V

    iput-object p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    .line 157
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/LoadControl;->getBackBufferDurationUs()J

    move-result-wide p6

    iput-wide p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 158
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result p4

    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 160
    sget-object p4, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    iput-object p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 162
    invoke-static {p6, p7, p3}, Landroidx/media2/exoplayer/external/PlaybackInfo;->createDummy(JLandroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 163
    new-instance p3, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$1;)V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 164
    array-length p3, p1

    new-array p3, p3, [Landroidx/media2/exoplayer/external/RendererCapabilities;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 165
    :goto_48
    array-length p6, p1

    if-ge p4, p6, :cond_5d

    .line 166
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Landroidx/media2/exoplayer/external/Renderer;->setIndex(I)V

    .line 167
    iget-object p6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    aget-object p7, p1, p4

    invoke-interface {p7}, Landroidx/media2/exoplayer/external/Renderer;->getCapabilities()Landroidx/media2/exoplayer/external/RendererCapabilities;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_48

    .line 169
    :cond_5d
    new-instance p1, Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-direct {p1, p0, p10}, Landroidx/media2/exoplayer/external/DefaultMediaClock;-><init>(Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;Landroidx/media2/exoplayer/external/util/Clock;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-array p1, p3, [Landroidx/media2/exoplayer/external/Renderer;

    .line 171
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 172
    new-instance p1, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 173
    new-instance p1, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 174
    invoke-virtual {p2, p0, p5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->init(Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V

    .line 178
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 181
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Landroidx/media2/exoplayer/external/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    return-void
.end method

.method private deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 969
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 973
    :try_start_8
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getTarget()Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 975
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    throw v1
.end method

.method private disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->onRendererDisabled(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 1087
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V

    .line 1088
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->disable()V

    return-void
.end method

.method private doSomeWork()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 558
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 559
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePeriods()V

    .line 560
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_1c

    .line 562
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 563
    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    .line 566
    :cond_1c
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    const-string v6, "doSomeWork"

    .line 568
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 570
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 573
    iget-object v10, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v10, v11, v12, v13}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    .line 578
    iget-object v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v11, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_48
    if-ge v14, v11, :cond_85

    aget-object v12, v10, v14

    .line 582
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v12, v8, v9, v6, v7}, Landroidx/media2/exoplayer/external/Renderer;->render(JJ)V

    if-eqz v16, :cond_5c

    .line 583
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/Renderer;->isEnded()Z

    move-result v8

    if-eqz v8, :cond_5c

    const/16 v16, 0x1

    goto :goto_5e

    :cond_5c
    const/16 v16, 0x0

    .line 588
    :goto_5e
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/Renderer;->isReady()Z

    move-result v8

    if-nez v8, :cond_73

    invoke-interface {v12}, Landroidx/media2/exoplayer/external/Renderer;->isEnded()Z

    move-result v8

    if-nez v8, :cond_73

    .line 589
    invoke-direct {v0, v12}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererWaitingForNextStream(Landroidx/media2/exoplayer/external/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_71

    goto :goto_73

    :cond_71
    const/4 v8, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v8, 0x1

    :goto_74
    if-nez v8, :cond_79

    .line 591
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/Renderer;->maybeThrowStreamError()V

    :cond_79
    if-eqz v15, :cond_7f

    if-eqz v8, :cond_7f

    const/4 v15, 0x1

    goto :goto_80

    :cond_7f
    const/4 v15, 0x0

    :goto_80
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_48

    :cond_85
    if-nez v15, :cond_8a

    .line 596
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 599
    :cond_8a
    iget-object v6, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v6, v6, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v16, :cond_b1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v6, v11

    if-eqz v13, :cond_a4

    .line 600
    iget-object v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v13, v6, v11

    if-gtz v13, :cond_b1

    :cond_a4
    iget-object v3, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz v3, :cond_b1

    .line 604
    invoke-direct {v0, v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 605
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_e6

    .line 606
    :cond_b1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_c8

    .line 607
    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 608
    invoke-direct {v0, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 609
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_e6

    .line 610
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_e6

    .line 612
    :cond_c8
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v3, v9, :cond_e6

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v3

    if-nez v3, :cond_da

    .line 613
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_e6

    :cond_da
    if-nez v15, :cond_e6

    .line 614
    :cond_dc
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 615
    invoke-direct {v0, v10}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 616
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    .line 619
    :cond_e6
    :goto_e6
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_fa

    .line 620
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v6, v3

    const/4 v12, 0x0

    :goto_f0
    if-ge v12, v6, :cond_fa

    aget-object v7, v3, v12

    .line 621
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->maybeThrowStreamError()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_f0

    .line 625
    :cond_fa
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_104

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v3, v9, :cond_10a

    :cond_104
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne v3, v10, :cond_10e

    .line 627
    :cond_10a
    invoke-direct {v0, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_124

    .line 628
    :cond_10e
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v3

    if-eqz v3, :cond_11f

    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v3, v8, :cond_11f

    const-wide/16 v3, 0x3e8

    .line 629
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_124

    .line 631
    :cond_11f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v1, v10}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    .line 634
    :goto_124
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    return-void
.end method

.method private enableRenderer(IZI)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererIndex",
            "wasRendererEnabled",
            "enabledRendererIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1749
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v1, v1, p1

    .line 1750
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    aput-object v1, v2, p3

    .line 1751
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result p3

    if-nez p3, :cond_55

    .line 1752
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object p3

    .line 1753
    iget-object v2, p3, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v3, v2, p1

    .line 1755
    iget-object p3, p3, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {p3, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object p3

    .line 1756
    invoke-static {p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 1758
    iget-boolean p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_35

    iget-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p3, p3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_35

    const/4 p3, 0x1

    goto :goto_36

    :cond_35
    const/4 p3, 0x0

    :goto_36
    if-nez p2, :cond_3c

    if-eqz p3, :cond_3c

    const/4 v8, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v8, 0x0

    .line 1762
    :goto_3d
    iget-object p2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v5, p2, p1

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1764
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v9

    move-object v2, v1

    .line 1762
    invoke-interface/range {v2 .. v10}, Landroidx/media2/exoplayer/external/Renderer;->enable(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;JZJ)V

    .line 1765
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->onRendererEnabled(Landroidx/media2/exoplayer/external/Renderer;)V

    if-eqz p3, :cond_55

    .line 1768
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/Renderer;->start()V

    :cond_55
    return-void
.end method

.method private enableRenderers([ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererWasEnabledFlags",
            "totalEnabledRendererCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1727
    new-array p2, p2, [Landroidx/media2/exoplayer/external/Renderer;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    .line 1729
    iget-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1732
    :goto_10
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 1733
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1734
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->reset()V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    const/4 v1, 0x0

    .line 1738
    :goto_26
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_3c

    .line 1739
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1740
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderer(IZI)V

    move v1, v3

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3c
    return-void
.end method

.method private ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1080
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1081
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->stop()V

    :cond_a
    return-void
.end method

.method private static getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSelection"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1820
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 1821
    :goto_9
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    :goto_b
    if-ge v0, v1, :cond_16

    .line 1823
    invoke-interface {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-object v2
.end method

.method private getMaxRendererReadPositionUs()J
    .registers 10

    .line 1357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1361
    :cond_b
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1362
    :goto_10
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_42

    .line 1363
    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v4, v4, v3

    .line 1364
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2c

    goto :goto_3f

    .line 1368
    :cond_2c
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3b

    return-wide v6

    .line 1372
    :cond_3b
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_42
    return-wide v1
.end method

.method private getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "windowIndex",
            "windowPositionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1477
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getTotalBufferedDurationUs()J
    .registers 3

    .line 1803
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferedPositionInLoadingPeriodUs"
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 p1, 0x0

    goto :goto_12

    .line 1810
    :cond_b
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    :goto_12
    return-wide p1
.end method

.method private handleContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 1660
    :cond_9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1661
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingTrackSelectionChanged"
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1782
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1783
    :goto_11
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1784
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    .line 1786
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1788
    :cond_25
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-nez v0, :cond_2c

    .line 1790
    iget-wide v3, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    goto :goto_30

    .line 1791
    :cond_2c
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_30
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 1792
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_3e

    if-eqz p1, :cond_4f

    :cond_3e
    if-eqz v0, :cond_4f

    .line 1793
    iget-boolean p1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4f

    .line 1797
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object p1

    .line 1798
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1796
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V

    :cond_4f
    return-void
.end method

.method private handlePeriodPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 1641
    :cond_9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 1642
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 1643
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1642
    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->handlePrepared(FLandroidx/media2/exoplayer/external/Timeline;)V

    .line 1645
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object p1

    .line 1644
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V

    .line 1646
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result p1

    if-nez p1, :cond_42

    .line 1648
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 1649
    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    const/4 p1, 0x0

    .line 1650
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 1652
    :cond_42
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handlePlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1666
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1667
    iget v0, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 1668
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    if-eqz v3, :cond_1e

    .line 1670
    iget v4, p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/Renderer;->setOperatingRate(F)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback()V
    .registers 3

    const/4 v0, 0x4

    .line 1379
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1381
    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    return-void
.end method

.method private handleSourceInfoRefreshed(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceRefreshInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1271
    iget-object v0, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->source:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eq v0, v1, :cond_7

    return-void

    .line 1275
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    .line 1276
    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 1278
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1279
    iget-object v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1280
    iget-object p1, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;->manifest:Ljava/lang/Object;

    .line 1281
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 1282
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v3, v2, p1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTimeline(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1283
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePositions()V

    .line 1285
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1287
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    goto :goto_40

    :cond_3c
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 1289
    :goto_40
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    if-eqz v5, :cond_65

    const/4 p1, 0x1

    .line 1292
    invoke-direct {p0, v5, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    .line 1293
    iput-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    if-nez p1, :cond_52

    .line 1297
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    return-void

    .line 1300
    :cond_52
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1301
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    :goto_62
    move-object v6, p1

    move-wide v9, v1

    goto :goto_d1

    :cond_65
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_8f

    .line 1302
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8f

    .line 1304
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1306
    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    .line 1305
    invoke-direct {p0, v2, p1, v5, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 1307
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1308
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_62

    .line 1309
    :cond_8f
    iget-object v7, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c1

    .line 1312
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a4

    .line 1315
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback()V

    return-void

    .line 1319
    :cond_a4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 1321
    invoke-virtual {v2, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 1320
    invoke-direct {p0, v2, p1, v5, v6}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 1322
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1323
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_62

    .line 1324
    :cond_c1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1326
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, p1, v3, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    :cond_cf
    move-object v6, p1

    move-wide v9, v3

    .line 1329
    :goto_d1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    cmp-long p1, v3, v9

    if-nez p1, :cond_f1

    .line 1331
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateQueuedPeriods(JJ)Z

    move-result p1

    if-nez p1, :cond_132

    .line 1332
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_132

    .line 1336
    :cond_f1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    if-eqz p1, :cond_118

    .line 1339
    :cond_f9
    :goto_f9
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_118

    .line 1340
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 1341
    iget-object v1, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1342
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    goto :goto_f9

    .line 1347
    :cond_118
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_121

    const-wide/16 v1, 0x0

    goto :goto_122

    :cond_121
    move-wide v1, v9

    .line 1348
    :goto_122
    invoke-direct {p0, v6, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v7

    .line 1349
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1351
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v11

    .line 1350
    invoke-virtual/range {v5 .. v12}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1353
    :cond_132
    :goto_132
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private isTimelineReady()Z
    .registers 7

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1233
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    .line 1234
    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_32

    .line 1235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_32

    if-eqz v1, :cond_30

    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_32

    iget-object v0, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 1238
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    return v0
.end method

.method private maybeContinueLoading()V
    .registers 7

    .line 1676
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1677
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    const/4 v0, 0x0

    .line 1679
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    return-void

    .line 1683
    :cond_15
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v1

    .line 1684
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    .line 1686
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1685
    invoke-interface {v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/LoadControl;->shouldContinueLoading(JF)Z

    move-result v1

    .line 1687
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz v1, :cond_31

    .line 1689
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->continueLoading(J)V

    :cond_31
    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .registers 6

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingUpdate(Landroidx/media2/exoplayer/external/PlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 431
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 434
    invoke-static {v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v2

    .line 435
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$200(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 436
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$300(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v3

    goto :goto_23

    :cond_22
    const/4 v3, -0x1

    .line 437
    :goto_23
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 432
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 440
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->reset(Landroidx/media2/exoplayer/external/PlaybackInfo;)V

    :cond_33
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    if-eqz v0, :cond_31

    .line 1257
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_31

    if-eqz v1, :cond_1a

    .line 1259
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    if-ne v1, v0, :cond_31

    .line 1260
    :cond_1a
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 1261
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_29

    return-void

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1265
    :cond_2c
    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->maybeThrowPrepareError()V

    :cond_31
    return-void
.end method

.method private maybeThrowSourceInfoRefreshError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1245
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 1246
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_17

    return-void

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1251
    :cond_1a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldPeriodPositionUs",
            "newPeriodPositionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_116

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_116

    .line 1026
    :cond_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1f

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1030
    :cond_1f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1031
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1033
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    const/4 v2, 0x0

    if-lez v1, :cond_3d

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_3e

    :cond_3d
    move-object v1, v2

    :goto_3e
    if-eqz v1, :cond_61

    .line 1034
    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v3, v0, :cond_4e

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_61

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_61

    .line 1038
    :cond_4e
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    if-lez v1, :cond_3d

    .line 1040
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_3e

    .line 1043
    :cond_61
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    .line 1044
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_77

    :cond_76
    move-object v1, v2

    :goto_77
    if-eqz v1, :cond_a4

    .line 1046
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v3, :cond_a4

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v3, v0, :cond_8b

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_a4

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_a4

    .line 1051
    :cond_8b
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    .line 1053
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    .line 1054
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_77

    :cond_a4
    :goto_a4
    if-eqz v1, :cond_116

    .line 1058
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v3, :cond_116

    iget v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v3, v0, :cond_116

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_116

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p3

    if-gtz v5, :cond_116

    .line 1064
    :try_start_ba
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_f5

    .line 1066
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v3

    if-nez v3, :cond_d7

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d0

    goto :goto_d7

    .line 1069
    :cond_d0
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    goto :goto_de

    .line 1067
    :cond_d7
    :goto_d7
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1073
    :goto_de
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f3

    .line 1074
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_a4

    :cond_f3
    move-object v1, v2

    goto :goto_a4

    :catchall_f5
    move-exception p1

    .line 1066
    iget-object p2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_10e

    iget-object p2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_107

    goto :goto_10e

    .line 1069
    :cond_107
    iget p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    goto :goto_115

    .line 1067
    :cond_10e
    :goto_10e
    iget-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    iget p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1069
    :goto_115
    throw p1

    :cond_116
    :goto_116
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1618
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getNextMediaPeriodInfo(JLandroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1620
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowSourceInfoRefreshError()V

    goto :goto_3f

    .line 1622
    :cond_1f
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->trackSelector:Landroidx/media2/exoplayer/external/trackselection/TrackSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 1626
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/LoadControl;->getAllocator()Landroidx/media2/exoplayer/external/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    move-object v9, v0

    .line 1623
    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->enqueueNextMediaPeriod([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object v1

    .line 1629
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v1, p0, v2, v3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V

    const/4 v0, 0x1

    .line 1630
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    const/4 v0, 0x0

    .line 1631
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .registers 6

    .line 1195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_27

    .line 1197
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1199
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    .line 1200
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    if-eqz v4, :cond_1f

    .line 1202
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->onDiscontinuity()V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1206
    :cond_22
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_27
    return-void
.end method

.method private prepareInternal(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .registers 6
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

    .line 445
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 448
    iget-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/LoadControl;->onPrepared()V

    .line 449
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    const/4 p2, 0x2

    .line 450
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 451
    iget-object p3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->getTransferListener()Landroidx/media2/exoplayer/external/upstream/TransferListener;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Landroidx/media2/exoplayer/external/source/MediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 452
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .registers 3

    const/4 v0, 0x1

    .line 826
    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 831
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/LoadControl;->onReleased()V

    .line 832
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 833
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 834
    monitor-enter p0

    .line 835
    :try_start_12
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private rendererWaitingForNextStream(Landroidx/media2/exoplayer/external/Renderer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .line 1774
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1776
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_18

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private reselectTracksInternal()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1092
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 1096
    :cond_b
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1098
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 1099
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_21
    if-eqz v2, :cond_105

    .line 1103
    iget-boolean v6, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_29

    goto/16 :goto_105

    .line 1107
    :cond_29
    iget-object v6, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v2, v1, v6}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->selectTracks(FLandroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_fc

    const/4 v1, 0x4

    if-eqz v5, :cond_cc

    .line 1121
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 1122
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v11

    .line 1124
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v3

    new-array v3, v3, [Z

    .line 1125
    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v9, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-object v7, v2

    move-object v12, v3

    .line 1126
    invoke-virtual/range {v7 .. v12}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v7

    .line 1128
    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v5, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v5, v1, :cond_7d

    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v9, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_7d

    .line 1130
    iget-object v12, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v13, v12, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v9, v5, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 1135
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v18

    move-wide v14, v7

    move-wide/from16 v16, v9

    .line 1131
    invoke-virtual/range {v12 .. v19}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1136
    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1137
    invoke-direct {v0, v7, v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1141
    :cond_7d
    iget-object v5, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1142
    :goto_84
    iget-object v9, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v10, v9

    if-ge v7, v10, :cond_b8

    .line 1143
    aget-object v9, v9, v7

    .line 1144
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v10

    if-eqz v10, :cond_93

    const/4 v10, 0x1

    goto :goto_94

    :cond_93
    const/4 v10, 0x0

    :goto_94
    aput-boolean v10, v5, v7

    .line 1145
    iget-object v10, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v10, v10, v7

    if-eqz v10, :cond_9e

    add-int/lit8 v8, v8, 0x1

    .line 1149
    :cond_9e
    aget-boolean v11, v5, v7

    if-eqz v11, :cond_b5

    .line 1150
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v11

    if-eq v10, v11, :cond_ac

    .line 1152
    invoke-direct {v0, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    goto :goto_b5

    .line 1153
    :cond_ac
    aget-boolean v10, v3, v7

    if-eqz v10, :cond_b5

    .line 1155
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v9, v10, v11}, Landroidx/media2/exoplayer/external/Renderer;->resetPosition(J)V

    :cond_b5
    :goto_b5
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 1159
    :cond_b8
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1161
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v6

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 1160
    invoke-virtual {v3, v6, v2}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1162
    invoke-direct {v0, v5, v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_e6

    .line 1165
    :cond_cc
    iget-object v3, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    .line 1166
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_e6

    .line 1167
    iget-object v3, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v9, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1169
    invoke-virtual {v2, v11, v12}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v11

    .line 1168
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1170
    invoke-virtual {v2, v8, v9, v10, v6}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->applyTrackSelection(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;JZ)J

    .line 1173
    :cond_e6
    :goto_e6
    invoke-direct {v0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1174
    iget-object v2, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v2, v1, :cond_fb

    .line 1175
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1177
    iget-object v1, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_fb
    return-void

    :cond_fc
    if-ne v2, v3, :cond_ff

    const/4 v5, 0x0

    .line 1116
    :cond_ff
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    goto/16 :goto_21

    :cond_105
    :goto_105
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resetRenderers",
            "releaseMediaSource",
            "resetPosition",
            "resetState"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 845
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    .line 846
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 847
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->stop()V

    const-wide/16 v3, 0x0

    .line 848
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 849
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_18
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_2d

    aget-object v0, v3, v5

    .line 851
    :try_start_1e
    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V
    :try_end_21
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_1e .. :try_end_21} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v0

    goto :goto_25

    :catch_24
    move-exception v0

    :goto_25
    const-string v7, "Disable failed."

    .line 854
    invoke-static {v6, v7, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2d
    if-eqz p1, :cond_45

    .line 858
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_45

    aget-object v0, v3, v5

    .line 860
    :try_start_37
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->reset()V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_42

    :catch_3b
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 863
    invoke-static {v6, v0, v7}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_45
    new-array v0, v2, [Landroidx/media2/exoplayer/external/Renderer;

    .line 867
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    const/4 v0, 0x0

    if-eqz p3, :cond_4f

    .line 870
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    goto :goto_88

    :cond_4f
    if-eqz p4, :cond_88

    .line 875
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    if-nez v3, :cond_86

    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_86

    .line 876
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v4, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 877
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 878
    new-instance v5, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    sget-object v6, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v7, v7, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    invoke-direct {v5, v6, v7, v3, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    iput-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    :cond_86
    const/4 v3, 0x1

    goto :goto_8a

    :cond_88
    :goto_88
    move/from16 v3, p3

    .line 883
    :goto_8a
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->clear(Z)V

    .line 884
    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz p4, :cond_bc

    .line 886
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    sget-object v5, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 887
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    .line 888
    iget-object v5, v5, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    goto :goto_a3

    .line 890
    :cond_b5
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 891
    iput v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->nextPendingMessageIndex:I

    :cond_bc
    if-eqz v3, :cond_c9

    .line 895
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v5, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v2, v4, v5}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v2

    goto :goto_cd

    .line 896
    :cond_c9
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    :goto_cd
    move-object/from16 v16, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_d9

    move-wide/from16 v21, v4

    goto :goto_df

    .line 898
    :cond_d9
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    move-wide/from16 v21, v6

    :goto_df
    if-eqz v3, :cond_e3

    move-wide v10, v4

    goto :goto_e8

    .line 899
    :cond_e3
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    move-wide v10, v2

    .line 900
    :goto_e8
    new-instance v2, Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz p4, :cond_ef

    .line 902
    sget-object v3, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    goto :goto_f3

    :cond_ef
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    :goto_f3
    move-object v5, v3

    if-eqz p4, :cond_f8

    move-object v6, v0

    goto :goto_fd

    .line 903
    :cond_f8
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->manifest:Ljava/lang/Object;

    move-object v6, v3

    :goto_fd
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v12, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v13, 0x0

    if-eqz p4, :cond_107

    .line 909
    sget-object v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_10b

    :cond_107
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_10b
    move-object v14, v3

    if-eqz p4, :cond_111

    .line 910
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    goto :goto_115

    :cond_111
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/PlaybackInfo;->trackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    :goto_115
    move-object v15, v3

    const-wide/16 v19, 0x0

    move-object v4, v2

    move-object/from16 v7, v16

    move-wide/from16 v8, v21

    move-wide/from16 v17, v21

    invoke-direct/range {v4 .. v22}, Landroidx/media2/exoplayer/external/PlaybackInfo;-><init>(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJIZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)V

    iput-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz p2, :cond_12f

    .line 916
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v2, :cond_12f

    .line 917
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 918
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    :cond_12f
    return-void
.end method

.method private resetRendererPosition(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodPositionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 775
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_13
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 776
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->resetPosition(J)V

    .line 777
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p2, :cond_2a

    aget-object v1, p1, v0

    .line 778
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/Renderer;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 780
    :cond_2a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    return-void
.end method

.method private resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingMessageInfo"
        }
    .end annotation

    .line 992
    iget-object v0, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 994
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 997
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->getTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v2

    iget-object v3, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 998
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->getWindowIndex()I

    move-result v3

    iget-object v4, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 999
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPositionMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    .line 995
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_27

    return v1

    .line 1004
    :cond_27
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1005
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1004
    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    goto :goto_4f

    .line 1010
    :cond_3f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4d

    return v1

    .line 1014
    :cond_4d
    iput v0, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    :goto_4f
    const/4 p1, 0x1

    return p1
.end method

.method private resolvePendingMessagePositions()V
    .registers 4

    .line 980
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2e

    .line 981
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 983
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    .line 984
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 988
    :cond_2e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekPosition",
            "trySubsequentPeriods"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1429
    iget-object v1, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 1430
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return-object v3

    .line 1434
    :cond_e
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v1, v0

    .line 1442
    :cond_15
    :try_start_15
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v7, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_22} :catch_4b

    if-ne v0, v1, :cond_25

    return-object p1

    .line 1453
    :cond_25
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2f

    return-object p1

    :cond_2f
    if-eqz p2, :cond_4b

    .line 1460
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 1463
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 1464
    invoke-virtual {v0, v2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1463
    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_4b
    :cond_4b
    return-object v3
.end method

.method private resolveSubsequentPeriod(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline;Landroidx/media2/exoplayer/external/Timeline;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldPeriodUid",
            "oldTimeline",
            "newTimeline"
        }
    .end annotation

    .line 1400
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    .line 1402
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_c
    if-ge v2, v0, :cond_2b

    if-ne p1, v1, :cond_2b

    .line 1404
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_20

    goto :goto_2b

    .line 1410
    :cond_20
    invoke-virtual {p2, v4}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    :goto_2b
    if-ne p1, v1, :cond_2f

    const/4 p1, 0x0

    goto :goto_33

    .line 1412
    :cond_2f
    invoke-virtual {p3, p1}, Landroidx/media2/exoplayer/external/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    :goto_33
    return-object p1
.end method

.method private scheduleNextWork(JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thisOperationStartTimeMs",
            "intervalMs"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->removeMessages(I)V

    .line 639
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sendDiscontinuity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 493
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    const/4 v3, 0x1

    .line 494
    invoke-direct {p0, v2, v0, v1, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v3

    .line 495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_31

    .line 496
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 501
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v7

    .line 497
    invoke-virtual/range {v1 .. v8}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz p1, :cond_31

    .line 503
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_31
    return-void
.end method

.method private seekToInternal(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 643
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 650
    invoke-direct {v1, v0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolveSeekPosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v2, :cond_28

    .line 654
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v9, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v10, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v2, v9, v10}, Landroidx/media2/exoplayer/external/PlaybackInfo;->getDummyFirstMediaPeriodId(ZLandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v2

    move-object v15, v2

    move-wide v12, v6

    move-wide/from16 v18, v12

    :goto_26
    const/4 v2, 0x1

    goto :goto_57

    .line 660
    :cond_28
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 661
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 662
    iget-object v12, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v12, v9, v10, v11}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v9

    .line 663
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v12

    if-eqz v12, :cond_43

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_26

    .line 667
    :cond_43
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 668
    iget-wide v14, v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v2, v14, v6

    if-nez v2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_57
    const/4 v9, 0x2

    .line 673
    :try_start_58
    iget-object v10, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v10, :cond_c6

    iget v10, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v10, :cond_61

    goto :goto_c6

    :cond_61
    cmp-long v0, v12, v6

    if-nez v0, :cond_6d

    const/4 v0, 0x4

    .line 678
    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 679
    invoke-direct {v1, v8, v8, v3, v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    goto :goto_c8

    .line 687
    :cond_6d
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v15, v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 688
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_8c

    cmp-long v6, v12, v4

    if-eqz v6, :cond_8c

    .line 690
    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 691
    invoke-interface {v0, v12, v13, v4}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J

    move-result-wide v4

    goto :goto_8d

    :cond_8c
    move-wide v4, v12

    .line 694
    :goto_8d
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v6

    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-nez v0, :cond_b8

    .line 696
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J
    :try_end_a1
    .catchall {:try_start_58 .. :try_end_a1} :catchall_de

    .line 705
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    move-wide/from16 v16, v3

    .line 706
    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz v2, :cond_b6

    .line 709
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_b6
    return-void

    :cond_b7
    move-wide v4, v12

    .line 700
    :cond_b8
    :try_start_b8
    invoke-direct {v1, v15, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v3, 0x0

    :goto_c2
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_ca

    .line 675
    :cond_c6
    :goto_c6
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;
    :try_end_c8
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_de

    :goto_c8
    move-wide/from16 v16, v12

    .line 705
    :goto_ca
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    .line 706
    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz v2, :cond_dd

    .line 709
    iget-object v0, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_dd
    return-void

    :catchall_de
    move-exception v0

    .line 705
    iget-object v14, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 707
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v20

    move-wide/from16 v16, v12

    .line 706
    invoke-virtual/range {v14 .. v21}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v3

    iput-object v3, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-eqz v2, :cond_f4

    .line 709
    iget-object v2, v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_f4
    goto :goto_f6

    :goto_f5
    throw v0

    :goto_f6
    goto :goto_f5
.end method

.method private seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "periodId",
            "periodPositionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    .line 718
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 717
    :goto_11
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private seekToPeriodPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JZ)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodId",
            "periodPositionUs",
            "forceDisableRenderers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 724
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v1, 0x2

    .line 726
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    .line 729
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    move-object v3, v2

    :goto_11
    if-eqz v3, :cond_2e

    .line 732
    iget-object v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_27

    .line 733
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    goto :goto_2e

    .line 736
    :cond_27
    iget-object v3, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v3

    goto :goto_11

    :cond_2e
    :goto_2e
    if-ne v2, v3, :cond_32

    if-eqz p4, :cond_45

    .line 741
    :cond_32
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, p4, :cond_40

    aget-object v4, p1, v2

    .line 742
    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_40
    new-array p1, v0, [Landroidx/media2/exoplayer/external/Renderer;

    .line 744
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    const/4 v2, 0x0

    :cond_45
    if-eqz v3, :cond_67

    .line 750
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 751
    iget-boolean p1, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_60

    .line 752
    iget-object p1, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 753
    iget-object p3, v3, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p3, v2, v3, p4}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->discardBuffer(JZ)V

    move-wide p2, p1

    .line 756
    :cond_60
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 757
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_7c

    .line 759
    :cond_67
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->clear(Z)V

    .line 761
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    sget-object p4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    .line 762
    invoke-virtual {p1, p4, v2}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 763
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 766
    :goto_7c
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 767
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessageInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 926
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    goto :goto_3f

    .line 927
    :cond_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_35

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v0, :cond_1a

    goto :goto_35

    .line 931
    :cond_1a
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 932
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 933
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3f

    :cond_30
    const/4 v0, 0x0

    .line 937
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V

    goto :goto_3f

    .line 929
    :cond_35
    :goto_35
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3f
    return-void
.end method

.method private sendMessageToTarget(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 943
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 944
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 945
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_21

    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_32

    .line 948
    :cond_21
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_32

    .line 951
    :cond_27
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_32
    :goto_32
    return-void
.end method

.method private sendMessageToTargetThread(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 956
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 957
    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;Landroidx/media2/exoplayer/external/PlayerMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foregroundMode",
            "processedFlag"
        }
    .end annotation

    .line 793
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_1c

    .line 794
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_1c

    .line 796
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 797
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v3

    if-nez v3, :cond_19

    .line 798
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/Renderer;->reset()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    if-eqz p2, :cond_2b

    .line 804
    monitor-enter p0

    const/4 p1, 0x1

    .line 805
    :try_start_20
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 806
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    :goto_2b
    return-void
.end method

.method private setIsLoading(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoading"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    if-eq v0, p1, :cond_e

    .line 425
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithIsLoading(Z)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    :cond_e
    return-void
.end method

.method private setPlayWhenReadyInternal(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 457
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_e

    .line 459
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopRenderers()V

    .line 460
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_2a

    .line 462
    :cond_e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1f

    .line 463
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->startRenderers()V

    .line 464
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_2a

    .line 465
    :cond_1f
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2a

    .line 466
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method private setPlaybackParametersInternal(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 473
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->repeatMode:I

    .line 474
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateRepeatMode(I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    .line 475
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_e
    const/4 p1, 0x0

    .line 477
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setSeekParametersInternal(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekParameters"
        }
    .end annotation

    .line 788
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekParameters:Landroidx/media2/exoplayer/external/SeekParameters;

    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shuffleModeEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 482
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 483
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateShuffleModeEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    .line 484
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_e
    const/4 p1, 0x0

    .line 486
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_e

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    :cond_e
    return-void
.end method

.method private shouldTransitionToReadyState(Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderersReadyOrEnded"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v0, v0

    if-nez v0, :cond_a

    .line 1213
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result p1

    return p1

    :cond_a
    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    .line 1218
    :cond_e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    const/4 v1, 0x1

    if-nez p1, :cond_16

    return v1

    .line 1224
    :cond_16
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 1225
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-nez p1, :cond_43

    .line 1226
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    .line 1228
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 1227
    invoke-interface {p1, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/LoadControl;->shouldStartPlayback(JFZ)Z

    move-result p1

    if-eqz p1, :cond_44

    :cond_43
    const/4 v0, 0x1

    :cond_44
    return v0
.end method

.method private startRenderers()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rebuffering:Z

    .line 510
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->start()V

    .line 511
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 512
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private stopInternal(ZZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "forceResetRenderers",
            "resetPositionAndState",
            "acknowledgeStop"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 813
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    invoke-direct {p0, p1, v1, p2, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 818
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 820
    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    .line 821
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/LoadControl;->onStopped()V

    .line 822
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->stop()V

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enabledRenderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 519
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->ensureStopped(Landroidx/media2/exoplayer/external/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private updateLoadControlTrackSelection(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackGroups",
            "trackSelectorResult"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->loadControl:Landroidx/media2/exoplayer/external/LoadControl;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/exoplayer/external/LoadControl;->onTracksSelected([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method private updatePeriods()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-nez v0, :cond_5

    return-void

    .line 1485
    :cond_5
    iget v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->pendingPrepareCount:I

    if-lez v1, :cond_d

    .line 1487
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1492
    :cond_d
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1493
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1494
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 1496
    :cond_20
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->isLoading:Z

    if-nez v0, :cond_2d

    .line 1497
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_2d

    .line 1495
    :cond_2a
    :goto_2a
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1500
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_36

    return-void

    .line 1506
    :cond_36
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 1507
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1509
    :goto_44
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v5, :cond_92

    if-eq v0, v2, :cond_92

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1511
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_92

    if-eqz v4, :cond_5d

    .line 1516
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 1519
    :cond_5d
    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v4, :cond_65

    const/4 v4, 0x0

    goto :goto_66

    :cond_65
    const/4 v4, 0x3

    .line 1523
    :goto_66
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v5

    .line 1524
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    .line 1525
    iget-object v6, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, v5, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 1530
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v12

    .line 1526
    invoke-virtual/range {v6 .. v13}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1531
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1532
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->updatePlaybackPositions()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_44

    .line 1536
    :cond_92
    iget-object v0, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-eqz v0, :cond_b8

    .line 1537
    :goto_98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v3, v0

    if-ge v1, v3, :cond_b7

    .line 1538
    aget-object v0, v0, v1

    .line 1539
    iget-object v3, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v3, v3, v1

    if-eqz v3, :cond_b4

    .line 1542
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_b4

    .line 1543
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 1544
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_b7
    return-void

    .line 1551
    :cond_b8
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_bf

    return-void

    :cond_bf
    const/4 v0, 0x0

    .line 1556
    :goto_c0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v5, v4

    if-ge v0, v5, :cond_de

    .line 1557
    aget-object v4, v4, v0

    .line 1558
    iget-object v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v5, v5, v0

    .line 1559
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_dd

    if-eqz v5, :cond_da

    .line 1560
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_da

    goto :goto_dd

    :cond_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_dd
    :goto_dd
    return-void

    .line 1566
    :cond_de
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_ea

    .line 1568
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    return-void

    .line 1572
    :cond_ea
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1573
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->advanceReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    .line 1574
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 1576
    iget-object v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    .line 1577
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_109

    const/4 v5, 0x1

    goto :goto_10a

    :cond_109
    const/4 v5, 0x0

    :goto_10a
    const/4 v6, 0x0

    .line 1578
    :goto_10b
    iget-object v7, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v8, v7

    if-ge v6, v8, :cond_165

    .line 1579
    aget-object v7, v7, v6

    .line 1580
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v8

    if-nez v8, :cond_119

    goto :goto_162

    :cond_119
    if-eqz v5, :cond_11f

    .line 1586
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    goto :goto_162

    .line 1587
    :cond_11f
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->isCurrentStreamFinal()Z

    move-result v8

    if-nez v8, :cond_162

    .line 1588
    iget-object v8, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v8, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v8

    .line 1589
    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v9

    .line 1590
    iget-object v10, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media2/exoplayer/external/RendererCapabilities;

    aget-object v10, v10, v6

    invoke-interface {v10}, Landroidx/media2/exoplayer/external/RendererCapabilities;->getTrackType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_13c

    const/4 v10, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v10, 0x0

    .line 1591
    :goto_13d
    iget-object v11, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v11, v11, v6

    .line 1592
    iget-object v12, v4, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v12, v12, v6

    if-eqz v9, :cond_15f

    .line 1593
    invoke-virtual {v12, v11}, Landroidx/media2/exoplayer/external/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15f

    if-nez v10, :cond_15f

    .line 1600
    invoke-static {v8}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getFormats(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 1601
    iget-object v9, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v9, v9, v6

    .line 1602
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v10

    .line 1601
    invoke-interface {v7, v8, v9, v10, v11}, Landroidx/media2/exoplayer/external/Renderer;->replaceStream([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleStream;J)V

    goto :goto_162

    .line 1609
    :cond_15f
    invoke-interface {v7}, Landroidx/media2/exoplayer/external/Renderer;->setCurrentStreamFinal()V

    :cond_162
    :goto_162
    add-int/lit8 v6, v6, 0x1

    goto :goto_10b

    :cond_165
    return-void
.end method

.method private updatePlaybackPositions()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 529
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 530
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_42

    .line 532
    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 535
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_59

    .line 536
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-object v3, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    .line 541
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v8

    .line 537
    invoke-virtual/range {v2 .. v9}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithNewPosition(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 542
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_59

    .line 545
    :cond_42
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->mediaClock:Landroidx/media2/exoplayer/external/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->syncAndGetPositionUs()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 546
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 547
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 548
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    iput-wide v0, v2, Landroidx/media2/exoplayer/external/PlaybackInfo;->positionUs:J

    .line 552
    :cond_59
    :goto_59
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    .line 553
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/PlaybackInfo;->bufferedPositionUs:J

    .line 554
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/PlaybackInfo;->totalBufferedDurationUs:J

    return-void
.end method

.method private updatePlayingPeriodRenderers(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldPlayingPeriodHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_68

    if-ne p1, v0, :cond_b

    goto :goto_68

    .line 1701
    :cond_b
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1702
    :goto_13
    iget-object v5, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v6, v5

    if-ge v3, v6, :cond_55

    .line 1703
    aget-object v5, v5, v3

    .line 1704
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/Renderer;->getState()I

    move-result v6

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    :goto_23
    aput-boolean v6, v1, v3

    .line 1705
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_31

    add-int/lit8 v4, v4, 0x1

    .line 1708
    :cond_31
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_52

    .line 1709
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1710
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1711
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/Renderer;->getStream()Landroidx/media2/exoplayer/external/source/SampleStream;

    move-result-object v6

    iget-object v7, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->sampleStreams:[Landroidx/media2/exoplayer/external/source/SampleStream;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_52

    .line 1715
    :cond_4f
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->disableRenderer(Landroidx/media2/exoplayer/external/Renderer;)V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1718
    :cond_55
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1720
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    .line 1721
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1719
    invoke-virtual {p1, v2, v0}, Landroidx/media2/exoplayer/external/PlaybackInfo;->copyWithTrackInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Landroidx/media2/exoplayer/external/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->playbackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1722
    invoke-direct {p0, v1, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->enableRenderers([ZI)V

    :cond_68
    :goto_68
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackSpeed"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->queue:Landroidx/media2/exoplayer/external/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_29

    .line 1183
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_29

    .line 1184
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getTrackSelectorResult()Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->getAll()[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    .line 1185
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    if-eqz v4, :cond_21

    .line 1187
    invoke-interface {v4, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1190
    :cond_24
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_29
    return-void
.end method


# virtual methods
.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 316
    :try_start_5
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_10e

    return v3

    .line 367
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    goto/16 :goto_b1

    .line 373
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageToTargetThread(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    goto/16 :goto_b1

    .line 370
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/PlayerMessage;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->sendMessageInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    goto/16 :goto_b1

    .line 345
    :pswitch_26
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v4, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_b1

    .line 330
    :pswitch_36
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3c

    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_b1

    .line 327
    :pswitch_42
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_b1

    .line 364
    :pswitch_49
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_b1

    .line 361
    :pswitch_4e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    goto :goto_b1

    .line 355
    :pswitch_56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handlePeriodPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    goto :goto_b1

    .line 358
    :pswitch_5e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V

    goto :goto_b1

    .line 376
    :pswitch_66
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->releaseInternal()V

    return v2

    .line 349
    :pswitch_6a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_70

    const/4 p1, 0x1

    goto :goto_71

    :cond_70
    const/4 p1, 0x0

    :goto_71
    invoke-direct {p0, v3, p1, v2}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    goto :goto_b1

    .line 342
    :pswitch_75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setSeekParametersInternal(Landroidx/media2/exoplayer/external/SeekParameters;)V

    goto :goto_b1

    .line 339
    :pswitch_7d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlaybackParametersInternal(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    goto :goto_b1

    .line 336
    :pswitch_85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->seekToInternal(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;)V

    goto :goto_b1

    .line 333
    :pswitch_8d
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->doSomeWork()V

    goto :goto_b1

    .line 324
    :pswitch_91
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_97

    const/4 p1, 0x1

    goto :goto_98

    :cond_97
    const/4 p1, 0x0

    :goto_98
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    goto :goto_b1

    .line 318
    :pswitch_9c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media2/exoplayer/external/source/MediaSource;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_a6

    const/4 v5, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v5, 0x0

    :goto_a7
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_ad

    const/4 p1, 0x1

    goto :goto_ae

    :cond_ad
    const/4 p1, 0x0

    :goto_ae
    invoke-direct {p0, v4, v5, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->prepareInternal(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    .line 382
    :goto_b1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V
    :try_end_b4
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_5 .. :try_end_b4} :catch_f8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b4} :catch_de
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b4} :catch_b7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_b4} :catch_b5

    goto :goto_10d

    :catch_b5
    move-exception p1

    goto :goto_b8

    :catch_b7
    move-exception p1

    :goto_b8
    const-string v4, "Internal runtime error."

    .line 400
    invoke-static {v0, v4, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_c8

    .line 403
    check-cast p1, Ljava/lang/OutOfMemoryError;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForOutOfMemoryError(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    goto :goto_ce

    .line 404
    :cond_c8
    check-cast p1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    .line 405
    :goto_ce
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    invoke-direct {p0, v2, v3, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 410
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_10d

    :catch_de
    move-exception p1

    const-string v4, "Source error."

    .line 392
    invoke-static {v0, v4, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 394
    invoke-direct {p0, v3, v3, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 398
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_10d

    :catch_f8
    move-exception p1

    const-string v4, "Playback error."

    .line 384
    invoke-static {v0, v4, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 386
    invoke-direct {p0, v2, v3, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->stopInternal(ZZZ)V

    .line 390
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    :goto_10d
    return v2

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_91
        :pswitch_8d
        :pswitch_85
        :pswitch_7d
        :pswitch_75
        :pswitch_6a
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_49
        :pswitch_42
        :pswitch_36
        :pswitch_26
        :pswitch_1d
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method

.method final synthetic lambda$sendMessageToTargetThread$0$ExoPlayerImplInternal(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 4

    .line 960
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->deliverMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    :try_end_3
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 962
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 57
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0x11

    .line 307
    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timeline",
            "manifest"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .registers 3

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V
    .registers 6
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

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x0

    .line 186
    invoke-interface {v0, v1, p2, p3, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 253
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    .line 254
    monitor-exit p0

    return-void

    .line 256
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 258
    :goto_e
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    if-nez v1, :cond_18

    .line 260
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    goto :goto_e

    :catch_16
    const/4 v0, 0x1

    goto :goto_e

    :cond_18
    if-eqz v0, :cond_21

    .line 267
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_23

    .line 269
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26
.end method

.method public seekTo(Landroidx/media2/exoplayer/external/Timeline;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "windowIndex",
            "positionUs"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    new-instance v1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized sendMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_12

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 222
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1f

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1f

    .line 227
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPlayWhenReady(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekParameters"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;->handler:Landroidx/media2/exoplayer/external/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
