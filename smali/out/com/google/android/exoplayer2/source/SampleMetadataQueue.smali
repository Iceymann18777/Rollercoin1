.class final Lcom/google/android/exoplayer2/source/SampleMetadataQueue;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;
    }
.end annotation


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "*>;"
        }
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;"
        }
    .end annotation
.end field

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

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

.field private upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/16 p1, 0x3e8

    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    new-array v0, p1, [I

    .line 82
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    new-array v0, p1, [J

    .line 83
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    new-array v0, p1, [J

    .line 84
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    new-array v0, p1, [I

    .line 85
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    new-array v0, p1, [I

    .line 86
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    new-array v0, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 87
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 89
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 90
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 92
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private discardSamples(I)J
    .registers 7

    .line 664
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 665
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    .line 664
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 666
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 667
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 668
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 669
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-lt v0, v1, :cond_22

    sub-int/2addr v0, v1

    .line 670
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 672
    :cond_22
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-gez v0, :cond_2c

    const/4 p1, 0x0

    .line 674
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 676
    :cond_2c
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez p1, :cond_43

    .line 677
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    if-nez p1, :cond_36

    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    :cond_36
    add-int/lit8 p1, p1, -0x1

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 680
    :cond_43
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private findSampleBefore(IIJZ)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_22

    .line 644
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_22

    if-eqz p5, :cond_17

    .line 645
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 650
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

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

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    add-int/lit8 v2, p1, -0x1

    .line 697
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    .line 699
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 700
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    goto :goto_2b

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 705
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

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

    .line 717
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 718
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ge v0, p1, :cond_8

    goto :goto_9

    :cond_8
    sub-int/2addr v0, p1

    :goto_9
    return v0
.end method

.method private hasNextSample()Z
    .registers 3

    .line 563
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private mayReadSample(I)Z
    .registers 5

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    sget-object v1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 621
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_26

    .line 622
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 624
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :cond_26
    :goto_26
    return v2
.end method

.method private onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 8

    .line 574
    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_e

    const/4 v2, 0x0

    goto :goto_12

    .line 576
    :cond_e
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 577
    :goto_12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 578
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    sget-object v4, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-ne v3, v4, :cond_1b

    return-void

    .line 585
    :cond_1b
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 586
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/FormatHolder;->includesDrmSession:Z

    .line 587
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_2c

    .line 588
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 594
    :cond_2c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 595
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    if-eqz v3, :cond_41

    .line 596
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 598
    invoke-interface {p1, v1, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    goto :goto_4d

    :cond_41
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 600
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 599
    invoke-interface {v2, v1, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquirePlaceholderSession(Landroid/os/Looper;I)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    :goto_4d
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 601
    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_56

    .line 604
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    :cond_56
    return-void
.end method


# virtual methods
.method public declared-synchronized advanceTo(JZZ)I
    .registers 13

    monitor-enter p0

    .line 353
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v2

    .line 354
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_37

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_1f

    if-nez p4, :cond_1f

    goto :goto_37

    .line 358
    :cond_1f
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_39

    if-ne p1, v7, :cond_30

    .line 360
    monitor-exit p0

    return v7

    .line 362
    :cond_30
    :try_start_30
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 363
    monitor-exit p0

    return p1

    .line 356
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

    .line 372
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v0, v1

    .line 373
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 374
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attemptSplice(J)Z
    .registers 10

    monitor-enter p0

    .line 539
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 540
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4a

    cmp-long v0, p1, v3

    if-lez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    monitor-exit p0

    return v1

    .line 542
    :cond_10
    :try_start_10
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    .line 543
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    .line 542
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_4a

    cmp-long v0, v3, p1

    if-ltz v0, :cond_22

    .line 545
    monitor-exit p0

    return v1

    .line 547
    :cond_22
    :try_start_22
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 548
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v1

    .line 549
    :cond_2b
    :goto_2b
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    if-le v0, v3, :cond_42

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_42

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2b

    .line 553
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    sub-int/2addr v1, v2

    goto :goto_2b

    .line 556
    :cond_42
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_4a

    .line 557
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

.method public declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 13

    monitor-enter p0

    .line 470
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e3

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    .line 472
    monitor-exit p0

    return-void

    .line 474
    :cond_c
    :try_start_c
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    .line 476
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 478
    :goto_21
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 479
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 481
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 482
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 483
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 484
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aput p6, p1, v0

    .line 485
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aput p3, p1, v0

    .line 486
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 487
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object p2, p1, v0

    .line 488
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    aput p2, p1, v0

    .line 489
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    .line 491
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 492
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    if-ne p1, p2, :cond_e1

    .line 494
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 495
    new-array p2, p1, [I

    .line 496
    new-array p3, p1, [J

    .line 497
    new-array p4, p1, [J

    .line 498
    new-array p5, p1, [I

    .line 499
    new-array p6, p1, [I

    .line 500
    new-array p7, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 501
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 502
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    sub-int/2addr v2, v3

    .line 503
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 511
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    .line 519
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    .line 520
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    .line 521
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    .line 522
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 523
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 524
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    .line 525
    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 526
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 527
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->capacity:I
    :try_end_e1
    .catchall {:try_start_c .. :try_end_e1} :catchall_e3

    .line 529
    :cond_e1
    monitor-exit p0

    return-void

    :catchall_e3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized discardTo(JZZ)J
    .registers 14

    monitor-enter p0

    .line 406
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_12

    goto :goto_36

    :cond_12
    if-eqz p4, :cond_1f

    .line 409
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-eq p4, v0, :cond_1f

    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_21

    :cond_1f
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    :goto_21
    move v5, p4

    .line 410
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    const/4 p2, -0x1

    if-ne p1, p2, :cond_30

    .line 412
    monitor-exit p0

    return-wide v1

    .line 414
    :cond_30
    :try_start_30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    monitor-exit p0

    return-wide p1

    .line 407
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

    .line 437
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    .line 438
    monitor-exit p0

    return-wide v0

    .line 440
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

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

.method public declared-synchronized discardToRead()J
    .registers 3

    monitor-enter p0

    .line 424
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    .line 425
    monitor-exit p0

    return-wide v0

    .line 427
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardSamples(I)J

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

    .line 136
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 137
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 138
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 139
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_2e

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_2e

    const/4 p1, 0x1

    :cond_2e
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    .line 141
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez p1, :cond_37

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_37
    sub-int/2addr p1, v1

    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p1

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized format(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 447
    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_27

    .line 448
    monitor-exit p0

    return v1

    .line 450
    :cond_9
    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    .line 451
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_27

    if-eqz v2, :cond_15

    .line 455
    monitor-exit p0

    return v1

    .line 456
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 460
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_27

    .line 461
    monitor-exit p0

    return v0

    .line 463
    :cond_23
    :try_start_23
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_27

    .line 464
    monitor-exit p0

    return v0

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFirstIndex()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public declared-synchronized getFirstTimestampUs()J
    .registers 4

    monitor-enter p0

    .line 238
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    if-nez v0, :cond_8

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_f

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-wide v0, v1

    :goto_f
    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    monitor-enter p0

    .line 220
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J
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

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
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

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isLastSampleQueued()Z
    .registers 2

    monitor-enter p0

    .line 233
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReady(Z)Z
    .registers 5

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    if-nez p1, :cond_17

    .line 261
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    return v1

    .line 265
    :cond_18
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p1

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq v0, v2, :cond_27

    return v1

    .line 270
    :cond_27
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->mayReadSample(I)Z

    move-result p1

    return p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_19

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public declared-synchronized peekSourceId()I
    .registers 3

    monitor-enter p0

    .line 197
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result v0

    .line 198
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceIds:[I

    aget v0, v1, v0

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I
    .registers 10

    monitor-enter p0

    .line 301
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_32

    if-nez p4, :cond_2c

    .line 302
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_11

    goto :goto_2c

    .line 305
    :cond_11
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2a

    if-nez p3, :cond_1d

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p3, :cond_2a

    .line 306
    :cond_1d
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_83

    .line 307
    monitor-exit p0

    return v1

    .line 309
    :cond_2a
    monitor-exit p0

    return v2

    :cond_2c
    :goto_2c
    const/4 p1, 0x4

    .line 303
    :try_start_2d
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_83

    .line 304
    monitor-exit p0

    return v3

    .line 313
    :cond_32
    :try_start_32
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getRelativeIndex(I)I

    move-result p4

    if-nez p3, :cond_7a

    .line 314
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p3, v0, :cond_43

    goto :goto_7a

    .line 319
    :cond_43
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_83

    if-nez p1, :cond_4b

    .line 320
    monitor-exit p0

    return v2

    .line 323
    :cond_4b
    :try_start_4b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->flags:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->timesUs:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 325
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_83

    if-eqz p1, :cond_60

    .line 326
    monitor-exit p0

    return v3

    .line 329
    :cond_60
    :try_start_60
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sizes:[I

    aget p1, p1, p4

    iput p1, p5, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    .line 330
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->offsets:[J

    aget-wide p2, p1, p4

    iput-wide p2, p5, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    .line 331
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object p1, p1, p4

    iput-object p1, p5, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 333
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_83

    .line 334
    monitor-exit p0

    return v3

    .line 315
    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, p4

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_83

    .line 316
    monitor-exit p0

    return v1

    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseDrmSessionReferences()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_c

    .line 170
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    :cond_c
    return-void
.end method

.method public reset(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->relativeFirstIndex:I

    .line 109
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 111
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestDiscardedTimestampUs:J

    .line 112
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->largestQueuedTimestampUs:J

    .line 113
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->isLastSampleQueued:Z

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1d

    .line 116
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 117
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamFormatRequired:Z

    :cond_1d
    return-void
.end method

.method public declared-synchronized rewind()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 245
    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 246
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadPosition(I)Z
    .registers 4

    monitor-enter p0

    .line 386
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    if-gt v0, p1, :cond_14

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->length:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_14

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->absoluteFirstIndex:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->readPosition:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    const/4 p1, 0x1

    .line 388
    monitor-exit p0

    return p1

    :cond_14
    const/4 p1, 0x0

    .line 390
    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sourceId(I)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->upstreamSourceId:I

    return-void
.end method
