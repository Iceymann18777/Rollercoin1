.class final Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H265Reader;
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

.field private final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private outputSample(I)V
    .registers 9

    .line 487
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 488
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public endNalUnit(JI)V
    .registers 6

    .line 468
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_10

    .line 470
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x0

    .line 471
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    goto :goto_33

    .line 472
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_33

    .line 474
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_24

    .line 476
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 477
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 479
    :cond_24
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 480
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 482
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    :cond_33
    :goto_33
    return-void
.end method

.method public readNalUnitData([BII)V
    .registers 6

    .line 456
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    .line 457
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    .line 459
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 460
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1e

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 462
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 424
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 425
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 426
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 427
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    return-void
.end method

.method public startNalUnit(JIIJ)V
    .registers 8

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 432
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 433
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 434
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 435
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_28

    .line 438
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez p2, :cond_1d

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p2, :cond_1d

    .line 440
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 441
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_1d
    const/16 p2, 0x22

    if-gt p4, p2, :cond_28

    .line 445
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 446
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    :cond_28
    const/16 p2, 0x10

    if-lt p4, p2, :cond_32

    const/16 p2, 0x15

    if-gt p4, p2, :cond_32

    const/4 p2, 0x1

    goto :goto_33

    :cond_32
    const/4 p2, 0x0

    .line 451
    :goto_33
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p2, :cond_3b

    const/16 p2, 0x9

    if-gt p4, p2, :cond_3c

    :cond_3b
    const/4 v0, 0x1

    .line 452
    :cond_3c
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void
.end method
