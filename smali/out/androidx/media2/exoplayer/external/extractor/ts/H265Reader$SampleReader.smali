.class final Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# instance fields
.field private isFirstParameterSet:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private final output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    return-void
.end method

.method private outputSample(I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 493
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 494
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public endNalUnit(JI)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "offset"
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_10

    .line 476
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    goto :goto_33

    .line 478
    :cond_10
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_33

    .line 480
    :cond_18
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_24

    .line 482
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 483
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 485
    :cond_24
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 486
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 p1, 0x1

    .line 487
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 488
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    :cond_33
    :goto_33
    return-void
.end method

.method public readNalUnitData([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "limit"
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    .line 463
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    .line 465
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 466
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1e

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 468
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 430
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 431
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 432
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 433
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    return-void
.end method

.method public startNalUnit(JIIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "offset",
            "nalUnitType",
            "pesTimeUs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 438
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 439
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 440
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 441
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_28

    .line 444
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez p2, :cond_1d

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p2, :cond_1d

    .line 446
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 447
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_1d
    const/16 p2, 0x22

    if-gt p4, p2, :cond_28

    .line 451
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 452
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    :cond_28
    const/16 p2, 0x10

    if-lt p4, p2, :cond_32

    const/16 p2, 0x15

    if-gt p4, p2, :cond_32

    const/4 p2, 0x1

    goto :goto_33

    :cond_32
    const/4 p2, 0x0

    .line 457
    :goto_33
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p2, :cond_3b

    const/16 p2, 0x9

    if-gt p4, p2, :cond_3c

    :cond_3b
    const/4 v0, 0x1

    .line 458
    :cond_3c
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void
.end method
