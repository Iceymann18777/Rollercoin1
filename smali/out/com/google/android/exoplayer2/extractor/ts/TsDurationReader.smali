.class final Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 55
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 56
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 122
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x0

    return p1
.end method

.method private readFirstPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 130
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    const/4 v0, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1a

    .line 131
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v6

    .line 135
    :cond_1a
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 136
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 137
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 139
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 140
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    return v0
.end method

.method private readFirstPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J
    .registers 10

    .line 145
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_24

    .line 150
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_18

    goto :goto_21

    .line 153
    :cond_18
    invoke-static {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

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

.method private readLastPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    .line 164
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 166
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1a

    .line 167
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v2

    .line 171
    :cond_1a
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 172
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 173
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 175
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 176
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    return v0
.end method

.method private readLastPcrValueFromBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)J
    .registers 10

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_26

    .line 186
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x47

    if-eq v4, v5, :cond_1a

    goto :goto_23

    .line 189
    :cond_1a
    invoke-static {p1, v1, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

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

    .line 108
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    return-object v0
.end method

.method public isDurationReadFinished()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    return v0
.end method

.method public readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gtz p3, :cond_7

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 85
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_10

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readLastPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I

    move-result p1

    return p1

    .line 88
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 91
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_29

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readFirstPcrValue(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I

    move-result p1

    return p1

    .line 94
    :cond_29
    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_34

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 98
    :cond_34
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 100
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1
.end method
