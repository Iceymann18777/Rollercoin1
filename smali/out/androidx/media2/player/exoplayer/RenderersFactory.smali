.class final Landroidx/media2/player/exoplayer/RenderersFactory;
.super Ljava/lang/Object;
.source "RenderersFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/RenderersFactory;


# instance fields
.field private final mAudioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private final mContext:Landroid/content/Context;

.field private final mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioSink;Landroidx/media2/player/exoplayer/TextRenderer;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/media2/player/exoplayer/RenderersFactory;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroidx/media2/player/exoplayer/RenderersFactory;->mAudioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    .line 68
    iput-object p3, p0, Landroidx/media2/player/exoplayer/RenderersFactory;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/text/TextOutput;Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;)[Landroidx/media2/exoplayer/external/Renderer;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/text/TextOutput;",
            "Landroidx/media2/exoplayer/external/metadata/MetadataOutput;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Landroidx/media2/exoplayer/external/Renderer;"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/media2/exoplayer/external/Renderer;

    .line 79
    new-instance v12, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    iget-object v3, v0, Landroidx/media2/player/exoplayer/RenderersFactory;->mContext:Landroid/content/Context;

    sget-object v4, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    const-wide/16 v5, 0x1388

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object/from16 v7, p6

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v11}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;JLandroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;I)V

    const/4 v2, 0x0

    aput-object v12, v1, v2

    new-instance v2, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;

    iget-object v4, v0, Landroidx/media2/player/exoplayer/RenderersFactory;->mContext:Landroid/content/Context;

    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v10, v0, Landroidx/media2/player/exoplayer/RenderersFactory;->mAudioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const/4 v7, 0x0

    move-object v3, v2

    move-object/from16 v6, p6

    move-object v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Landroidx/media2/player/exoplayer/RenderersFactory;->mTextRenderer:Landroidx/media2/player/exoplayer/TextRenderer;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;

    .line 100
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;

    invoke-direct {v4}, Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;-><init>()V

    move-object/from16 v5, p5

    invoke-direct {v2, v5, v3, v4}, Landroidx/media2/exoplayer/external/metadata/MetadataRenderer;-><init>(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    return-object v1
.end method
