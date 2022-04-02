.class public final Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
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

    .line 101
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    .line 102
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 103
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method private durationUsToFrames(J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "durationUs"
        }
    .end annotation

    .line 326
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->sampleRateHz:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private findNoiseLimit(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_21

    .line 351
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1e

    .line 353
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    .line 356
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method private findNoisePosition(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 336
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1d

    .line 338
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_1d
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 341
    :cond_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method private output(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 298
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_14

    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_14
    return-void
.end method

.method private output([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "length"
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_11

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    :cond_11
    return-void
.end method

.method private processMaybeSilence(Ljava/nio/ByteBuffer;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 228
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    .line 230
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v4, v3

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_21

    if-ge v2, v4, :cond_21

    .line 233
    invoke-direct {p0, v3, v5}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 234
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 235
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_73

    .line 238
    :cond_21
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 240
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 241
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 242
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v3, v1

    if-ne v2, v3, :cond_70

    .line 245
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_59

    .line 246
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 247
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    goto :goto_65

    .line 249
    :cond_59
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v2, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 251
    :goto_65
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    invoke-direct {p0, p1, v1, v2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    .line 252
    iput v6, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 253
    iput v4, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    .line 257
    :cond_70
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_73
    return-void
.end method

.method private processNoisy(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoiseLimit(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    .line 212
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    goto :goto_27

    .line 214
    :cond_21
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 215
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output(Ljava/nio/ByteBuffer;)V

    .line 219
    :goto_27
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private processSilence(Ljava/nio/ByteBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 267
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->findNoisePosition(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 268
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 269
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 270
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, p1, v2, v3}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_2e

    .line 274
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    const/4 v1, 0x0

    .line 275
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    .line 278
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2e
    return-void
.end method

.method private updatePaddingBuffer(Ljava/nio/ByteBuffer;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "buffer",
            "size"
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 312
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

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

    const/4 v0, 0x2

    if-ne p3, v0, :cond_c

    mul-int/lit8 v0, p2, 0x2

    .line 133
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->setInputFormat(III)Z

    move-result p1

    return p1

    .line 131
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getSkippedFrames()J
    .registers 3

    .line 122
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 139
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onFlush()V
    .registers 4

    .line 174
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-wide/32 v0, 0x249f0

    .line 175
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    .line 176
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1a

    .line 177
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    :cond_1a
    const-wide/16 v0, 0x4e20

    .line 179
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->durationUsToFrames(J)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    mul-int v0, v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 180
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_2f

    .line 181
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    :cond_2f
    const/4 v0, 0x0

    .line 184
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    .line 186
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    .line 187
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    return-void
.end method

.method protected onQueueEndOfStream()V
    .registers 5

    .line 163
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBufferSize:I

    if-lez v0, :cond_9

    .line 165
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->output([BI)V

    .line 167
    :cond_9
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasOutputNoise:Z

    if-nez v0, :cond_18

    .line 168
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->skippedFrames:J

    :cond_18
    return-void
.end method

.method protected onReset()V
    .registers 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 193
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingSize:I

    .line 194
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->maybeSilenceBuffer:[B

    .line 195
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->paddingBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->hasPendingOutput()Z

    move-result v0

    if-nez v0, :cond_28

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->state:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 153
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 156
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 150
    :cond_20
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processMaybeSilence(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 147
    :cond_24
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->processNoisy(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_28
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->enabled:Z

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/SilenceSkippingAudioProcessor;->flush()V

    return-void
.end method
