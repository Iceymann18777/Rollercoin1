.class final Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SampleStream;


# instance fields
.field private sampleQueueIndex:I

.field private final sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field private final trackGroupIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleStreamWrapper",
            "trackGroupIndex"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 42
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method private hasValidSampleQueueIndex()Z
    .registers 3

    .line 96
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

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

    .line 47
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method public isReady()Z
    .registers 3

    .line 62
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_18

    .line 63
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

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

    .line 68
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_b

    .line 72
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    return-void

    .line 69
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 70
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "requireFormat"
        }
    .end annotation

    .line 77
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    const/4 p1, 0x4

    .line 78
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->addFlag(I)V

    const/4 p1, -0x4

    return p1

    .line 81
    :cond_b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readData(ILandroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I

    move-result v1

    :cond_19
    return v1
.end method

.method public skipData(J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public unbindSampleQueue()V
    .registers 4

    .line 52
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 53
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleStreamWrapper:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    .line 54
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_e
    return-void
.end method
