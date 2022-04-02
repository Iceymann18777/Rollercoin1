.class final Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# instance fields
.field private peekLength:I

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method

.method private readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .registers 8
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

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_16
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_19
    and-int v5, v0, v3

    if-nez v5, :cond_22

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 111
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    :goto_2c
    if-ge v1, v4, :cond_3c

    shl-int/lit8 p1, v0, 0x8

    .line 114
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_2c

    .line 116
    :cond_3c
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_16

    cmp-long v8, v2, v4

    if-lez v8, :cond_15

    goto :goto_16

    :cond_15
    move-wide v4, v2

    :cond_16
    :goto_16
    long-to-int v5, v4

    .line 56
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v4, v8, v9}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 57
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 58
    iput v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    :goto_28
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_52

    .line 60
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v9, v4

    iput v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    if-ne v9, v5, :cond_38

    return v8

    .line 63
    :cond_38
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v8, v4}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x8

    shl-long v9, v10, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 65
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_28

    .line 69
    :cond_52
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v9

    .line 70
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_a3

    cmp-long v5, v2, v6

    if-eqz v5, :cond_6a

    add-long v5, v11, v9

    cmp-long v7, v5, v2

    if-ltz v7, :cond_6a

    goto :goto_a3

    .line 77
    :cond_6a
    :goto_6a
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v5, v2

    add-long v15, v11, v9

    cmp-long v3, v5, v15

    if-gez v3, :cond_9d

    .line 78
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-nez v5, :cond_7c

    return v8

    .line 82
    :cond_7c
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->readUint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_9c

    const-wide/32 v15, 0x7fffffff

    cmp-long v7, v2, v15

    if-lez v7, :cond_8e

    goto :goto_9c

    :cond_8e
    cmp-long v7, v2, v5

    if-eqz v7, :cond_6a

    long-to-int v3, v2

    .line 88
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 89
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_6a

    :cond_9c
    :goto_9c
    return v8

    :cond_9d
    int-to-long v1, v2

    cmp-long v3, v1, v15

    if-nez v3, :cond_a3

    const/4 v8, 0x1

    :cond_a3
    :goto_a3
    return v8
.end method
