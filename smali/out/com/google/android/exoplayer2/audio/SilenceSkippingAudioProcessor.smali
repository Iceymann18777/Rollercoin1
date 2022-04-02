.class public final Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "SilenceSkippingAudioProcessor.java"


# instance fields
.field private bytesPerFrame:I

.field private enabled:Z

.field private hasOutputNoise:Z

.field private maybeSilenceBuffer:[B

.field private maybeSilenceBufferSize:I

.field private paddingBuffer:[B

.field private paddingSize:I

.field private skippedFrames:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 96
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 97
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method private durationUsToFrames(J)I
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private findNoiseLimit(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_21

    .line 345
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1e

    .line 347
    iget p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    .line 350
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method private findNoisePosition(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 330
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1d

    .line 332
    iget p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_1d
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 335
    :cond_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method private output(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_14

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_14
    return-void
.end method

.method private output([BI)V
    .registers 5

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_11

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_11
    return-void
.end method

.method private processMaybeSilence(Ljava/nio/ByteBuffer;)V
    .registers 11

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 223
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 224
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v4, v3

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_21

    if-ge v2, v4, :cond_21

    .line 227
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 228
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 229
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_73

    .line 232
    :cond_21
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 235
    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 236
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v3, v1

    if-ne v2, v3, :cond_70

    .line 239
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_59

    .line 240
    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 241
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_65

    .line 243
    :cond_59
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 245
    :goto_65
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    .line 246
    iput v6, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 247
    iput v4, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    .line 251
    :cond_70
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_73
    return-void
.end method

.method private processNoisy(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoiseLimit(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 204
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    .line 206
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_27

    .line 208
    :cond_21
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output(Ljava/nio/ByteBuffer;)V

    .line 213
    :goto_27
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private processSilence(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 261
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 262
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 263
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_2e

    .line 268
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    const/4 v1, 0x0

    .line 269
    iput v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    .line 272
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2e
    return-void
.end method

.method private updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V
    .registers 8

    .line 304
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 305
    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 306
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getSkippedFrames()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return v0
.end method

.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 124
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 127
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    :goto_c
    return-object p1

    .line 125
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method protected onFlush()V
    .registers 4

    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_33

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    const-wide/32 v0, 0x249f0

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1e

    .line 171
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    :cond_1e
    const-wide/16 v0, 0x4e20

    .line 173
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 174
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_33

    .line 175
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    :cond_33
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 180
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 181
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    return-void
.end method

.method protected onQueueEndOfStream()V
    .registers 5

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    if-lez v0, :cond_9

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 160
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    if-nez v0, :cond_18

    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    :cond_18
    return-void
.end method

.method protected onReset()V
    .registers 2

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 187
    iput v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 188
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 189
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 137
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->hasPendingOutput()Z

    move-result v0

    if-nez v0, :cond_28

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->state:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 149
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 143
    :cond_20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processMaybeSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 140
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->processNoisy(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_28
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->enabled:Z

    return-void
.end method
