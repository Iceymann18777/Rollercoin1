.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# instance fields
.field private sampleQueueIndex:I

.field private final sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final trackGroupIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 36
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method private hasValidSampleQueueIndex()Z
    .registers 3

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v1, -0x3

    if-eq v0, v1, :cond_d

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public bindSampleQueue()V
    .registers 3

    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method public isReady()Z
    .registers 3

    .line 56
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_18

    .line 57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    goto :goto_16

    :cond_e
    const/4 v1, -0x3

    if-eq v0, v1, :cond_16

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError(I)V

    :cond_16
    :goto_16
    return-void

    .line 63
    :cond_17
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 6

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    const/4 p1, 0x4

    .line 75
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    const/4 p1, -0x4

    return p1

    .line 78
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 79
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    :cond_19
    return v1
.end method

.method public skipData(J)I
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 86
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public unbindSampleQueue()V
    .registers 4

    .line 46
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    .line 48
    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_e
    return-void
.end method
