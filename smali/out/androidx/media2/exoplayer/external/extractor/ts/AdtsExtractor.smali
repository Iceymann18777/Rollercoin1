.class public final Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# instance fields
.field private averageFrameSize:I

.field private extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private firstFramePosition:J

.field private firstSampleTimestampUs:J

.field private final firstStreamSampleTimestampUs:J

.field private final flags:I

.field private hasCalculatedAverageFrameSize:Z

.field private hasOutputSeekMap:Z

.field private final packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

.field private final scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->FACTORY:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstStreamSampleTimestampUs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstStreamSampleTimestampUs",
            "flags"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstStreamSampleTimestampUs:J

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    .line 119
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->flags:I

    .line 120
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    .line 121
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 122
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    const-wide/16 p1, -0x1

    .line 123
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 124
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 125
    new-instance p2, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    return-void
.end method

.method private calculateAverageFrameSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V
    .registers 12
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

    .line 267
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    .line 270
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 271
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 272
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_18

    .line 274
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 279
    :cond_1a
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-interface {p1, v5, v1, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 281
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 282
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 283
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_73

    .line 290
    :cond_38
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x4

    invoke-interface {p1, v5, v1, v6, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_72

    .line 294
    :cond_44
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 295
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_68

    int-to-long v8, v5

    add-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_5f

    goto :goto_67

    :cond_5f
    add-int/lit8 v5, v5, -0x6

    .line 305
    invoke-interface {p1, v5, v7}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v5

    if-nez v5, :cond_1a

    :goto_67
    goto :goto_72

    .line 298
    :cond_68
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    .line 299
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v0, "Malformed ADTS stream"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    :goto_72
    move v1, v2

    .line 310
    :goto_73
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    if-lez v1, :cond_7e

    int-to-long v0, v1

    .line 312
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    goto :goto_80

    .line 314
    :cond_7e
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 316
    :goto_80
    iput-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    return-void
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameSize",
            "durationUsPerFrame"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 332
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLength"
        }
    .end annotation

    .line 320
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 321
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    iget v9, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    return-object v0
.end method

.method static final synthetic lambda$static$0$AdtsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 52
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(JZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputLength",
            "canUseConstantBitrateSeeking",
            "readEndOfStream"
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eqz p3, :cond_e

    .line 247
    iget p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez p3, :cond_e

    const/4 p3, 0x1

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    :goto_f
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_23

    .line 248
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    .line 249
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_23

    if-nez p4, :cond_23

    return-void

    .line 256
    :cond_23
    iget-object p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-static {p4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    if-eqz p3, :cond_3f

    .line 257
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-eqz p3, :cond_3f

    .line 258
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->getConstantBitrateSeekMap(J)Landroidx/media2/exoplayer/external/extractor/SeekMap;

    move-result-object p1

    invoke-interface {p4, p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    goto :goto_47

    .line 260
    :cond_3f
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    invoke-direct {p1, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p4, p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    .line 262
    :goto_47
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    return-void
.end method

.method private peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 224
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 225
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 226
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_2d

    .line 234
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 235
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 236
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_2c

    int-to-long v2, v1

    .line 237
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstFramePosition:J

    :cond_2c
    return v1

    .line 229
    :cond_2d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 230
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 232
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_2
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 174
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 193
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->flags:I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_13

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    if-eqz p2, :cond_19

    .line 196
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->calculateAverageFrameSize(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 199
    :cond_19
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v5, 0x800

    invoke-interface {p1, v4, v3, v5}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    .line 201
    :goto_29
    invoke-direct {p0, v0, v1, p2, v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->maybeOutputSeekMap(JZZ)V

    if-eqz v5, :cond_2f

    return v4

    .line 207
    :cond_2f
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setLimit(I)V

    .line 210
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez p1, :cond_47

    .line 212
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->packetStarted(JI)V

    .line 213
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 217
    :cond_47
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    return v3
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->startedPacket:Z

    .line 180
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->reader:Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->seek()V

    .line 181
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstStreamSampleTimestampUs:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    return-void
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 10
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

    .line 133
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 140
    :goto_8
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 141
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 142
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 143
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 146
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_2d

    return v1

    .line 150
    :cond_2d
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_6

    :cond_31
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_3b

    const/16 v7, 0xbc

    if-le v4, v7, :cond_3b

    return v5

    .line 157
    :cond_3b
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratch:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 158
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 159
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_55

    return v1

    :cond_55
    add-int/lit8 v6, v5, -0x6

    .line 164
    invoke-interface {p1, v6}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->advancePeekPosition(I)V

    add-int/2addr v4, v5

    goto :goto_8
.end method
