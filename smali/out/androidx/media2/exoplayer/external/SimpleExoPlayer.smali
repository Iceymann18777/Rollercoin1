.class public Landroidx/media2/exoplayer/external/SimpleExoPlayer;
.super Landroidx/media2/exoplayer/external/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;
    }
.end annotation


# instance fields
.field private final analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

.field private final audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

.field private final audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

.field private audioFormat:Landroidx/media2/exoplayer/external/Format;

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/audio/AudioListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private audioVolume:F

.field private final bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private final componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private isPriorityTaskManagerRegistered:Z

.field private mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/metadata/MetadataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

.field private priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

.field protected final renderers:[Landroidx/media2/exoplayer/external/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/text/TextOutput;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;

.field private final videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

.field private videoFormat:Landroidx/media2/exoplayer/external/Format;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/video/VideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "context",
            "renderersFactory",
            "trackSelector",
            "loadControl",
            "drmSessionManager",
            "bandwidthMeter",
            "analyticsCollectorFactory",
            "looper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 179
    sget-object v8, Landroidx/media2/exoplayer/external/util/Clock;->DEFAULT:Landroidx/media2/exoplayer/external/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V
    .registers 22
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
            0x0
        }
        names = {
            "context",
            "renderersFactory",
            "trackSelector",
            "loadControl",
            "drmSessionManager",
            "bandwidthMeter",
            "analyticsCollectorFactory",
            "clock",
            "looper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroidx/media2/exoplayer/external/util/Clock;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 215
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/BasePlayer;-><init>()V

    .line 216
    iput-object v9, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    .line 217
    new-instance v1, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;-><init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/SimpleExoPlayer$1;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    .line 218
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 219
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 220
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 221
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 222
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 223
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 224
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v10, p9

    invoke-direct {v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 225
    iget-object v6, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    move-object v1, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p5

    .line 226
    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/RenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/text/TextOutput;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)[Landroidx/media2/exoplayer/external/Renderer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    const/4 v1, 0x0

    .line 236
    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    .line 237
    sget-object v1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    const/4 v1, 0x1

    .line 238
    iput v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoScalingMode:I

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 242
    new-instance v11, Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    move-object v1, v11

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;-><init>([Landroidx/media2/exoplayer/external/Renderer;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/util/Clock;Landroid/os/Looper;)V

    iput-object v11, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 244
    invoke-virtual {v1, v11, v2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;->createAnalyticsCollector(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    .line 245
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 246
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 247
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V

    .line 252
    iget-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v9, v1, v2}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V

    .line 253
    instance-of v1, v8, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    if-eqz v1, :cond_c2

    .line 254
    move-object v1, v8

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->addListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionEventListener;)V

    .line 256
    :cond_c2
    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    return-void
.end method

.method static synthetic access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .registers 2

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFormat:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method static synthetic access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .registers 2

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1300(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$1700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;ZI)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p0
.end method

.method static synthetic access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .registers 2

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoFormat:Landroidx/media2/exoplayer/external/Format;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroid/view/Surface;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;
    .registers 2

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDecoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)I
    .registers 1

    .line 74
    iget p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    return p0
.end method

.method static synthetic access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I
    .registers 2

    .line 74
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 74
    iget-object p0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1212
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceWidth:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHeight:I

    if-eq p2, v0, :cond_22

    .line 1213
    :cond_8
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceWidth:I

    .line 1214
    iput p2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHeight:I

    .line 1215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1216
    invoke-interface {v1, p1, p2}, Landroidx/media2/exoplayer/external/video/VideoListener;->onSurfaceSizeChanged(II)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .registers 4

    .line 1169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1170
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    if-eq v0, v2, :cond_15

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1171
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1173
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1175
    :goto_1a
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 1177
    :cond_1c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_27

    .line 1178
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->componentListener:Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1179
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_27
    return-void
.end method

.method private sendVolumeToRenderers()V
    .registers 8

    .line 1222
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    .line 1223
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 1224
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 1225
    iget-object v5, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_32
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "ownsSurface"
        }
    .end annotation

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    .line 1188
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2a

    .line 1189
    iget-object v5, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 1190
    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v4

    .line 1189
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1193
    :cond_2d
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_57

    if-eq v1, p1, :cond_57

    .line 1196
    :try_start_33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/PlayerMessage;

    .line 1197
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/PlayerMessage;->blockUntilDelivered()Z
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_46} :catch_47

    goto :goto_37

    .line 1200
    :catch_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1203
    :cond_4e
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_57

    .line 1204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1207
    :cond_57
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 1208
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    return-void
.end method

.method private updatePlayWhenReady(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playerCommand"
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    const/4 p1, -0x1

    if-eq p2, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eq p2, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setPlayWhenReady(ZZ)V

    return-void
.end method

.method private verifyApplicationThread()V
    .registers 4

    .line 1238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 1244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_15

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_15
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/troubleshooting.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean"

    .line 1239
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1245
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    :cond_1f
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 871
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 872
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    return-void
.end method

.method public addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 814
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 866
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .registers 2

    .line 450
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 3

    .line 1126
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .registers 3

    .line 1156
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .registers 2

    .line 1144
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 1150
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 1120
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .registers 2

    .line 1089
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1090
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;
    .registers 2

    .line 1083
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1084
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentTrackSelections()Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .registers 2

    .line 1108
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 1114
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 934
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 935
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 2

    .line 891
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 892
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 861
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 884
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 885
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 940
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 941
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getTotalBufferedDuration()J
    .registers 3

    .line 1132
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVolume()F
    .registers 2

    .line 493
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaSource"
        }
    .end annotation

    const/4 v0, 0x1

    .line 906
    invoke-virtual {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

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

    .line 911
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 912
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_11

    .line 913
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 914
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->resetForNewMediaSource()V

    .line 916
    :cond_11
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 917
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 919
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handlePrepare(Z)I

    move-result v0

    .line 920
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    .line 921
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->prepare(Landroidx/media2/exoplayer/external/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .registers 4

    .line 1021
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1022
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleStop()V

    .line 1023
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->release()V

    .line 1024
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 1025
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1026
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v2, :cond_1c

    .line 1027
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1029
    :cond_1c
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 1031
    :cond_1e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    if-eqz v0, :cond_29

    .line 1032
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 1033
    iput-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    .line 1035
    :cond_29
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_3b

    .line 1036
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->priorityTaskManager:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->remove(I)V

    .line 1037
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 1039
    :cond_3b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;->removeEventListener(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V

    .line 1040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-void
.end method

.method public seekTo(IJ)V
    .registers 5
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

    .line 970
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 971
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 972
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
        }
    .end annotation

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;Z)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioAttributes",
            "handleAudioFocus"
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 425
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 426
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 427
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->renderers:[Landroidx/media2/exoplayer/external/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 428
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 429
    iget-object v4, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    .line 430
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->createMessage(Landroidx/media2/exoplayer/external/PlayerMessage$Target;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    const/4 v4, 0x3

    .line 431
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/PlayerMessage;->setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    .line 432
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/PlayerMessage;->send()Landroidx/media2/exoplayer/external/PlayerMessage;

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 436
    :cond_31
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 437
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onAudioAttributesChanged(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    goto :goto_37

    .line 442
    :cond_47
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    if-eqz p2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 444
    :goto_4d
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p2

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    .line 443
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;ZI)I

    move-result p1

    .line 445
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playWhenReady"
        }
    .end annotation

    .line 926
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 928
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioFocusManager:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->handleSetPlayWhenReady(ZI)I

    move-result v0

    .line 929
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->updatePlayWhenReady(ZI)V

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

    .line 977
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 978
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

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

    .line 989
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->player:Landroidx/media2/exoplayer/external/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl;->setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V

    return-void
.end method

.method public setVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->analyticsCollector:Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_10

    .line 804
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V

    :cond_10
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    .line 328
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 331
    :goto_e
    invoke-direct {p0, v0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioVolume"
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 480
    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 481
    iget v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    return-void

    .line 484
    :cond_11
    iput p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioVolume:F

    .line 485
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->sendVolumeToRenderers()V

    .line 486
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 487
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onVolumeChanged(F)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
