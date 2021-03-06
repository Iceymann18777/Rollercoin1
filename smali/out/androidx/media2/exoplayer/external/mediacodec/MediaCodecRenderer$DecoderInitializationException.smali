.class public Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final diagnosticInfo:Ljava/lang/String;

.field public final fallbackDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public final mimeType:Ljava/lang/String;

.field public final secureDecoderRequired:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "cause",
            "secureDecoderRequired",
            "errorCode"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 113
    invoke-static {p4}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->buildCustomDiagnosticInfo(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v5, p2

    move v7, p3

    .line 107
    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "cause",
            "secureDecoderRequired",
            "decoderName"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 125
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3d

    invoke-static {p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    move-object v9, p1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v5, p2

    move v7, p3

    move-object v8, p4

    .line 119
    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .registers 8
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
            "message",
            "cause",
            "mimeType",
            "secureDecoderRequired",
            "decoderName",
            "diagnosticInfo",
            "fallbackDecoderInitializationException"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    .line 139
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    .line 140
    iput-object p5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->fallbackDecoderInitializationException:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->copyWithFallbackException(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object p0

    return-object p0
.end method

.method private static buildCustomDiagnosticInfo(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    if-gez p0, :cond_5

    const-string v0, "neg_"

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 168
    :goto_7
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "com.google.android.exoplayer.MediaCodecTrackRenderer_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private copyWithFallbackException(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallbackException"
        }
    .end annotation

    .line 148
    new-instance v8, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 149
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v5, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->decoderName:Ljava/lang/String;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-object v8
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 160
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    .line 161
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
