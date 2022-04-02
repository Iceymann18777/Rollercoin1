.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;,
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;,
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;)V
    .registers 14

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 392
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 393
    iput-wide p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p6, p6, p1

    .line 394
    iput-wide p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p8, p8, p1

    .line 395
    iput-wide p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 396
    iput p10, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 398
    iput-wide p11, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 399
    iput-object p13, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 400
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 402
    iput-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$1;)V
    .registers 15

    .line 37
    invoke-direct/range {p0 .. p13}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method static synthetic access$000([[J)[[[J
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAllocationCheckpoints([[J)[[[J

    move-result-object p0

    return-object p0
.end method

.method private static countArrayElements([[D)I
    .registers 5

    .line 735
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget-object v3, p0, v1

    .line 736
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return v2
.end method

.method private determineIdealSelectedIndex(J)I
    .registers 12

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;->getAllocatedBandwidth()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 577
    :goto_8
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v0, v2, :cond_2d

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_18

    .line 578
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 579
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 580
    iget v3, v2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    move-object v1, p0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lcom/google/android/exoplayer2/Format;IFJ)Z

    move-result v1

    if-eqz v1, :cond_29

    return v0

    :cond_29
    move v1, v0

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2d
    return v1
.end method

.method private static getAllocationCheckpoints([[J)[[[J
    .registers 18

    move-object/from16 v0, p0

    .line 664
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLogArrayValues([[J)[[D

    move-result-object v1

    .line 665
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSwitchPoints([[D)[[D

    move-result-object v2

    .line 670
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->countArrayElements([[D)I

    move-result v3

    const/4 v4, 0x3

    add-int/2addr v3, v4

    .line 671
    array-length v5, v1

    new-array v4, v4, [I

    const/4 v6, 0x2

    aput v6, v4, v6

    const/4 v7, 0x1

    aput v3, v4, v7

    const/4 v8, 0x0

    aput v5, v4, v8

    const-class v5, J

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[J

    .line 672
    array-length v5, v1

    new-array v5, v5, [I

    .line 673
    invoke-static {v4, v7, v0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    const/4 v9, 0x2

    :goto_2b
    add-int/lit8 v10, v3, -0x1

    if-ge v9, v10, :cond_5c

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 677
    :goto_36
    array-length v14, v1

    if-ge v12, v14, :cond_51

    .line 678
    aget v14, v5, v12

    add-int/2addr v14, v7

    aget-object v15, v1, v12

    array-length v15, v15

    if-ne v14, v15, :cond_42

    goto :goto_4e

    .line 681
    :cond_42
    aget-object v14, v2, v12

    aget v15, v5, v12

    aget-wide v15, v14, v15

    cmpg-double v14, v15, v10

    if-gez v14, :cond_4e

    move v13, v12

    move-wide v10, v15

    :cond_4e
    :goto_4e
    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    .line 687
    :cond_51
    aget v10, v5, v13

    add-int/2addr v10, v7

    aput v10, v5, v13

    .line 688
    invoke-static {v4, v9, v0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 690
    :cond_5c
    array-length v0, v4

    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v0, :cond_7d

    aget-object v2, v4, v1

    .line 691
    aget-object v5, v2, v10

    add-int/lit8 v9, v3, -0x2

    aget-object v11, v2, v9

    aget-wide v12, v11, v8

    const-wide/16 v14, 0x2

    mul-long v12, v12, v14

    aput-wide v12, v5, v8

    .line 692
    aget-object v5, v2, v10

    aget-object v2, v2, v9

    aget-wide v11, v2, v7

    mul-long v11, v11, v14

    aput-wide v11, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_7d
    return-object v4
.end method

.method private static getLogArrayValues([[J)[[D
    .registers 11

    .line 699
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 700
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_35

    .line 701
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 702
    :goto_10
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_32

    .line 703
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_24

    const-wide/16 v5, 0x0

    goto :goto_2d

    :cond_24
    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    :goto_2d
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_35
    return-object v0
.end method

.method private static getSwitchPoints([[D)[[D
    .registers 15

    .line 716
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 717
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_55

    .line 718
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 719
    aget-object v3, v0, v2

    array-length v3, v3

    if-nez v3, :cond_17

    goto :goto_52

    .line 722
    :cond_17
    aget-object v3, p0, v2

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    aget-object v3, p0, v2

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    const/4 v3, 0x0

    .line 723
    :goto_26
    aget-object v6, p0, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_52

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 724
    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    aget-object v8, p0, v2

    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v8, v11

    add-double/2addr v9, v12

    mul-double v9, v9, v6

    .line 725
    aget-object v6, v0, v2

    const-wide/16 v7, 0x0

    cmpl-double v12, v4, v7

    if-nez v12, :cond_47

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_4e

    :cond_47
    aget-object v7, p0, v2

    aget-wide v12, v7, v1

    sub-double/2addr v9, v12

    div-double v7, v9, v4

    :goto_4e
    aput-wide v7, v6, v3

    move v3, v11

    goto :goto_26

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_55
    return-object v0
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_11

    .line 591
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1b

    long-to-float p1, p1

    .line 593
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1d

    :cond_1b
    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1d
    return-wide p1
.end method

.method private static setCheckpointValues([[[JI[[J[I)V
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 753
    :goto_4
    array-length v4, p0

    if-ge v3, v4, :cond_1e

    .line 754
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 755
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 757
    :cond_1e
    array-length p2, p0

    const/4 p3, 0x0

    :goto_20
    if-ge p3, p2, :cond_2b

    aget-object v3, p0, p3

    .line 758
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_2b
    return-void
.end method


# virtual methods
.method protected canSelectFormat(Lcom/google/android/exoplayer2/Format;IFJ)Z
    .registers 6

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 543
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p1, p4

    if-gtz p3, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public enable()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 418
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(J)Z

    move-result v2

    if-nez v2, :cond_11

    .line 491
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 494
    :cond_11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 495
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    return v3

    .line 499
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 500
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 501
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 502
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_39

    return v2

    .line 508
    :cond_39
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :goto_41
    if-ge v3, v2, :cond_7d

    .line 514
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 515
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 516
    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v8, p1

    .line 517
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 518
    invoke-static {v8, v9, v1}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_7a

    .line 519
    iget v1, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v5, :cond_7a

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_7a

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v8, 0x2d0

    if-ge v1, v8, :cond_7a

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v5, :cond_7a

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v5, 0x500

    if-ge v1, v5, :cond_7a

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->height:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v4, :cond_7a

    return v3

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_7d
    return v2
.end method

.method public experimental_setBandwidthAllocationCheckpoints([[J)V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 413
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setBandwidthAllocationCheckpoints([[J)V

    return-void
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .registers 3

    .line 565
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 473
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 478
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    .line 423
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method protected shouldEvaluateQueueSize(J)Z
    .registers 8

    .line 554
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 433
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 436
    iget p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p7, :cond_14

    const/4 p3, 0x1

    .line 437
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 443
    :cond_14
    iget p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J)I

    move-result p8

    iput p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne p8, p7, :cond_1f

    return-void

    .line 449
    :cond_1f
    invoke-virtual {p0, p7, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 451
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 452
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 453
    iget p8, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le p8, v0, :cond_40

    .line 454
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide p5

    cmp-long p8, p3, p5

    if-gez p8, :cond_40

    .line 457
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_4e

    .line 458
    :cond_40
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge p2, p1, :cond_4e

    iget-wide p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_4e

    .line 462
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 466
    :cond_4e
    :goto_4e
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq p1, p7, :cond_55

    const/4 p1, 0x3

    .line 467
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    :cond_55
    return-void
.end method
