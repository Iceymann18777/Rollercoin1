.class final Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ResamplingAudioProcessor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 31
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_17

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_11

    goto :goto_17

    .line 34
    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0

    :cond_17
    :goto_17
    if-eq v0, v1, :cond_23

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_25

    :cond_23
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    :goto_25
    return-object v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 49
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x3

    if-eq v3, v5, :cond_22

    if-eq v3, v6, :cond_23

    if-ne v3, v4, :cond_1c

    .line 57
    div-int/lit8 v2, v2, 0x2

    goto :goto_25

    .line 66
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 54
    :cond_22
    div-int/2addr v2, v6

    :cond_23
    mul-int/lit8 v2, v2, 0x2

    .line 70
    :goto_25
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq v3, v5, :cond_65

    if-eq v3, v6, :cond_50

    if-ne v3, v4, :cond_4a

    :goto_33
    if-ge v0, v1, :cond_7c

    add-int/lit8 v3, v0, 0x2

    .line 89
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    .line 90
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_33

    .line 101
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_50
    :goto_50
    if-ge v0, v1, :cond_7c

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_65
    :goto_65
    if-ge v0, v1, :cond_7c

    add-int/lit8 v3, v0, 0x1

    .line 82
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    .line 83
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_65

    .line 103
    :cond_7c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
