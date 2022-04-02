.class public abstract Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.super Landroidx/media2/exoplayer/external/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private codec:Landroid/media/MediaCodec;

.field private codecAdaptationWorkaroundMode:I

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private codecFormat:Landroidx/media2/exoplayer/external/Format;

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecNeedsReconfigureWorkaround:Z

.field private codecOperatingRate:F

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

.field private final drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final enableDecoderFallback:Z

.field private final flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

.field private final formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

.field private final formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/TimedValueQueue<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputFormat:Landroidx/media2/exoplayer/external/Format;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private mediaCryptoRequiresSecureDecoder:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputFormat:Landroidx/media2/exoplayer/external/Format;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private renderTimeLimitMs:J

.field private rendererOperatingRate:F

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForFirstSampleInFormat:Z

.field private waitingForFirstSyncSample:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 291
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V
    .registers 7
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
            "trackType",
            "mediaCodecSelector",
            "drmSessionManager",
            "playClearSamplesWithoutKeys",
            "enableDecoderFallback",
            "assumedMinimumCodecOperatingRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;ZZF)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/BaseRenderer;-><init>(I)V

    .line 379
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    .line 380
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    .line 381
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    .line 382
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 383
    iput p6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 384
    new-instance p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 385
    invoke-static {}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    .line 386
    new-instance p1, Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    .line 387
    new-instance p1, Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    .line 388
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 389
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 390
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 391
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 392
    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 393
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 394
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 395
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    return-void
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1738
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_38

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 1739
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 1740
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_36
    const/4 p1, 0x2

    return p1

    .line 1742
    :cond_38
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_78

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    :cond_4e
    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder"

    .line 1744
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "grouper"

    .line 1745
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    sget-object p1, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    :cond_76
    const/4 p1, 0x1

    return p1

    :cond_78
    const/4 p1, 0x0

    return p1
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "format"
        }
    .end annotation

    .line 1778
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1779
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1816
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    :cond_e
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3a

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "hb2000"

    .line 1818
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "stvm8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_28
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1819
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1820
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    :cond_38
    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1835
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_10

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1796
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_18

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 1797
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 1798
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_18
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1799
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean p0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_32

    :cond_30
    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1717
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3d

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_1a

    const-string v0, "OMX.SEC.avc.dec"

    .line 1719
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_1a
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3b

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1720
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1721
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    :goto_3e
    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "format"
        }
    .end annotation

    .line 1852
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_14

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne p1, v1, :cond_14

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1853
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private static codecNeedsReconfigureWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1764
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private deviceNeedsDrmKeysToConfigureCodecWorkaround()Z
    .registers 3

    .line 1700
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 1701
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 1702
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private drainAndFlushCodec()V
    .registers 2

    .line 1366
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 1367
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1368
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    :cond_9
    return-void
.end method

.method private drainAndReinitializeCodec()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1400
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 1401
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x3

    .line 1402
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_e

    .line 1405
    :cond_b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    :goto_e
    return-void
.end method

.method private drainAndUpdateCodecDrmSession()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1379
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_a

    .line 1381
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    return-void

    .line 1384
    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 1385
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x2

    .line 1386
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_18

    .line 1389
    :cond_15
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateDrmSessionOrReinitializeCodecV23()V

    :goto_18
    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "elapsedRealtimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1415
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_a6

    .line 1417
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2b

    .line 1419
    :try_start_12
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1420
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_37

    :catch_1f
    nop

    .line 1422
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1423
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_2a

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_2a
    return v15

    .line 1430
    :cond_2b
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1431
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_37
    if-gez v0, :cond_58

    const/4 v1, -0x2

    if-ne v0, v1, :cond_40

    .line 1436
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    return v14

    :cond_40
    const/4 v1, -0x3

    if-ne v0, v1, :cond_47

    .line 1439
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    return v14

    .line 1443
    :cond_47
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_57

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_54

    iget v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 1445
    :cond_54
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_57
    return v15

    .line 1451
    :cond_58
    iget-boolean v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_64

    .line 1452
    iput-boolean v15, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1453
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v14

    .line 1455
    :cond_64
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_76

    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_76

    .line 1458
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v15

    .line 1462
    :cond_76
    iput v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 1463
    invoke-direct {v13, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_95

    .line 1467
    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1468
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1470
    :cond_95
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v13, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v0

    iput-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 1471
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;

    .line 1475
    :cond_a6
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_d7

    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_d7

    .line 1477
    :try_start_ae
    iget-object v5, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v6, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v12, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1478
    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0
    :try_end_ca
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_ca} :catch_cb

    goto :goto_f3

    :catch_cb
    nop

    .line 1489
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1490
    iget-boolean v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_d6

    .line 1492
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_d6
    return v15

    .line 1497
    :cond_d7
    iget-object v5, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v6, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    iget-object v12, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1498
    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    :goto_f3
    if-eqz v0, :cond_110

    .line 1511
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1512
    iget-object v0, v13, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_106

    const/4 v0, 0x1

    goto :goto_107

    :cond_106
    const/4 v0, 0x0

    .line 1513
    :goto_107
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    if-nez v0, :cond_10d

    return v14

    .line 1517
    :cond_10d
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_110
    return v15
.end method

.method private feedInputBuffer()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1ad

    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1ad

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_10

    goto/16 :goto_1ad

    .line 976
    :cond_10
    iget v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2c

    const-wide/16 v4, 0x0

    .line 977
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_1f

    return v1

    .line 981
    :cond_1f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 982
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 985
    :cond_2c
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    .line 988
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_36

    goto :goto_47

    .line 991
    :cond_36
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 992
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 993
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 995
    :goto_47
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v1

    .line 999
    :cond_4a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_6d

    .line 1000
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1001
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1002
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v5, 0x0

    sget-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v6, v0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1003
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1004
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v2

    .line 1010
    :cond_6d
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_74

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_ac

    .line 1016
    :cond_74
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v2, :cond_99

    const/4 v0, 0x0

    .line 1017
    :goto_79
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_97

    .line 1018
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1019
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 1021
    :cond_97
    iput v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1023
    :cond_99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1024
    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_ac
    const/4 v5, -0x3

    if-ne v0, v5, :cond_b0

    return v1

    :cond_b0
    const/4 v5, -0x5

    if-ne v0, v5, :cond_c4

    .line 1031
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_be

    .line 1034
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1035
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1037
    :cond_be
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    return v2

    .line 1042
    :cond_c4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1043
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_d7

    .line 1047
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1048
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1050
    :cond_d7
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1051
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_e1

    .line 1052
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v1

    .line 1056
    :cond_e1
    :try_start_e1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_e6

    goto :goto_f7

    .line 1059
    :cond_e6
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1060
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1061
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V
    :try_end_f7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e1 .. :try_end_f7} :catch_f8

    :goto_f7
    return v1

    :catch_f8
    move-exception v0

    .line 1064
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1068
    :cond_102
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    if-eqz v0, :cond_11a

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-nez v0, :cond_11a

    .line 1069
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 1070
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_119

    .line 1073
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_119
    return v2

    .line 1077
    :cond_11a
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 1078
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 1079
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v3, :cond_12b

    return v1

    .line 1083
    :cond_12b
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v3, :cond_145

    if-nez v0, :cond_145

    .line 1084
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 1085
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_143

    return v2

    .line 1088
    :cond_143
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 1091
    :cond_145
    :try_start_145
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-wide v9, v3, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 1092
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 1093
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_15a
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v3, :cond_167

    .line 1096
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v9, v10, v5}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 1097
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1100
    :cond_167
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->flip()V

    .line 1101
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V

    if-eqz v0, :cond_183

    .line 1104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    .line 1106
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_194

    .line 1108
    :cond_183
    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v7, 0x0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1110
    :goto_194
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1111
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1112
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->inputBufferCount:I
    :try_end_1a2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_145 .. :try_end_1a2} :catch_1a3

    return v2

    :catch_1a3
    move-exception v0

    .line 1115
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_1ad
    :goto_1ad
    return v1
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaCryptoRequiresSecureDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 808
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    if-eqz p1, :cond_5d

    .line 814
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x0

    .line 815
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 817
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Drm session requires secure decoder for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return-object v0
.end method

.method private getCodecBuffers(Landroid/media/MediaCodec;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .line 906
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_12

    .line 907
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 908
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_12
    return-void
.end method

.method private static getFrameworkCryptoInfo(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "adaptiveReconfigurationBytes"
        }
    .end annotation

    .line 1681
    iget-object p0, p0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media2/exoplayer/external/decoder/CryptoInfo;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_9

    return-object p0

    .line 1688
    :cond_9
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1689
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 1691
    :cond_12
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputIndex"
        }
    .end annotation

    .line 920
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 921
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 923
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputIndex"
        }
    .end annotation

    .line 928
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 929
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 931
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private hasOutputBuffer()Z
    .registers 2

    .line 936
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private initCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "crypto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 833
    iget-object v1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 836
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_d

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_19

    .line 838
    :cond_d
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    .line 839
    :goto_19
    iget v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_20

    goto :goto_21

    :cond_20
    move v2, v0

    :goto_21
    const/4 v0, 0x0

    .line 843
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-string v3, "createCodec:"

    .line 844
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    :cond_37
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_3d
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 845
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 846
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    const-string v3, "configureCodec"

    .line 847
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 848
    iget-object v7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v8, p2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V

    .line 849
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    const-string p2, "startCodec"

    .line 850
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 852
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 854
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecBuffers(Landroid/media/MediaCodec;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6b} :catch_f7

    .line 863
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 864
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 865
    iput v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 866
    iget-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 867
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 868
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround:Z

    .line 869
    iget-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 870
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 871
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 872
    invoke-static {v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 873
    iget-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 874
    invoke-static {v1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 876
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_b4

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result p1

    if-eqz p1, :cond_b2

    goto :goto_b4

    :cond_b2
    const/4 p1, 0x0

    goto :goto_b5

    :cond_b4
    :goto_b4
    const/4 p1, 0x1

    :goto_b5
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 878
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 879
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 881
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getState()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_cc

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    goto :goto_d1

    :cond_cc
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 883
    :goto_d1
    iput-wide v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 884
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 885
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 886
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 887
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 888
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 889
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 890
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 891
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 892
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 893
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 895
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v0, p2

    iput v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderInitCount:I

    sub-long p1, v3, v10

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, p1

    .line 897
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    return-void

    :catch_f7
    move-exception p1

    if-eqz v0, :cond_100

    .line 857
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetCodecBuffers()V

    .line 858
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 860
    :cond_100
    throw p1
.end method

.method private maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crypto",
            "mediaCryptoRequiresSecureDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 749
    :try_start_5
    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v0

    .line 750
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 751
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v3, :cond_18

    .line 752
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    .line 753
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 754
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_2a
    :goto_2a
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_2c
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p1

    .line 758
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 766
    :cond_39
    :goto_39
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 774
    :goto_41
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_a4

    .line 775
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 776
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-nez v2, :cond_54

    return-void

    .line 780
    :cond_54
    :try_start_54
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_41

    :catch_58
    move-exception v2

    .line 782
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize decoder: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v3, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 786
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 787
    new-instance v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2, p2, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 790
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v0, :cond_92

    .line 791
    iput-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_98

    .line 794
    :cond_92
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 796
    :goto_98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_41

    .line 797
    :cond_a1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    .line 802
    :cond_a4
    iput-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    .line 767
    :cond_a7
    new-instance p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    goto :goto_b3

    :goto_b2
    throw p1

    :goto_b3
    goto :goto_b2
.end method

.method private processEndOfStream()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1607
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    .line 1619
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 1620
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    goto :goto_1c

    .line 1609
    :cond_11
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    goto :goto_1c

    .line 1612
    :cond_15
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateDrmSessionOrReinitializeCodecV23()V

    goto :goto_1c

    .line 1615
    :cond_19
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    :goto_1c
    return-void
.end method

.method private processOutputBuffersChanged()V
    .registers 3

    .line 1545
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_e

    .line 1546
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_e
    return-void
.end method

.method private processOutputFormat()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1528
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    const-string v1, "width"

    .line 1529
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_20

    const-string v1, "height"

    .line 1530
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_20

    .line 1532
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    .line 1535
    :cond_20
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_29

    const-string v1, "channel-count"

    .line 1536
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1538
    :cond_29
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private readToFlagsOnlyBuffer(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->clear()V

    .line 732
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_17

    .line 734
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatHolder:Landroidx/media2/exoplayer/external/FormatHolder;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    return v0

    :cond_17
    const/4 v1, -0x4

    if-ne p1, v1, :cond_27

    .line 736
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flagsOnlyBuffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 737
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 738
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method private reinitializeCodec()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1627
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    return-void
.end method

.method private releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 962
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_f

    .line 963
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    :cond_f
    return-void
.end method

.method private resetCodecBuffers()V
    .registers 3

    .line 913
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 915
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_b
    return-void
.end method

.method private resetInputBuffer()V
    .registers 3

    const/4 v0, -0x1

    .line 940
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 941
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private resetOutputBuffer()V
    .registers 2

    const/4 v0, -0x1

    .line 945
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    .line 946
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 957
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 958
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void
.end method

.method private setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 951
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 952
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseDrmSessionIfUnused(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void
.end method

.method private shouldContinueFeeding(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drainStartTimeMs"
        }
    .end annotation

    .line 901
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method private shouldSkipOutputBuffer(J)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_24

    .line 1671
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_21

    .line 1672
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method private shouldWaitForKeys(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferEncrypted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    if-nez p1, :cond_c

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_c

    goto :goto_29

    .line 1124
    :cond_c
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 1126
    :cond_1a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_29
    :goto_29
    return v1
.end method

.method private updateCodecOperatingRate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1341
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    .line 1345
    :cond_7
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1346
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    .line 1347
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1a

    goto :goto_3f

    :cond_1a
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_24

    .line 1352
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    goto :goto_3f

    :cond_24
    cmpl-float v1, v1, v2

    if-nez v1, :cond_2e

    .line 1353
    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3f

    .line 1357
    :cond_2e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 1358
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1359
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 1360
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_3f
    :goto_3f
    return-void
.end method

.method private updateDrmSessionOrReinitializeCodecV23()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    if-nez v0, :cond_e

    .line 1640
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void

    .line 1643
    :cond_e
    sget-object v1, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1646
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void

    .line 1650
    :cond_1c
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    .line 1657
    :cond_23
    :try_start_23
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->sessionId:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_2a
    .catch Landroid/media/MediaCryptoException; {:try_start_23 .. :try_end_2a} :catch_35

    .line 1661
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 1662
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1663
    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    :catch_35
    move-exception v0

    .line 1659
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "codecInfo",
            "oldFormat",
            "newFormat"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "codec",
            "format",
            "crypto",
            "codecOperatingRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected final flushOrReinitializeCodec()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 684
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    :cond_9
    return v0
.end method

.method protected flushOrReleaseCodec()Z
    .registers 7

    .line 696
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 699
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_47

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_19

    goto :goto_47

    .line 706
    :cond_19
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 707
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 708
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 709
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 710
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 711
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 712
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSyncSample:Z

    .line 713
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 714
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 715
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 717
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 718
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 719
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 720
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 725
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return v1

    .line 702
    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .registers 2

    .line 549
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getCodecInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 2

    .line 553
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operatingRate",
            "format",
            "streamFormats"
        }
    .end annotation

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected abstract getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "format",
            "requiresSecureDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 6

    .line 1301
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_2b

    .line 1303
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1304
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2b

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method protected final maybeInitCodec()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_88

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_a

    goto/16 :goto_88

    .line 478
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 480
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v1, :cond_76

    .line 482
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_55

    .line 483
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getMediaCrypto()Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    if-nez v1, :cond_2e

    .line 485
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_2d

    goto :goto_55

    :cond_2d
    return-void

    .line 495
    :cond_2e
    :try_start_2e
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->uuid:Ljava/util/UUID;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->sessionId:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_39
    .catch Landroid/media/MediaCryptoException; {:try_start_2e .. :try_end_39} :catch_4b

    .line 499
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    if-nez v1, :cond_47

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 501
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_55

    :catch_4b
    move-exception v0

    .line 497
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 504
    :cond_55
    :goto_55
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->deviceNeedsDrmKeysToConfigureCodecWorkaround()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v3, :cond_67

    const/4 v1, 0x4

    if-eq v0, v1, :cond_76

    return-void

    .line 507
    :cond_67
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->getError()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 516
    :cond_76
    :try_start_76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_7d
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_76 .. :try_end_7d} :catch_7e

    return-void

    :catch_7e
    move-exception v0

    .line 518
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_88
    :goto_88
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    return-void
.end method

.method protected onDisabled()V
    .registers 2

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 582
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_c

    goto :goto_10

    .line 586
    :cond_c
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    goto :goto_13

    .line 584
    :cond_10
    :goto_10
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V

    :goto_13
    return-void
.end method

.method protected onEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 558
    new-instance p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formatHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1154
    iget-object p1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 1155
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x1

    .line 1156
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1158
    iget-object v2, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v3, 0x0

    if-nez v0, :cond_10

    move-object v0, v3

    goto :goto_12

    .line 1159
    :cond_10
    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    :goto_12
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4f

    .line 1161
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_4c

    .line 1162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    if-eqz v0, :cond_3c

    .line 1167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v0

    .line 1168
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v0, v2, :cond_33

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-ne v0, v2, :cond_38

    .line 1171
    :cond_33
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/drm/DrmSessionManager;->releaseSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1173
    :cond_38
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    goto :goto_4f

    .line 1163
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    .line 1163
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1175
    :cond_4c
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    .line 1179
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_57

    .line 1180
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    return-void

    .line 1187
    :cond_57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_5f

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-nez v0, :cond_7d

    :cond_5f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_67

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_7d

    :cond_67
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v0, :cond_7d

    :cond_71
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_81

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq v0, v2, :cond_81

    .line 1194
    :cond_7d
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    return-void

    .line 1198
    :cond_81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v0, v2, v3, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    if-eqz v0, :cond_f2

    if-eq v0, v1, :cond_df

    const/4 v2, 0x2

    if-eq v0, v2, :cond_aa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a4

    .line 1230
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1231
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1232
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_f5

    .line 1233
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_f5

    .line 1237
    :cond_a4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1212
    :cond_aa
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsReconfigureWorkaround:Z

    if-eqz v0, :cond_b2

    .line 1213
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    goto :goto_f5

    .line 1215
    :cond_b2
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1216
    iput v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1217
    iget v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v0, v2, :cond_ce

    if-ne v0, v1, :cond_cd

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v0, v2, :cond_cd

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v0, v2, :cond_cd

    goto :goto_ce

    :cond_cd
    const/4 v1, 0x0

    :cond_ce
    :goto_ce
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1222
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1223
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1224
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_f5

    .line 1225
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_f5

    .line 1203
    :cond_df
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 1204
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    .line 1205
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eq p1, v0, :cond_ee

    .line 1206
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()V

    goto :goto_f5

    .line 1208
    :cond_ee
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()V

    goto :goto_f5

    .line 1200
    :cond_f2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    :cond_f5
    :goto_f5
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "outputFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "joining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 564
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 565
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 566
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .registers 3

    const/4 v0, 0x0

    .line 593
    :try_start_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 595
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void

    :catchall_8
    move-exception v1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v1
.end method

.method protected onStarted()V
    .registers 1

    return-void
.end method

.method protected onStopped()V
    .registers 1

    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
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
            "positionUs",
            "elapsedRealtimeUs",
            "codec",
            "buffer",
            "bufferIndex",
            "bufferFlags",
            "bufferPresentationTimeUs",
            "shouldSkip",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .registers 5

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 601
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 602
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecFormat:Landroidx/media2/exoplayer/external/Format;

    .line 603
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 604
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 605
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->resetCodecBuffers()V

    const/4 v1, 0x0

    .line 606
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 607
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 608
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 610
    :try_start_1f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_3d

    .line 611
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget v3, v2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->decoderReleaseCount:I
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_59

    .line 613
    :try_start_2b
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_36

    .line 615
    :try_start_30
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_3d

    :catchall_36
    move-exception v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v2
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_59

    .line 619
    :cond_3d
    :goto_3d
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 621
    :try_start_3f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_48

    .line 622
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_50

    .line 625
    :cond_48
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    return-void

    :catchall_50
    move-exception v2

    .line 625
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2

    :catchall_59
    move-exception v2

    .line 619
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 621
    :try_start_5c
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_65

    .line 622
    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_6d

    .line 625
    :cond_65
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2

    :catchall_6d
    move-exception v2

    .line 625
    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 626
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 627
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media2/exoplayer/external/drm/DrmSession;)V

    throw v2
.end method

.method public render(JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "elapsedRealtimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 644
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_8

    .line 645
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    .line 648
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readToFlagsOnlyBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 653
    :cond_14
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 654
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3c

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "drainAndFeed"

    .line 656
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 657
    :goto_24
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_24

    .line 658
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->shouldContinueFeeding(J)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_2b

    .line 659
    :cond_38
    invoke-static {}, Landroidx/media2/exoplayer/external/util/TraceUtil;->endSection()V

    goto :goto_4b

    .line 661
    :cond_3c
    iget-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p4, p3, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedInputBufferCount:I

    const/4 p1, 0x0

    .line 666
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->readToFlagsOnlyBuffer(Z)Z

    .line 668
    :goto_4b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    return-void
.end method

.method protected renderToEndOfStream()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final setOperatingRate(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatingRate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 571
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->rendererOperatingRate:F

    .line 572
    iget-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_14

    iget p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    .line 574
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getState()I

    move-result p1

    if-eqz p1, :cond_14

    .line 575
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate()V

    :cond_14
    return-void
.end method

.method protected shouldInitCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecInfo"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final supportsFormat(Landroidx/media2/exoplayer/external/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 420
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->drmSessionManager:Landroidx/media2/exoplayer/external/drm/DrmSessionManager;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1
    :try_end_8
    .catch Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    move-exception p1

    .line 422
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaCodecSelector",
            "drmSessionManager",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method protected final updateOutputFormatForTime(J)Landroidx/media2/exoplayer/external/Format;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->formatQueue:Landroidx/media2/exoplayer/external/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    if-eqz p1, :cond_c

    .line 543
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media2/exoplayer/external/Format;

    :cond_c
    return-object p1
.end method
