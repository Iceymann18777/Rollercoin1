.class public Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;
.super Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;,
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;,
        Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media2/exoplayer/external/util/Clock;

.field private final formatBitrates:[I

.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private final minTimeBetweenBufferReevaluationMs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I

.field private trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

.field private final trackBitrates:[I


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks",
            "bandwidthProvider",
            "minDurationForQualityIncreaseMs",
            "maxDurationForQualityDecreaseMs",
            "minDurationToRetainAfterDiscardMs",
            "bufferedFractionToLiveEdgeForQualityIncrease",
            "minTimeBetweenBufferReevaluationMs",
            "clock"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 420
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 421
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long p6, p6, p1

    .line 422
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long p8, p8, p1

    .line 423
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 424
    iput p10, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 426
    iput-wide p11, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minTimeBetweenBufferReevaluationMs:J

    .line 427
    iput-object p13, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 428
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 p1, 0x0

    .line 429
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 430
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 431
    sget-object p2, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    .line 432
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array p2, p2, [Landroidx/media2/exoplayer/external/Format;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 433
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formatBitrates:[I

    .line 434
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    .line 435
    :goto_3d
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    if-ge p1, p2, :cond_54

    .line 437
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 438
    iget-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aput-object p2, p3, p1

    .line 439
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formatBitrates:[I

    aget-object p3, p3, p1

    iget p3, p3, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_54
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$1;)V
    .registers 15

    .line 43
    invoke-direct/range {p0 .. p13}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;JJJFJLandroidx/media2/exoplayer/external/util/Clock;)V

    return-void
.end method

.method static synthetic access$000([[J)[[[J
    .registers 1

    .line 43
    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getAllocationCheckpoints([[J)[[[J

    move-result-object p0

    return-object p0
.end method

.method private static countArrayElements([[D)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 798
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget-object v3, p0, v1

    .line 799
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return v2
.end method

.method private determineIdealSelectedIndex(J[I)I
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nowMs",
            "trackBitrates"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;->getAllocatedBandwidth()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 643
    :goto_8
    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v0, v2, :cond_2d

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p1, v2

    if-eqz v4, :cond_18

    .line 644
    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 645
    :cond_18
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 646
    aget v3, p3, v0

    iget v4, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    move-object v1, p0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->canSelectFormat(Landroidx/media2/exoplayer/external/Format;IFJ)Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackBitrates"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 728
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getLogArrayValues([[J)[[D

    move-result-object v1

    .line 729
    invoke-static {v1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getSwitchPoints([[D)[[D

    move-result-object v2

    .line 734
    invoke-static {v2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->countArrayElements([[D)I

    move-result v3

    const/4 v4, 0x3

    add-int/2addr v3, v4

    .line 735
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

    .line 736
    array-length v5, v1

    new-array v5, v5, [I

    .line 737
    invoke-static {v4, v7, v0, v5}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    const/4 v9, 0x2

    :goto_2b
    add-int/lit8 v10, v3, -0x1

    if-ge v9, v10, :cond_5c

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 741
    :goto_36
    array-length v14, v1

    if-ge v12, v14, :cond_51

    .line 742
    aget v14, v5, v12

    add-int/2addr v14, v7

    aget-object v15, v1, v12

    array-length v15, v15

    if-ne v14, v15, :cond_42

    goto :goto_4e

    .line 745
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

    .line 751
    :cond_51
    aget v10, v5, v13

    add-int/2addr v10, v7

    aput v10, v5, v13

    .line 752
    invoke-static {v4, v9, v0, v5}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->setCheckpointValues([[[JI[[J[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 754
    :cond_5c
    array-length v0, v4

    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v0, :cond_7d

    aget-object v2, v4, v1

    .line 755
    aget-object v5, v2, v10

    add-int/lit8 v9, v3, -0x2

    aget-object v11, v2, v9

    aget-wide v12, v11, v8

    const-wide/16 v14, 0x2

    mul-long v12, v12, v14

    aput-wide v12, v5, v8

    .line 756
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
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 763
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 764
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 765
    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 766
    :goto_10
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_25

    .line 767
    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-wide v6, v5, v3

    long-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_28
    return-object v0
.end method

.method private static getSwitchPoints([[D)[[D
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logBitrates"
        }
    .end annotation

    .line 780
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 781
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_4b

    .line 782
    aget-object v3, p0, v2

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 783
    aget-object v3, v0, v2

    array-length v3, v3

    if-nez v3, :cond_17

    goto :goto_48

    .line 786
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

    .line 787
    :goto_26
    aget-object v6, p0, v2

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_48

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 788
    aget-object v8, p0, v2

    aget-wide v9, v8, v3

    aget-object v8, p0, v2

    add-int/lit8 v11, v3, 0x1

    aget-wide v12, v8, v11

    add-double/2addr v9, v12

    mul-double v9, v9, v6

    .line 789
    aget-object v6, v0, v2

    aget-object v7, p0, v2

    aget-wide v12, v7, v1

    sub-double/2addr v9, v12

    div-double/2addr v9, v4

    aput-wide v9, v6, v3

    move v3, v11

    goto :goto_26

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4b
    return-object v0
.end method

.method private minDurationForQualityIncreaseUs(J)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableDurationUs"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_11

    .line 657
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1b

    long-to-float p1, p1

    .line 660
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1d

    .line 661
    :cond_1b
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    :goto_1d
    return-wide p1
.end method

.method private static setCheckpointValues([[[JI[[J[I)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "checkpoints",
            "checkpointIndex",
            "trackBitrates",
            "selectedTracks"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 816
    :goto_4
    array-length v4, p0

    if-ge v3, v4, :cond_1e

    .line 817
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 818
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 820
    :cond_1e
    array-length p2, p0

    const/4 p3, 0x0

    :goto_20
    if-ge p3, p2, :cond_2b

    aget-object v3, p0, p3

    .line 821
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_2b
    return-void
.end method


# virtual methods
.method protected canSelectFormat(Landroidx/media2/exoplayer/external/Format;IFJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "trackBitrate",
            "playbackSpeed",
            "effectiveBitrate"
        }
    .end annotation

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 607
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

    .line 479
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    return-void
.end method

.method public experimental_setBandwidthAllocationCheckpoints([[J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocationCheckpoints"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 474
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setBandwidthAllocationCheckpoints([[J)V

    return-void
.end method

.method public experimental_setNonAllocatableBandwidth(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonAllocatableBandwidth"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->bandwidthProvider:Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider;

    check-cast v0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;

    .line 463
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider;->experimental_setNonAllocatableBandwidth(J)V

    return-void
.end method

.method public experimental_setTrackBitrateEstimator(Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackBitrateEstimator"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    return-void
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 537
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 542
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackSpeed"
        }
    .end annotation

    .line 484
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playbackPositionUs",
            "bufferedDurationUs",
            "availableDurationUs",
            "queue",
            "mediaChunkIterators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 494
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media2/exoplayer/external/util/Clock;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 497
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrateEstimator:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    invoke-interface {v0, v1, p7, p8, v2}, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I

    .line 500
    iget p7, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p7, :cond_1f

    const/4 p3, 0x1

    .line 501
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    .line 502
    iget-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J[I)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 507
    :cond_1f
    iget p7, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 508
    iget-object p8, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->trackBitrates:[I

    invoke-direct {p0, p1, p2, p8}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(J[I)I

    move-result p8

    iput p8, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-ne p8, p7, :cond_2c

    return-void

    .line 513
    :cond_2c
    invoke-virtual {p0, p7, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 515
    invoke-virtual {p0, p7}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 516
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 517
    iget p8, p2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-le p8, v0, :cond_4d

    .line 518
    invoke-direct {p0, p5, p6}, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(J)J

    move-result-wide p5

    cmp-long p8, p3, p5

    if-gez p8, :cond_4d

    .line 521
    iput p7, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    goto :goto_5b

    .line 522
    :cond_4d
    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ge p2, p1, :cond_5b

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_5b

    .line 526
    iput p7, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 530
    :cond_5b
    :goto_5b
    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    if-eq p1, p7, :cond_62

    const/4 p1, 0x3

    .line 531
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection;->reason:I

    :cond_62
    return-void
.end method
