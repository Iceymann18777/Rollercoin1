.class final Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 61
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 62
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method

.method private finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 128
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x0

    return p1
.end method

.method private readFirstPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPositionHolder",
            "pcrPid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 136
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    const/4 v0, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1a

    .line 137
    iput-wide v4, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    return v6

    .line 141
    :cond_1a
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 142
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 143
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 145
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 146
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    return v0
.end method

.method private readFirstPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packetBuffer",
            "pcrPid"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_24

    .line 156
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_18

    goto :goto_21

    .line 159
    :cond_18
    invoke-static {p1, v0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_21

    return-wide v4

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return-wide v2
.end method

.method private readLastPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPositionHolder",
            "pcrPid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    .line 170
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 172
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1a

    .line 173
    iput-wide v0, p2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    return v2

    .line 177
    :cond_1a
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 178
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 179
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 181
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 182
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    return v0
.end method

.method private readLastPcrValueFromBuffer(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packetBuffer",
            "pcrPid"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_26

    .line 192
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1a

    goto :goto_23

    .line 195
    :cond_1a
    invoke-static {p1, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_23

    return-wide v4

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_26
    return-wide v2
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .registers 2

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPositionHolder",
            "pcrPid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gtz p3, :cond_7

    .line 89
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 91
    :cond_7
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_10

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readLastPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result p1

    return p1

    .line 94
    :cond_10
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    .line 95
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 97
    :cond_20
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_29

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->readFirstPcrValue(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;I)I

    move-result p1

    return p1

    .line 100
    :cond_29
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_34

    .line 101
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 104
    :cond_34
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 106
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->durationUs:J

    .line 107
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result p1

    return p1
.end method
