.class public final Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final ID3_IDENTIFIER:[B


# instance fields
.field private final adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private bytesRead:I

.field private currentFrameVersion:I

.field private currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private firstFrameSampleRateIndex:I

.field private firstFrameVersion:I

.field private formatId:Ljava/lang/String;

.field private foundFirstFrame:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 65
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposeId3"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exposeId3",
            "language"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 116
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 120
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->exposeId3:Z

    .line 121
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private checkAdtsHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 334
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result p1

    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    .line 336
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 337
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 338
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    if-eq p1, v0, :cond_2e

    .line 341
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->resetSync()V

    return-void

    .line 345
    :cond_2e
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 347
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 348
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 350
    :cond_3b
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    return-void
.end method

.method private checkSyncPositionValid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesBuffer",
            "syncPositionCandidate"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 377
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 382
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 383
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 384
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-eq v0, v4, :cond_26

    return v2

    .line 388
    :cond_26
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v5, :cond_4b

    .line 389
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_35

    return v1

    .line 392
    :cond_35
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 393
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 394
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v6, :cond_46

    return v2

    :cond_46
    add-int/lit8 v4, p2, 0x2

    .line 397
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 402
    :cond_4b
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_56

    return v1

    .line 405
    :cond_56
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 406
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_69

    return v2

    :cond_69
    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    .line 412
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v4

    if-lt v3, v4, :cond_73

    return v1

    .line 415
    :cond_73
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte p2, v4, p2

    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v3

    invoke-direct {p0, p2, v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result p2

    if-eqz p2, :cond_90

    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameVersion:I

    if-eq p2, v5, :cond_91

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_90

    goto :goto_91

    :cond_90
    const/4 v1, 0x0

    :cond_91
    :goto_91
    return v1
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 214
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private findNextSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pesBuffer"
        }
    .end annotation

    .line 276
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 277
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 278
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_7a

    add-int/lit8 v3, v1, 0x1

    .line 280
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 281
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_49

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 282
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v4, :cond_2c

    add-int/lit8 v4, v3, -0x2

    .line 283
    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->checkSyncPositionValid(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_2c
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 284
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentFrameVersion:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 285
    :goto_38
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    .line 286
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_42

    .line 287
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_45

    .line 289
    :cond_42
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 291
    :goto_45
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 296
    :cond_49
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_74

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_71

    const/16 v5, 0x344

    if-eq v1, v5, :cond_6c

    const/16 v5, 0x433

    if-eq v1, v5, :cond_65

    const/16 v1, 0x100

    if-eq v4, v1, :cond_78

    .line 314
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_78

    .line 307
    :cond_65
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 308
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_6c
    const/16 v1, 0x400

    .line 304
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    goto :goto_78

    .line 298
    :cond_71
    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    goto :goto_78

    :cond_74
    const/16 v1, 0x300

    .line 301
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    :cond_78
    :goto_78
    move v1, v3

    goto :goto_a

    .line 320
    :cond_7a
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private isAdtsSyncBytes(BB)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstByte",
            "secondByte"
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    .line 422
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result p1

    return p1
.end method

.method public static isAdtsSyncWord(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "candidateSyncWord"
        }
    .end annotation

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private parseAdtsHeader()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 448
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 450
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasOutputFormat:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_83

    .line 451
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_36

    const/16 v4, 0x3d

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 466
    :cond_36
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 467
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 469
    iget v5, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 470
    invoke-static {v0, v5, v4}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v4

    .line 475
    iget-object v7, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 477
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    .line 475
    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 480
    iget v7, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 481
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v4, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 482
    iput-boolean v3, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_8a

    .line 484
    :cond_83
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 487
    :goto_8a
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 488
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 489
    iget-boolean v1, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_a0

    add-int/lit8 v0, v0, -0x2

    :cond_a0
    move v5, v0

    .line 493
    iget-object v1, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, v6, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V

    return-void
.end method

.method private parseId3Header()V
    .registers 10

    .line 438
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 440
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 441
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 440
    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V

    return-void
.end method

.method private readSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 501
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 502
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 503
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v4, :cond_2f

    .line 504
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 505
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    .line 506
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_2f
    return-void
.end method

.method private resetSync()V
    .registers 2

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 199
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method private setCheckingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x1

    .line 265
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setFindingSampleState()V
    .registers 2

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 223
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    .line 224
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x3

    .line 259
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setReadingId3HeaderState()V
    .registers 3

    const/4 v0, 0x2

    .line 232
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    .line 235
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private setReadingSampleState(Landroidx/media2/exoplayer/external/extractor/TrackOutput;JII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputToUse",
            "currentSampleDuration",
            "priorReadBytes",
            "sampleSize"
        }
    .end annotation

    const/4 v0, 0x4

    .line 248
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    .line 249
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->bytesRead:I

    .line 250
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 251
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 252
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method

.method private tryRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 427
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_8

    return v1

    .line 430
    :cond_8
    invoke-virtual {p1, p2, v1, p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4d

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->state:I

    if-eqz v0, :cond_49

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 176
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->readSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_0

    .line 179
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 170
    :cond_20
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x7

    goto :goto_27

    :cond_26
    const/4 v0, 0x5

    .line 171
    :goto_27
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 162
    :cond_35
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 167
    :cond_45
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->checkAdtsHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_0

    .line 159
    :cond_49
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->findNextSample(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    goto :goto_0

    :cond_4d
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 136
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 137
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 139
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_36

    .line 140
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 141
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 142
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_3d

    .line 145
    :cond_36
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->id3Output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    :goto_3d
    return-void
.end method

.method public getSampleDurationUs()J
    .registers 3

    .line 194
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public packetFinished()V
    .registers 1

    return-void
.end method

.method public packetStarted(JI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesTimeUs",
            "flags"
        }
    .end annotation

    .line 151
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 1

    .line 131
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;->resetSync()V

    return-void
.end method
