.class final Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;
    }
.end annotation


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

.field private flags:[I

.field private formats:[Landroidx/media2/exoplayer/external/Format;

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private offsets:[J

.field private readPosition:I

.field private relativeFirstIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Landroidx/media2/exoplayer/external/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 73
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    new-array v1, v0, [I

    .line 74
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    new-array v1, v0, [J

    .line 75
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    new-array v1, v0, [J

    .line 76
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    new-array v1, v0, [I

    .line 77
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    new-array v1, v0, [I

    .line 78
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    new-array v1, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 79
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 80
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 81
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 82
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 84
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private discardSamples(I)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discardCount"
        }
    .end annotation

    .line 540
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 541
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    .line 540
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 542
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 543
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 544
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 545
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-lt v0, v1, :cond_22

    sub-int/2addr v0, v1

    .line 546
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 548
    :cond_22
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    if-gez v0, :cond_2c

    const/4 p1, 0x0

    .line 550
    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    .line 552
    :cond_2c
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-nez p1, :cond_43

    .line 553
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    if-nez p1, :cond_36

    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    :cond_36
    add-int/lit8 p1, p1, -0x1

    .line 554
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 556
    :cond_43
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private findSampleBefore(IIJZ)I
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "relativeStartIndex",
            "length",
            "timeUs",
            "keyframe"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_22

    .line 520
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_22

    if-eqz p5, :cond_17

    .line 521
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 526
    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ne p1, v3, :cond_1f

    const/4 p1, 0x0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    return v1
.end method

.method private getLargestTimestamp(I)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    add-int/lit8 v2, p1, -0x1

    .line 573
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    .line 575
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 576
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    goto :goto_2b

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 581
    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 593
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 594
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ge v0, p1, :cond_8

    goto :goto_9

    :cond_8
    sub-int/2addr v0, p1

    :goto_9
    return v0
.end method


# virtual methods
.method public declared-synchronized advanceTo(JZZ)I
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "toKeyframe",
            "allowTimeBeyondBuffer"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 304
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_37

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_1f

    if-nez p4, :cond_1f

    goto :goto_37

    .line 308
    :cond_1f
    iget p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_39

    if-ne p1, v7, :cond_30

    .line 310
    monitor-exit p0

    return v7

    .line 312
    :cond_30
    :try_start_30
    iget p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 313
    monitor-exit p0

    return p1

    .line 306
    :cond_37
    :goto_37
    monitor-exit p0

    return v7

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized advanceToEnd()I
    .registers 3

    monitor-enter p0

    .line 322
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, v1

    .line 323
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iput v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 324
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attemptSplice(J)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    monitor-enter p0

    .line 480
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 481
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4a

    cmp-long v0, p1, v3

    if-lez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    monitor-exit p0

    return v1

    .line 483
    :cond_10
    :try_start_10
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    .line 484
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    .line 483
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4a

    cmp-long v0, v3, p1

    if-ltz v0, :cond_22

    .line 486
    monitor-exit p0

    return v1

    .line 488
    :cond_22
    :try_start_22
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 489
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 490
    :cond_2b
    :goto_2b
    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    if-le v0, v3, :cond_42

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_42

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2b

    .line 494
    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    sub-int/2addr v1, v2

    goto :goto_2b

    .line 497
    :cond_42
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardUpstreamSamples(I)J
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_4a

    .line 498
    monitor-exit p0

    return v2

    :catchall_4a
    move-exception p1

    monitor-exit p0

    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method

.method public declared-synchronized commitSample(JIJILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "sampleFlags",
            "offset",
            "size",
            "cryptoData"
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_df

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    .line 414
    monitor-exit p0

    return-void

    .line 416
    :cond_c
    :try_start_c
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 418
    :cond_e
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 420
    :goto_21
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 421
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 423
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 424
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 425
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 426
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aput p6, p1, v0

    .line 427
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aput p3, p1, v0

    .line 428
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 429
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    aput-object p2, p1, v0

    .line 430
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    iget p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    aput p2, p1, v0

    .line 432
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 433
    iget p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    if-ne p1, p2, :cond_dd

    .line 435
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 436
    new-array p2, p1, [I

    .line 437
    new-array p3, p1, [J

    .line 438
    new-array p4, p1, [J

    .line 439
    new-array p5, p1, [I

    .line 440
    new-array p6, p1, [I

    .line 441
    new-array p7, p1, [Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 442
    new-array v0, p1, [Landroidx/media2/exoplayer/external/Format;

    .line 443
    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    sub-int/2addr v2, v3

    .line 444
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 452
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    .line 460
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    .line 461
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    .line 462
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    .line 463
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 464
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 465
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    .line 466
    iput v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 467
    iget p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I

    iput p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 468
    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->capacity:I
    :try_end_dd
    .catchall {:try_start_c .. :try_end_dd} :catchall_df

    .line 470
    :cond_dd
    monitor-exit p0

    return-void

    :catchall_df
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardTo(JZZ)J
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "toKeyframe",
            "stopAtReadPosition"
        }
    .end annotation

    monitor-enter p0

    .line 356
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_12

    goto :goto_36

    :cond_12
    if-eqz p4, :cond_1f

    .line 359
    iget p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-eq p4, v0, :cond_1f

    iget p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_21

    :cond_1f
    iget p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    :goto_21
    move v5, p4

    .line 360
    iget v4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    const/4 p2, -0x1

    if-ne p1, p2, :cond_30

    .line 362
    monitor-exit p0

    return-wide v1

    .line 364
    :cond_30
    :try_start_30
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    monitor-exit p0

    return-wide p1

    .line 357
    :cond_36
    :goto_36
    monitor-exit p0

    return-wide v1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardToEnd()J
    .registers 3

    monitor-enter p0

    .line 387
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    .line 388
    monitor-exit p0

    return-wide v0

    .line 390
    :cond_9
    :try_start_9
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discardFromIndex"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 126
    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    iget v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 127
    iget v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 128
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_2e

    .line 129
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_2e

    const/4 p1, 0x1

    :cond_2e
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 130
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    if-nez p1, :cond_37

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_37
    sub-int/2addr p1, v1

    .line 133
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p1

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized format(Landroidx/media2/exoplayer/external/Format;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 397
    :try_start_5
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    .line 398
    monitor-exit p0

    return v1

    .line 400
    :cond_9
    :try_start_9
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 401
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_19

    if-eqz v2, :cond_15

    .line 403
    monitor-exit p0

    return v1

    .line 405
    :cond_15
    :try_start_15
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    .line 406
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    monitor-enter p0

    .line 195
    :try_start_1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .registers 3

    .line 155
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;
    .registers 2

    monitor-enter p0

    .line 180
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .registers 3

    .line 114
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized hasNextSample()Z
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLastSampleQueued()Z
    .registers 2

    monitor-enter p0

    .line 208
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .registers 3

    .line 165
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sourceIds:[I

    aget v0, v1, v0

    goto :goto_13

    :cond_11
    iget v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    :goto_13
    return v0
.end method

.method public declared-synchronized read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatHolder",
            "buffer",
            "formatRequired",
            "loadingFinished",
            "downstreamFormat",
            "extrasHolder"
        }
    .end annotation

    monitor-enter p0

    .line 254
    :try_start_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x4

    if-nez v0, :cond_29

    if-nez p4, :cond_23

    .line 255
    iget-boolean p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_10

    goto :goto_23

    .line 258
    :cond_10
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    if-eqz p2, :cond_20

    if-nez p3, :cond_1a

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    if-eq p2, p5, :cond_20

    .line 260
    :cond_1a
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_6f

    .line 261
    monitor-exit p0

    return v1

    :cond_20
    const/4 p1, -0x3

    .line 263
    monitor-exit p0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x4

    .line 256
    :try_start_24
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_6f

    .line 257
    monitor-exit p0

    return v2

    .line 267
    :cond_29
    :try_start_29
    iget p4, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p4

    if-nez p3, :cond_67

    .line 268
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_38

    goto :goto_67

    .line 273
    :cond_38
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->flags:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 274
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->timeUs:J

    .line 275
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_6f

    if-eqz p1, :cond_4d

    .line 276
    monitor-exit p0

    return v2

    .line 279
    :cond_4d
    :try_start_4d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->sizes:[I

    aget p1, p1, p4

    iput p1, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 280
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->offsets:[J

    aget-wide p2, p1, p4

    iput-wide p2, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 281
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->cryptoDatas:[Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    aget-object p1, p1, p4

    iput-object p1, p6, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Landroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;

    .line 283
    iget p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_6f

    .line 284
    monitor-exit p0

    return v2

    .line 269
    :cond_67
    :goto_67
    :try_start_67
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, p2, p4

    iput-object p2, p1, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6f

    .line 270
    monitor-exit p0

    return v1

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resetUpstreamFormat"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->length:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 101
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 102
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 103
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormat:Landroidx/media2/exoplayer/external/Format;

    .line 106
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    :cond_1b
    return-void
.end method

.method public declared-synchronized rewind()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 220
    :try_start_2
    iput v0, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->readPosition:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 221
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sourceId(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceId"
        }
    .end annotation

    .line 139
    iput p1, p0, Landroidx/media2/exoplayer/external/source/SampleMetadataQueue;->upstreamSourceId:I

    return-void
.end method
