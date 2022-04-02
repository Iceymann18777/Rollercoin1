.class final Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "ResamplingAudioProcessor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

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

    const/4 v0, 0x3

    if-eq p3, v0, :cond_15

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_15

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_f

    goto :goto_15

    .line 39
    :cond_f
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0

    .line 41
    :cond_15
    :goto_15
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->setInputFormat(III)Z

    move-result p1

    return p1
.end method

.method public getOutputEncoding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 46
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    if-eqz v0, :cond_b

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 61
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_20

    if-eq v3, v6, :cond_21

    if-ne v3, v4, :cond_1a

    .line 69
    div-int/lit8 v2, v2, 0x2

    goto :goto_23

    .line 78
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 66
    :cond_20
    div-int/2addr v2, v6

    :cond_21
    mul-int/lit8 v2, v2, 0x2

    .line 82
    :goto_23
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;->encoding:I

    if-eq v3, v5, :cond_61

    if-eq v3, v6, :cond_4c

    if-ne v3, v4, :cond_46

    :goto_2f
    if-ge v0, v1, :cond_78

    add-int/lit8 v3, v0, 0x2

    .line 101
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    .line 102
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_2f

    .line 113
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4c
    :goto_4c
    if-ge v0, v1, :cond_78

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_61
    :goto_61
    if-ge v0, v1, :cond_78

    add-int/lit8 v3, v0, 0x1

    .line 94
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    .line 95
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_61

    .line 115
    :cond_78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
