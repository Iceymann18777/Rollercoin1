.class public final Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field private final dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private parserState:I

.field private remainingSampleCount:I

.field private sampleBytesWritten:I

.field private timestampUs:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 60
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    return-void
.end method

.method private parseHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 122
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x52434301

    if-ne p1, v0, :cond_27

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->version:I

    return v3

    .line 123
    :cond_27
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input not RawCC"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    return v1
.end method

.method private parseSamples(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    if-lez v0, :cond_25

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    goto :goto_0

    .line 165
    :cond_25
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    if-lez v5, :cond_33

    .line 166
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->timestampUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_33
    return-void
.end method

.method private parseTimestampAndSampleCount(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 136
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->version:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x5

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    .line 141
    :cond_17
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/16 v5, 0x2d

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->timestampUs:J

    goto :goto_3e

    :cond_27
    if-ne v0, v1, :cond_49

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0x9

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_36

    return v2

    .line 146
    :cond_36
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->timestampUs:J

    .line 151
    :goto_3e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->remainingSampleCount:I

    .line 152
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->sampleBytesWritten:I

    return v1

    .line 148
    :cond_49
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 5

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 67
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_24

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v1, :cond_18

    if-ne p2, v3, :cond_12

    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parseSamples(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 101
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    return v2

    .line 104
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 92
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parseTimestampAndSampleCount(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 93
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    goto :goto_0

    .line 95
    :cond_21
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    return v0

    .line 85
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parseHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    goto :goto_0

    :cond_2d
    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->parserState:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 76
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/RawCcExtractor;->dataScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x52434301

    if-ne p1, v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
