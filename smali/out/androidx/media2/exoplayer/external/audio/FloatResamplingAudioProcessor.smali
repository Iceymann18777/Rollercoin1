.class final Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "FloatResamplingAudioProcessor.java"


# static fields
.field private static final FLOAT_NAN_AS_INT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pcm32BitInt",
            "buffer"
        }
    .end annotation

    int-to-double v0, p0

    const-wide v2, 0x3e00000000200000L    # 4.656612875245797E-10

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p0, v0

    .line 96
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 97
    sget v0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->FLOAT_NAN_AS_INT:I

    if-ne p0, v0, :cond_19

    const/4 p0, 0x0

    .line 98
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 100
    :cond_19
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRateHz",
            "channelCount",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .line 40
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->setInputFormat(III)Z

    move-result p1

    return p1

    .line 41
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 48
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->encoding:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v0

    return v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 58
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->encoding:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 59
    :goto_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 63
    :cond_16
    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    .line 64
    :goto_1a
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v0, :cond_4f

    :goto_20
    if-ge v1, v2, :cond_75

    .line 68
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v1, 0x1

    .line 69
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 70
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x3

    .line 71
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 72
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_20

    :cond_4f
    :goto_4f
    if-ge v1, v2, :cond_75

    .line 77
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 78
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 79
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 80
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_4f

    .line 84
    :cond_75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
