.class final Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 57
    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    .line 59
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "quiet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 90
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->reset()V

    .line 91
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_26

    .line 92
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    if-eqz v0, :cond_c0

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v1, 0x1b

    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_c0

    .line 100
    :cond_37
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4f

    if-eqz p2, :cond_47

    return v3

    .line 104
    :cond_47
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_4f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v0, :cond_64

    if-eqz p2, :cond_5c

    return v3

    .line 113
    :cond_5c
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_64
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    .line 118
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 119
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 120
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 121
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 122
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/2addr p2, v1

    .line 123
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    .line 126
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset()V

    .line 127
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, p2, v3, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    :goto_a5
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v3, p1, :cond_bf

    .line 129
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v3

    .line 130
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->laces:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_bf
    return v2

    :cond_c0
    :goto_c0
    if-eqz p2, :cond_c3

    return v3

    .line 97
    :cond_c3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_ca

    :goto_c9
    throw p1

    :goto_ca
    goto :goto_c9
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->revision:I

    .line 66
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v1, 0x0

    .line 67
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 68
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    .line 69
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    .line 70
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageChecksum:J

    .line 71
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    .line 72
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->headerSize:I

    .line 73
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method
