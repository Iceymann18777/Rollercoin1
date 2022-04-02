.class final Lcom/google/android/exoplayer2/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field private length:I

.field private loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 61
    sget-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    cmp-long v0, p1, p3

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method private canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z
    .registers 8

    .line 471
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 8

    .line 527
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 24

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 546
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 552
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v7, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_ad

    .line 553
    iget-object v4, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v12, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v14

    .line 554
    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v15, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v12, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v5

    .line 555
    invoke-virtual/range {v13 .. v18}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v7, :cond_38

    return-object v11

    .line 564
    :cond_38
    iget-object v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v7, 0x1

    .line 565
    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    iget v15, v5, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 566
    iget-object v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 567
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 568
    iget-object v1, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v12, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v15, v12}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v1, v4, :cond_9c

    .line 573
    iget-object v12, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v14, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 579
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 574
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_6d

    return-object v11

    .line 583
    :cond_6d
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 584
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 586
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 587
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_93

    .line 589
    :cond_8c
    iget-wide v0, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :goto_93
    move-wide v6, v3

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    move-object v1, v2

    goto :goto_9f

    :cond_9c
    move-object v1, v5

    move-wide v4, v6

    move-wide v6, v9

    :goto_9f
    move-object/from16 v0, p0

    move-wide v2, v6

    .line 597
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    move-wide v2, v9

    move-wide v4, v6

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 601
    :cond_ad
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 602
    iget-object v4, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 603
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_127

    .line 604
    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 605
    iget-object v5, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v5

    if-ne v5, v7, :cond_c9

    return-object v11

    .line 609
    :cond_c9
    iget-object v6, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v7, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 610
    invoke-virtual {v6, v4, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v6

    if-ge v6, v5, :cond_ee

    .line 613
    iget-object v2, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v4, v6}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_dc

    goto :goto_ed

    :cond_dc
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    .line 615
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v11

    :goto_ed
    return-object v11

    .line 623
    :cond_ee
    iget-wide v4, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_11b

    .line 627
    iget-object v12, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v13, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v14, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v15, v14, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 633
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 628
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_111

    return-object v11

    .line 637
    :cond_111
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_11c

    :cond_11b
    move-wide v2, v4

    .line 639
    :goto_11c
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 644
    :cond_127
    iget-object v2, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v2

    if-ne v2, v7, :cond_141

    .line 647
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 652
    :cond_141
    iget-object v3, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    .line 653
    iget-object v4, v8, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result v4

    if-nez v4, :cond_150

    goto :goto_15f

    :cond_150
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    .line 655
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v11

    :goto_15f
    return-object v11
.end method

.method private getMediaPeriodInfo(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 14

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 667
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 668
    iget-object p4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget p5, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p4, p5, v0}, Lcom/google/android/exoplayer2/Timeline$Period;->isAdAvailable(II)Z

    move-result p4

    if-nez p4, :cond_1d

    const/4 p1, 0x0

    return-object p1

    .line 671
    :cond_1d
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 678
    :cond_2c
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 24

    move-object/from16 v0, p0

    .line 688
    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 690
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 692
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v2, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 693
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 694
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v2, p2

    .line 695
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_35

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 696
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_37

    :cond_35
    const-wide/16 v1, 0x0

    :goto_37
    move-wide v3, v1

    .line 698
    new-instance v13, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v13
.end method

.method private getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 20

    move-object v0, p0

    .line 710
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 711
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 712
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v12

    .line 713
    invoke-direct {p0, v3, v12}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 714
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 716
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_2a

    :cond_29
    move-wide v8, v6

    :goto_2a
    cmp-long v1, v8, v6

    if-eqz v1, :cond_37

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v6, v8, v1

    if-nez v6, :cond_35

    goto :goto_37

    :cond_35
    move-wide v10, v8

    goto :goto_3c

    .line 718
    :cond_37
    :goto_37
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    move-wide v10, v1

    .line 722
    :goto_3c
    new-instance v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v1
.end method

.method private isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 3

    .line 733
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_d

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z
    .registers 10

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 738
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_32

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 740
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z

    move-result p1

    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method

.method private resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 13

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1c

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p2

    .line 409
    new-instance p3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p3, p1, p4, p5, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 411
    :cond_1c
    iget-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 412
    new-instance p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J
    .registers 8

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 426
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_26

    .line 427
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_26

    .line 429
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_26

    .line 432
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v0

    .line 436
    :cond_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_28
    if-eqz v1, :cond_3e

    .line 438
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 440
    iget-object p1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 442
    :cond_39
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_28

    .line 444
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_40
    if-eqz v1, :cond_64

    .line 446
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_5f

    .line 448
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-ne v3, v0, :cond_5f

    .line 451
    iget-object p1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 454
    :cond_5f
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_40

    .line 457
    :cond_64
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 458
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v2, :cond_73

    .line 460
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 461
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_73
    return-wide v0
.end method

.method private updateForPlaybackModeChange()Z
    .registers 9

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 491
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 493
    :goto_f
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 494
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v3

    .line 496
    :goto_1d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_2e

    .line 498
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1d

    .line 501
    :cond_2e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    if-nez v2, :cond_38

    goto :goto_45

    .line 505
    :cond_38
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_43

    goto :goto_45

    :cond_43
    move-object v0, v2

    goto :goto_f

    .line 514
    :cond_45
    :goto_45
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v2

    .line 517
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    xor-int/lit8 v0, v2, 0x1

    return v0
.end method


# virtual methods
.method public advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 222
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v0, v2, :cond_10

    .line 223
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 226
    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    if-nez v0, :cond_2f

    .line 228
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 232
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public clear(Z)V
    .registers 6

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_a

    .line 270
    iget-object p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    move-object p1, v1

    :goto_b
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 271
    iget-object p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 273
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    goto :goto_20

    :cond_1c
    if-nez p1, :cond_20

    .line 275
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 277
    :cond_20
    :goto_20
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 278
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 279
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 p1, 0x0

    .line 280
    iput p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    return-void
.end method

.method public enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 18

    move-object v0, p0

    move-object/from16 v8, p5

    .line 149
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v1, :cond_20

    iget-object v1, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-wide v1, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1d

    iget-wide v1, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    goto :goto_2e

    :cond_1d
    const-wide/16 v1, 0x0

    goto :goto_2e

    .line 154
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    :goto_2e
    move-wide v3, v1

    .line 155
    new-instance v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-object v1, v10

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 164
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_45

    .line 165
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    goto :goto_49

    .line 167
    :cond_45
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 168
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    :goto_49
    const/4 v1, 0x0

    .line 170
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 171
    iput-object v10, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 172
    iget v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    return-object v10
.end method

.method public getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-nez v0, :cond_9

    .line 126
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    goto :goto_d

    .line 127
    :cond_9
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 15

    .line 356
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 357
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v10

    .line 358
    invoke-direct {p0, v1, v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLastInTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Z)Z

    move-result v11

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 361
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 362
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    :goto_25
    move-wide v8, v2

    goto :goto_45

    :cond_27
    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3e

    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_3b

    goto :goto_3e

    .line 364
    :cond_3b
    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    goto :goto_25

    .line 362
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 364
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    goto :goto_25

    .line 366
    :goto_45
    new-instance v12, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method public isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_7

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->reevaluateBuffer(J)V

    :cond_7
    return-void
.end method

.method public removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 245
    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 247
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 248
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 249
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne p1, v2, :cond_1f

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v0, 0x1

    .line 254
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->release()V

    .line 255
    iget v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    goto :goto_c

    .line 257
    :cond_28
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setNext(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    return v0
.end method

.method public resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 10

    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 387
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public setTimeline(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public shouldLoadNextMediaPeriod()Z
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->loading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    return v0
.end method

.method public updateQueuedPeriods(JJ)Z
    .registers 13

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->playing:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x1

    if-eqz v0, :cond_76

    .line 302
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    if-nez v1, :cond_f

    .line 310
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v1

    goto :goto_28

    .line 312
    :cond_f
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lcom/google/android/exoplayer2/MediaPeriodHolder;J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 315
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 317
    :cond_1b
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 319
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_27
    move-object v1, v4

    .line 324
    :goto_28
    iget-wide v4, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 326
    iget-wide v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 329
    iget-wide p1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p1, v3

    if-nez v5, :cond_4b

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_51

    :cond_4b
    iget-wide p1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 332
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    .line 333
    :goto_51
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reading:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_62

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p3, v4

    if-eqz v1, :cond_60

    cmp-long v1, p3, p1

    if-ltz v1, :cond_62

    :cond_60
    const/4 p1, 0x1

    goto :goto_63

    :cond_62
    const/4 p1, 0x0

    .line 337
    :goto_63
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result p2

    if-nez p2, :cond_6c

    if-nez p1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x0

    :goto_6d
    return v2

    .line 342
    :cond_6e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_76
    return v2
.end method

.method public updateRepeatMode(I)Z
    .registers 2

    .line 77
    iput p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->repeatMode:I

    .line 78
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method

.method public updateShuffleModeEnabled(Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 87
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method
