.class final Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

.field private final scratch:[B

.field private final varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 67
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 69
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .registers 6
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

    .line 170
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 172
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2b

    if-gt v0, v2, :cond_2b

    .line 175
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 176
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 177
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v0, v2

    return-wide v0

    :cond_2b
    const/4 v0, 0x1

    .line 181
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3
.end method

.method private readFloat(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)D
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "byteLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_e

    long-to-int p1, v0

    .line 218
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_12

    .line 220
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_12
    return-wide p1
.end method

.method private readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "byteLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, p2, :cond_18

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 199
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-wide v2
.end method

.method private readString(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "byteLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_5

    const-string p1, ""

    return-object p1

    .line 240
    :cond_5
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 241
    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    :goto_b
    if-lez p2, :cond_16

    add-int/lit8 p1, p2, -0x1

    .line 244
    aget-byte p1, v0, p1

    if-nez p1, :cond_16

    add-int/lit8 p2, p2, -0x1

    goto :goto_b

    .line 247
    :cond_16
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processor"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 13
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

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_34

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_34

    .line 90
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    return v1

    .line 94
    :cond_34
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v0, p1, v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_4a

    .line 97
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v4

    :cond_4a
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_51

    return v3

    :cond_51
    long-to-int v0, v4

    .line 103
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 104
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 107
    :cond_56
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_67

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 109
    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 112
    :cond_67
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v0

    if-eqz v0, :cond_161

    if-eq v0, v1, :cond_141

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_111

    const/4 v4, 0x3

    if-eq v0, v4, :cond_de

    if-eq v0, v2, :cond_d1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_b8

    .line 129
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_a7

    cmp-long v0, v7, v5

    if-nez v0, :cond_8c

    goto :goto_a7

    .line 131
    :cond_8c
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_a7
    :goto_a7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v4

    invoke-direct {p0, p1, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readFloat(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 134
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 152
    :cond_b8
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_d1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v4

    invoke-interface {v0, v2, v5, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->binaryElement(IILandroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 145
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 137
    :cond_de
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_f6

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v5, v4

    invoke-direct {p0, p1, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readString(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 141
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 138
    :cond_f6
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_111
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v7, v5

    if-gtz v0, :cond_126

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v7

    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 126
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 123
    :cond_126
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_141
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 116
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v4, v6

    .line 117
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v8, 0x0

    invoke-direct {v0, v2, v4, v5, v8}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLandroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 118
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v4 .. v9}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 119
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 148
    :cond_161
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 149
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_5
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->reset()V

    return-void
.end method
