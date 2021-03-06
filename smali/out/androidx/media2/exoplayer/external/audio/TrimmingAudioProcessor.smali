.class final Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;
.super Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;
.source "TrimmingAudioProcessor.java"


# instance fields
.field private bytesPerFrame:I

.field private endBuffer:[B

.field private endBufferSize:I

.field private isActive:Z

.field private pendingTrimStartBytes:I

.field private receivedInputSinceConfigure:Z

.field private trimEndFrames:I

.field private trimStartFrames:I

.field private trimmedFrameCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;-><init>()V

    .line 48
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public configure(III)Z
    .registers 10
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

    if-ne p3, v0, :cond_3f

    .line 84
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v1, :cond_10

    .line 85
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 87
    :cond_10
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    .line 88
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimEndFrames:I

    mul-int v2, v1, v0

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    const/4 v2, 0x0

    .line 89
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 90
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimStartFrames:I

    mul-int v0, v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 91
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    const/4 v4, 0x1

    if-nez v3, :cond_31

    if-eqz v1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v1, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v1, 0x1

    .line 92
    :goto_32
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    .line 93
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->setInputFormat(III)Z

    .line 95
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    if-eq v0, p1, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    return v2

    .line 82
    :cond_3f
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .registers 5

    .line 156
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_1c

    .line 162
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 165
    :cond_1c
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmedFrameCount()J
    .registers 3

    .line 75
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->isActive:Z

    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 171
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onFlush()V
    .registers 3

    .line 176
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 182
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 184
    :cond_7
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    return-void
.end method

.method protected onReset()V
    .registers 2

    .line 189
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_d

    return-void

    :cond_d
    const/4 v3, 0x1

    .line 112
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->receivedInputSinceConfigure:Z

    .line 115
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->bytesPerFrame:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 117
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    add-int/2addr v0, v3

    .line 118
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v0, :cond_2e

    return-void

    :cond_2e
    sub-int/2addr v2, v3

    .line 129
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v0, v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 130
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 133
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    .line 134
    iget-object v6, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 138
    invoke-static {v0, v5, v2}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v0

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 146
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 150
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public resetTrimmedFrameCount()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-void
.end method

.method public setTrimFrameCount(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trimStartFrames",
            "trimEndFrames"
        }
    .end annotation

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimStartFrames:I

    .line 62
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->trimEndFrames:I

    return-void
.end method
