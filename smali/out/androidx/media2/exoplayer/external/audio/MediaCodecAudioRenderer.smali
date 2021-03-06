.class public Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;
    }
.end annotation


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private channelCount:I

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private codecNeedsEosBufferTimestampWorkaround:Z

.field private final context:Landroid/content/Context;

.field private currentPositionUs:J

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

.field private lastInputTimeUs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I

.field private pendingStreamChangeCount:I

.field private final pendingStreamChangeTimesUs:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;Landroidx/media2/exoplayer/external/audio/AudioSink;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "mediaCodecSelector",
            "drmSessionManager",
            "playClearSamplesWithoutKeys",
            "eventHandler",
            "eventListener",
            "audioSink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;",
            "Landroidx/media2/exoplayer/external/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 255
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;ZZF)V

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    .line 263
    iput-object p7, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 264
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 265
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    .line 266
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    .line 267
    new-instance p1, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;)Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;
    .registers 1

    .line 75
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return p1
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecName"
        }
    .end annotation

    .line 833
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_38

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "samsung"

    .line 834
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 835
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_36

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_36

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 836
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_36
    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method private static codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecName"
        }
    .end annotation

    .line 846
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_56

    const-string v0, "OMX.SEC.mp3.dec"

    .line 847
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "samsung"

    .line 848
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "baffin"

    .line 849
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "grand"

    .line 850
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "fortuna"

    .line 851
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "gprimelte"

    .line 852
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "j2y18lte"

    .line 853
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_54

    sget-object p0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "ms01"

    .line 854
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_56

    :cond_54
    const/4 p0, 0x1

    goto :goto_57

    :cond_56
    const/4 p0, 0x0

    :goto_57
    return p0
.end method

.method private static deviceDoesntSupportOperatingRate()Z
    .registers 2

    .line 821
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1c

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 822
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format"
        }
    .end annotation

    .line 736
    iget-object p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 741
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_20

    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1e
    const/4 p1, -0x1

    return p1

    .line 745
    :cond_20
    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    return p1
.end method

.method private updateCurrentPosition()V
    .registers 6

    .line 804
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    .line 807
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    .line 809
    :cond_15
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 810
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_20
    return-void
.end method


# virtual methods
.method protected allowPassthrough(ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelCount",
            "mimeType"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result p1

    return p1
.end method

.method protected areCodecConfigurationCompatible(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldFormat",
            "newFormat"
        }
    .end annotation

    .line 760
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v0, v1, :cond_1e

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v0, v1, :cond_1e

    .line 763
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method protected canKeepCodec(Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .registers 7
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

    .line 380
    invoke-direct {p0, p2, p4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2a

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez p1, :cond_2a

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-nez p1, :cond_2a

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez p1, :cond_2a

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz p1, :cond_1a

    goto :goto_2a

    :cond_1a
    const/4 p1, 0x1

    .line 386
    invoke-virtual {p2, p3, p4, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result p2

    if-eqz p2, :cond_23

    const/4 p1, 0x3

    return p1

    .line 389
    :cond_23
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->areCodecConfigurationCompatible(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_2a

    return p1

    :cond_2a
    :goto_2a
    return v1
.end method

.method protected configureCodec(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .registers 7
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

    .line 355
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getStreamFormats()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 356
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 357
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 358
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->passthrough:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_23

    const-string p1, "audio/raw"

    goto :goto_25

    .line 359
    :cond_23
    iget-object p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 360
    :goto_25
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 361
    invoke-virtual {p0, p3, p1, v0, p5}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getMediaFormat(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p5, 0x0

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p2, p1, v0, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 363
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz p2, :cond_3e

    .line 365
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 366
    iget-object p2, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 368
    :cond_3e
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    :goto_40
    return-void
.end method

.method protected getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "format",
            "streamFormats"
        }
    .end annotation

    .line 712
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    .line 713
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    return v0

    .line 718
    :cond_9
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_21

    aget-object v4, p3, v3

    .line 719
    invoke-virtual {p1, p2, v4, v2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 721
    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;Landroidx/media2/exoplayer/external/Format;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_21
    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
    .registers 8
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

    .line 407
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_4
    if-ge v1, p2, :cond_13

    aget-object v3, p3, v1

    .line 408
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq v3, v0, :cond_10

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    if-ne v2, v0, :cond_18

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1b

    :cond_18
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1b
    return p1
.end method

.method protected getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .registers 7
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

    .line 314
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPassthrough(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 315
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 317
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 320
    :cond_15
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 321
    invoke-interface {p1, v0, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 324
    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    const-string p2, "audio/eac3"

    .line 327
    invoke-interface {p1, p2, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 329
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;
    .registers 1

    return-object p0
.end method

.method protected getMediaFormat(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "codecMimeType",
            "codecMaxInputSize",
            "codecOperatingRate"
        }
    .end annotation

    .line 780
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 782
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 784
    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 785
    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 787
    invoke-static {v0, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 789
    sget p2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_3f

    const/4 p2, 0x0

    const-string p3, "priority"

    .line 790
    invoke-virtual {v0, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_3f

    .line 791
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->deviceDoesntSupportOperatingRate()Z

    move-result p2

    if-nez p2, :cond_3f

    const-string p2, "operating-rate"

    .line 792
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 795
    :cond_3f
    sget p2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p3, 0x1c

    if-gt p2, p3, :cond_55

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/ac4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    const-string p2, "ac4-is-sync"

    .line 798
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_55
    return-object v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 2

    .line 596
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 583
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 584
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 586
    :cond_a
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    .line 696
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_28

    .line 692
    :cond_d
    check-cast p2, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 693
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V

    goto :goto_28

    .line 688
    :cond_15
    check-cast p2, Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 689
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    goto :goto_28

    .line 685
    :cond_1d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setVolume(F)V

    :goto_28
    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 573
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 578
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_f

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

.method protected onAudioSessionId(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSessionId"
        }
    .end annotation

    return-void
.end method

.method protected onAudioTrackPositionDiscontinuity()V
    .registers 1

    return-void
.end method

.method protected onAudioTrackUnderrun(IJJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 12
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

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 550
    :try_start_5
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const/4 v0, 0x0

    .line 551
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 552
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->flush()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    .line 555
    :try_start_f
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 557
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0

    :catchall_23
    move-exception v0

    .line 555
    :try_start_24
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2f

    .line 557
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0

    :catchall_2f
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .registers 3
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

    .line 497
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 498
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    .line 499
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getConfiguration()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_18

    .line 501
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->enableTunnelingV21(I)V

    goto :goto_1d

    .line 503
    :cond_18
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->disableTunneling()V

    :goto_1d
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V
    .registers 4
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

    .line 424
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media2/exoplayer/external/FormatHolder;)V

    .line 425
    iget-object p1, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 426
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->eventDispatcher:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    .line 429
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    goto :goto_18

    :cond_17
    const/4 v0, 0x2

    .line 430
    :goto_18
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 431
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    .line 432
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderDelay:I

    .line 433
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderPadding:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 11
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

    .line 441
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz p1, :cond_11

    const-string p2, "mime"

    .line 442
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getEncoding(Ljava/lang/String;)I

    move-result p1

    .line 443
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_13

    .line 445
    :cond_11
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    :goto_13
    move v1, p1

    const-string p1, "channel-count"

    .line 448
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string p1, "sample-rate"

    .line 449
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 451
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz p1, :cond_37

    const/4 p1, 0x6

    if-ne v2, p1, :cond_37

    iget p2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge p2, p1, :cond_37

    .line 452
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 453
    :goto_2e
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->channelCount:I

    if-ge p2, v0, :cond_38

    .line 454
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_37
    const/4 p1, 0x0

    :cond_38
    move-object v5, p1

    .line 461
    :try_start_39
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const/4 v4, 0x0

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderDelay:I

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->encoderPadding:I

    invoke-interface/range {v0 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->configure(IIII[III)V
    :try_end_43
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException; {:try_start_39 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    .line 464
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    goto :goto_4f

    :goto_4e
    throw p1

    :goto_4f
    goto :goto_4e
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

    .line 525
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 526
    iget-object p3, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/audio/AudioSink;->flush()V

    .line 527
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 529
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 530
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const/4 p1, 0x0

    .line 531
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    .line 616
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1e

    .line 617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleDiscontinuity()V

    .line 618
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 619
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1e
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 601
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_21

    .line 605
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 606
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    :cond_1e
    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 610
    :cond_21
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    return-void
.end method

.method protected onReset()V
    .registers 3

    .line 565
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 567
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->reset()V

    return-void

    :catchall_9
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->reset()V

    throw v0
.end method

.method protected onStarted()V
    .registers 2

    .line 536
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 537
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .registers 2

    .line 542
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 543
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->pause()V

    .line 544
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formats",
            "offsetUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 509
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->onStreamChanged([Landroidx/media2/exoplayer/external/Format;J)V

    .line 510
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_40

    .line 511
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    array-length p3, p2

    if-ne p1, p3, :cond_32

    add-int/lit8 p1, p1, -0x1

    .line 512
    aget-wide p1, p2, p1

    const/16 p3, 0x43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Too many stream changes, so dropping change at "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecAudioRenderer"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_32
    add-int/lit8 p1, p1, 0x1

    .line 517
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    .line 519
    :goto_36
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeTimesUs:[J

    iget p2, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->pendingStreamChangeCount:I

    add-int/lit8 p2, p2, -0x1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    aput-wide v0, p1, p2

    :cond_40
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLandroidx/media2/exoplayer/external/Format;)Z
    .registers 13
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

    .line 640
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz p1, :cond_1a

    const-wide/16 p1, 0x0

    cmp-long p3, p9, p1

    if-nez p3, :cond_1a

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_1a

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->lastInputTimeUs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p12, p1, p3

    if-eqz p12, :cond_1a

    move-wide p9, p1

    .line 647
    :cond_1a
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_28

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_28

    .line 649
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_28
    if-eqz p11, :cond_3a

    .line 654
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 655
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 656
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleDiscontinuity()V

    return p3

    .line 661
    :cond_3a
    :try_start_3a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p6, p9, p10}, Landroidx/media2/exoplayer/external/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 662
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 663
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->decoderCounters:Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    iget p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->renderedOutputBufferCount:I
    :try_end_4c
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException; {:try_start_3a .. :try_end_4c} :catch_50
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_3a .. :try_end_4c} :catch_4e

    return p3

    :cond_4d
    return p2

    :catch_4e
    move-exception p1

    goto :goto_51

    :catch_50
    move-exception p1

    .line 667
    :goto_51
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 675
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->playToEndOfStream()V
    :try_end_5
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 677
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object p1

    return-object p1
.end method

.method protected supportsFormat(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/Format;)I
    .registers 12
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

    .line 274
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 275
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 278
    :cond_a
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_13

    const/16 v1, 0x20

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 279
    :goto_14
    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {p2, v3}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->supportsFormatDrm(Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz p2, :cond_31

    .line 280
    iget v5, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 281
    invoke-virtual {p0, v5, v0}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->allowPassthrough(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 282
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    move-result-object v5

    if-eqz v5, :cond_31

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_31
    const-string v5, "audio/raw"

    .line 285
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    .line 286
    invoke-interface {v0, v6, v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_46
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->audioSink:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const/4 v7, 0x2

    .line 287
    invoke-interface {v0, v6, v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->supportsOutput(II)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_51
    return v5

    .line 292
    :cond_52
    invoke-virtual {p0, p1, p3, v2}, Landroidx/media2/exoplayer/external/audio/MediaCodecAudioRenderer;->getDecoderInfos(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 293
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    return v5

    :cond_5d
    if-nez p2, :cond_60

    return v7

    .line 300
    :cond_60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    .line 301
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 303
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_74

    const/16 v4, 0x10

    :cond_74
    if-eqz p2, :cond_77

    goto :goto_78

    :cond_77
    const/4 v3, 0x3

    :goto_78
    or-int p1, v4, v1

    or-int/2addr p1, v3

    return p1
.end method
