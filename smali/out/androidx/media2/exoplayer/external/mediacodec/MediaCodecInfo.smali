.class public final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final passthrough:Z

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
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
            "name",
            "mimeType",
            "capabilities",
            "passthrough",
            "forceDisableAdaptive",
            "forceSecure"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 166
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->passthrough:Z

    const/4 p1, 0x1

    const/4 p4, 0x0

    if-nez p5, :cond_1f

    if-eqz p3, :cond_1f

    .line 167
    invoke-static {p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p5

    if-eqz p5, :cond_1f

    const/4 p5, 0x1

    goto :goto_20

    :cond_1f
    const/4 p5, 0x0

    :goto_20
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz p3, :cond_2c

    .line 168
    invoke-static {p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p5

    if-eqz p5, :cond_2c

    const/4 p5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p5, 0x0

    :goto_2d
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->tunneling:Z

    if-nez p6, :cond_3b

    if-eqz p3, :cond_3a

    .line 169
    invoke-static {p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :cond_3b
    :goto_3b
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->secure:Z

    .line 170
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideo:Z

    return-void
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "mimeType",
            "maxChannelCount"
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_b3

    .line 468
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    if-lez p2, :cond_d

    goto/16 :goto_b3

    :cond_d
    const-string v0, "audio/mpeg"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/3gpp"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/amr-wb"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/mp4a-latm"

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/vorbis"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/opus"

    .line 477
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/raw"

    .line 478
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/flac"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/g711-alaw"

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/g711-mlaw"

    .line 481
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/gsm"

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_b3

    :cond_66
    const-string v0, "audio/ac3"

    .line 488
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 p1, 0x6

    goto :goto_7d

    :cond_70
    const-string v0, "audio/eac3"

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    const/16 p1, 0x10

    goto :goto_7d

    :cond_7b
    const/16 p1, 0x1e

    .line 496
    :goto_7d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_b3
    :goto_b3
    return p2
.end method

.method private static areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "capabilities",
            "width",
            "height",
            "frameRate"
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_12

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_d

    goto :goto_12

    .line 533
    :cond_d
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    goto :goto_16

    .line 532
    :cond_12
    :goto_12
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    :goto_16
    return p0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    .line 502
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    const-string v0, "adaptive-playback"

    .line 507
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    .line 520
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    const-string v0, "secure-playback"

    .line 525
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    .line 511
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    const-string v0, "tunneled-playback"

    .line 516
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

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

    const-string v3, "AssumedSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    sget-object v2, Landroidx/media2/exoplayer/external/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

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

    const-string v3, "NoSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "mimeType",
            "capabilities"
        }
    .end annotation

    .line 126
    new-instance v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "mimeType",
            "capabilities",
            "forceDisableAdaptive",
            "forceSecure"
        }
    .end annotation

    .line 152
    new-instance v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method

.method public static newPassthroughInstance(Ljava/lang/String;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 106
    new-instance v7, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v7
.end method


# virtual methods
.method public alignVideoSizeV21(II)Landroid/graphics/Point;
    .registers 6
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

    .line 388
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "align.caps"

    .line 389
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return-object v1

    .line 392
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "align.vCaps"

    .line 394
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return-object v1

    .line 397
    :cond_17
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    .line 398
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    .line 399
    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p1

    mul-int p1, p1, v1

    .line 400
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p2, p2, v0

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_9

    goto :goto_e

    .line 185
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_11

    :cond_e
    :goto_e
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_11
    return-object v0
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelCount"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "channelCount.caps"

    .line 440
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 443
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "channelCount.aCaps"

    .line 445
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 448
    :cond_17
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 449
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    .line 448
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p1, :cond_3c

    const/16 v0, 0x21

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleRate"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "sampleRate.caps"

    .line 414
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 417
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "sampleRate.aCaps"

    .line 419
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 422
    :cond_17
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_34

    const/16 v0, 0x1f

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sampleRate.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_34
    const/4 p1, 0x1

    return p1
.end method

.method public isCodecSupported(Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_ad

    .line 244
    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_ad

    .line 247
    :cond_9
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    return v0

    .line 251
    :cond_10
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez v2, :cond_49

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "codec.mime "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4

    .line 255
    :cond_49
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_50

    return v0

    .line 260
    :cond_50
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideo:Z

    if-nez v6, :cond_69

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_69

    return v0

    .line 267
    :cond_69
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_6f
    if-ge v8, v7, :cond_7f

    aget-object v9, v6, v8

    .line 268
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_7c

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v9, v2, :cond_7c

    return v0

    :cond_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 272
    :cond_7f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "codec.profileLevel, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4

    :cond_ad
    :goto_ad
    return v0
.end method

.method public isFormatSupported(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 6
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
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 209
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 213
    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v0, :cond_5d

    .line 214
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    if-lez v0, :cond_5c

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gtz v0, :cond_1a

    goto :goto_5c

    .line 217
    :cond_1a
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_2a

    .line 218
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result p1

    return p1

    .line 220
    :cond_2a
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    mul-int v0, v0, v2

    .line 221
    invoke-static {}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v2

    if-gt v0, v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    if-nez v1, :cond_5b

    .line 223
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "legacyFrameSize, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    :cond_5b
    return v1

    :cond_5c
    :goto_5c
    return v3

    .line 228
    :cond_5d
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_7a

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6e

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    .line 230
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_6e
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq v0, v2, :cond_7a

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 232
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_7b

    :cond_7a
    const/4 v1, 0x1

    :cond_7b
    return v1
.end method

.method public isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 287
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v0, :cond_7

    .line 288
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->adaptive:Z

    return p1

    .line 290
    :cond_7
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 291
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 292
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return p1
.end method

.method public isSeamlessAdaptationSupported(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldFormat",
            "newFormat",
            "isNewFormatComplete"
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->isVideo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 310
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    if-ne v0, v3, :cond_37

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->adaptive:Z

    if-nez v0, :cond_26

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v0, v3, :cond_37

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v0, v3, :cond_37

    :cond_26
    if-nez p3, :cond_2c

    iget-object p3, p2, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    if-eqz p3, :cond_38

    :cond_2c
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 315
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :cond_38
    :goto_38
    return v1

    .line 317
    :cond_39
    iget-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    iget-object p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 318
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne p3, v0, :cond_84

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq p3, v0, :cond_5a

    goto :goto_84

    .line 324
    :cond_5a
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 325
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 326
    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 327
    invoke-static {p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p1, :cond_84

    if-nez p2, :cond_6b

    goto :goto_84

    .line 331
    :cond_6b
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 332
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_82

    if-ne p2, p3, :cond_82

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    return v1

    :cond_84
    :goto_84
    return v2
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "sizeAndRate.caps"

    .line 352
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 355
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "sizeAndRate.vCaps"

    .line 357
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 360
    :cond_17
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_6c

    const/16 v2, 0x45

    const-string v3, "x"

    if-ge p1, p2, :cond_4b

    .line 365
    invoke-static {v0, p2, p1, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4b

    .line 369
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    goto :goto_6c

    .line 366
    :cond_4b
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_6c
    :goto_6c
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method
