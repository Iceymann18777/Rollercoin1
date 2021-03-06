.class final Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    .line 37
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startSegmentIndex"
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    .line 150
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_1e

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    :cond_1e
    return v0
.end method


# virtual methods
.method public getPageHeader()Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
    .registers 2

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    return-object v0
.end method

.method public getPayload()Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .registers 2

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-object v0
.end method

.method public populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 67
    :goto_7
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 69
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populated:Z

    if-eqz v2, :cond_15

    .line 70
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populated:Z

    .line 71
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 74
    :cond_15
    :goto_15
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_a8

    .line 75
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v2, :cond_48

    .line 77
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_26

    return v0

    .line 81
    :cond_26
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    .line 82
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_42

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_42

    .line 85
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v0

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    .line 88
    :goto_43
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 89
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 92
    :cond_48
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    .line 93
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    if-lez v2, :cond_9d

    .line 95
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_75

    .line 96
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 98
    :cond_75
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {p1, v4, v5, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 99
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 100
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_9a

    const/4 v2, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v2, 0x0

    :goto_9b
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populated:Z

    .line 103
    :cond_9d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v2, :cond_a4

    const/4 v3, -0x1

    .line 104
    :cond_a4
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_15

    :cond_a8
    return v1
.end method

.method public reset()V
    .registers 2

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->pageHeader:Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->reset()V

    .line 49
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->currentSegmentIndex:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->populated:Z

    return-void
.end method

.method public trimPayload()V
    .registers 5

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_b

    return-void

    .line 137
    :cond_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPacket;->packetArray:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 138
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 137
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    return-void
.end method
