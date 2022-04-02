.class public final Landroidx/media2/exoplayer/external/util/FlacStreamInfo;
.super Ljava/lang/Object;
.source "FlacStreamInfo.java"


# instance fields
.field public final bitsPerSample:I

.field public final channels:I

.field public final maxBlockSize:I

.field public final maxFrameSize:I

.field public final minBlockSize:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final totalSamples:J


# direct methods
.method public constructor <init>([BI)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 50
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 51
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minBlockSize:I

    .line 52
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxBlockSize:I

    const/16 p1, 0x18

    .line 53
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->minFrameSize:I

    .line 54
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->maxFrameSize:I

    const/16 p1, 0x14

    .line 55
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    const/4 p1, 0x3

    .line 56
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->channels:I

    const/4 p1, 0x5

    .line 57
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    const/4 p1, 0x4

    .line 58
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v1, 0xf

    and-long/2addr p1, v1

    const/16 v1, 0x20

    shl-long/2addr p1, v1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    return-void
.end method


# virtual methods
.method public bitRate()I
    .registers 3

    .line 103
    iget v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->bitsPerSample:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    mul-int v0, v0, v1

    return v0
.end method

.method public durationUs()J
    .registers 5

    .line 108
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Landroidx/media2/exoplayer/external/util/FlacStreamInfo;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
