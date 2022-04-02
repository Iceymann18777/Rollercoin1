.class final Landroidx/media2/exoplayer/external/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field private length:I

.field private loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

.field private nextWindowSequenceNumber:J

.field private oldFrontPeriodUid:Ljava/lang/Object;

.field private oldFrontPeriodWindowSequenceNumber:J

.field private final period:Landroidx/media2/exoplayer/external/Timeline$Period;

.field private playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

.field private reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private timeline:Landroidx/media2/exoplayer/external/Timeline;

.field private final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 65
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 66
    sget-object v0, Landroidx/media2/exoplayer/external/Timeline;->EMPTY:Landroidx/media2/exoplayer/external/Timeline;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-void
.end method

.method private areDurationsCompatible(JJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousDurationUs",
            "newDurationUs"
        }
    .end annotation

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

.method private canKeepMediaPeriodHolder(Landroidx/media2/exoplayer/external/MediaPeriodInfo;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldInfo",
            "newInfo"
        }
    .end annotation

    .line 477
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private getFirstMediaPeriodInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackInfo"
        }
    .end annotation

    .line 533
    iget-object v1, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->periodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->contentPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/PlaybackInfo;->startPositionUs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaPeriodHolder",
            "rendererPositionUs"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 552
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    add-long/2addr v2, v4

    sub-long v2, v2, p2

    .line 558
    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    const/4 v5, 0x1

    const/4 v6, -0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_a4

    .line 559
    iget-object v4, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v11, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v11}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 560
    iget-object v12, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v14, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v15, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v4, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v11, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    move/from16 v16, v4

    move/from16 v17, v11

    .line 561
    invoke-virtual/range {v12 .. v17}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v6, :cond_37

    return-object v7

    .line 569
    :cond_37
    iget-object v6, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v11, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 570
    invoke-virtual {v6, v4, v11, v5}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v5

    iget v14, v5, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 571
    iget-object v5, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    .line 572
    iget-object v1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 573
    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v6, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v1, v14, v6}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Window;->firstPeriodIndex:I

    if-ne v1, v4, :cond_95

    .line 577
    iget-object v11, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v12, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 583
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 578
    invoke-virtual/range {v11 .. v18}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_6b

    return-object v7

    .line 587
    :cond_6b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 588
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 590
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 591
    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    goto :goto_91

    .line 593
    :cond_8a
    iget-wide v0, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :goto_91
    move-wide v9, v3

    move-wide v4, v0

    move-object v1, v2

    goto :goto_97

    :cond_95
    move-object v1, v5

    move-wide v4, v11

    :goto_97
    move-object/from16 v0, p0

    move-wide v2, v9

    .line 599
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v1

    move-wide v4, v9

    .line 600
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 604
    :cond_a4
    iget-object v0, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 605
    iget-object v4, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4, v11, v12}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 606
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 607
    iget v4, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 608
    iget-object v11, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v11, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v11

    if-ne v11, v6, :cond_c0

    return-object v7

    .line 612
    :cond_c0
    iget-object v6, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v12, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 613
    invoke-virtual {v6, v4, v12}, Landroidx/media2/exoplayer/external/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v6

    if-ge v6, v11, :cond_e5

    .line 616
    iget-object v2, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2, v4, v6}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result v2

    if-nez v2, :cond_d3

    goto :goto_e4

    .line 618
    :cond_d3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v6

    move-wide v4, v9

    move-wide v6, v11

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v7

    :goto_e4
    return-object v7

    .line 630
    :cond_e5
    iget-wide v11, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 631
    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupCount()I

    move-result v1

    if-ne v1, v5, :cond_11e

    iget-object v1, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    cmp-long v1, v4, v9

    if-nez v1, :cond_11e

    .line 632
    iget-object v13, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v14, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget-object v15, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v1, v15, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 638
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    move/from16 v16, v1

    .line 633
    invoke-virtual/range {v13 .. v20}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodPosition(Landroidx/media2/exoplayer/external/Timeline$Window;Landroidx/media2/exoplayer/external/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_114

    return-object v7

    .line 642
    :cond_114
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_11f

    :cond_11e
    move-wide v2, v11

    .line 644
    :goto_11f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 649
    :cond_12a
    iget-object v2, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v2

    if-ne v2, v6, :cond_144

    .line 652
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    .line 657
    :cond_144
    iget-object v3, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    .line 658
    iget-object v4, v8, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v4, v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result v4

    if-nez v4, :cond_153

    goto :goto_162

    .line 660
    :cond_153
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v7

    :goto_162
    return-object v7
.end method

.method private getMediaPeriodInfo(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "contentPositionUs",
            "startPositionUs"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 672
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 673
    iget-object p4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget p5, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p4, p5, v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->isAdAvailable(II)Z

    move-result p4

    if-nez p4, :cond_1d

    const/4 p1, 0x0

    return-object p1

    .line 676
    :cond_1d
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 683
    :cond_2c
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private getMediaPeriodInfoForAd(Ljava/lang/Object;IIJJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "adGroupIndex",
            "adIndexInAdGroup",
            "contentPositionUs",
            "windowSequenceNumber"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 693
    new-instance v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v1, v7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 695
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 697
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v2, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v7, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 698
    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 700
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_35

    .line 701
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_37

    :cond_35
    const-wide/16 v1, 0x0

    :goto_37
    move-wide v3, v1

    .line 703
    new-instance v13, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    move v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v13
.end method

.method private getMediaPeriodInfoForContent(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "startPositionUs",
            "windowSequenceNumber"
        }
    .end annotation

    move-object v0, p0

    .line 715
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v1

    .line 716
    new-instance v3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v2, p1

    move-wide/from16 v6, p4

    invoke-direct {v3, p1, v6, v7, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 717
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v12

    .line 718
    invoke-direct {p0, v3, v12}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z

    move-result v13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 721
    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupTimeUs(I)J

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

    .line 725
    :cond_37
    :goto_37
    iget-object v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->durationUs:J

    move-wide v10, v1

    .line 727
    :goto_3c
    new-instance v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v1
.end method

.method private isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 738
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_d

    iget p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isLastMediaPeriodInPeriod"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 743
    iget-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p1, v2, v0}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 744
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_32

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 745
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/exoplayer/external/Timeline;->isLastPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)Z

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

.method private resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "positionUs",
            "windowSequenceNumber"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1c

    .line 420
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p2

    .line 421
    new-instance p3, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-direct {p3, p1, p4, p5, p2}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p3

    .line 423
    :cond_1c
    iget-object p2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 424
    new-instance p2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodUid"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    .line 438
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_26

    .line 439
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_26

    .line 441
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_26

    .line 444
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide v0

    .line 448
    :cond_26
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    :goto_2a
    if-eqz v1, :cond_40

    .line 450
    iget-object v3, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 452
    iget-object p1, v1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 454
    :cond_3b
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    goto :goto_2a

    .line 456
    :cond_40
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    :goto_44
    if-eqz p1, :cond_68

    .line 458
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_63

    .line 460
    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v3, v1, v4}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_63

    .line 463
    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    .line 466
    :cond_63
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    goto :goto_44

    .line 469
    :cond_68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->nextWindowSequenceNumber:J

    return-wide v0
.end method

.method private updateForPlaybackModeChange()Z
    .registers 9

    .line 493
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 497
    :cond_8
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 499
    :goto_11
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    iget v6, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 500
    invoke-virtual/range {v2 .. v7}, Landroidx/media2/exoplayer/external/Timeline;->getNextPeriodIndex(ILandroidx/media2/exoplayer/external/Timeline$Period;Landroidx/media2/exoplayer/external/Timeline$Window;IZ)I

    move-result v3

    .line 502
    :goto_1f
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v2, :cond_30

    .line 504
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1f

    .line 507
    :cond_30
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    if-nez v2, :cond_3a

    goto :goto_47

    .line 511
    :cond_3a
    iget-object v4, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v5, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_45

    goto :goto_47

    :cond_45
    move-object v0, v2

    goto :goto_11

    .line 520
    :cond_47
    :goto_47
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result v2

    .line 523
    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    if-eqz v2, :cond_5d

    .line 526
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :cond_5d
    :goto_5d
    return v1
.end method


# virtual methods
.method public advancePlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 3

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_37

    .line 230
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-ne v0, v1, :cond_e

    .line 231
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 233
    :cond_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 234
    iget v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 237
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 240
    :cond_2e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    goto :goto_3d

    .line 242
    :cond_37
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 243
    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 245
    :goto_3d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 2

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public clear(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepFrontPeriodUid"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_c

    .line 282
    iget-object p1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->uid:Ljava/lang/Object;

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 283
    iget-object p1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 284
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 285
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    goto :goto_22

    :cond_1e
    if-nez p1, :cond_22

    .line 287
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 289
    :cond_22
    :goto_22
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 290
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 291
    iput-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 p1, 0x0

    .line 292
    iput p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    return-void
.end method

.method public enqueueNextMediaPeriod([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "trackSelector",
            "allocator",
            "mediaSource",
            "info"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-nez v0, :cond_7

    .line 153
    iget-wide v0, p5, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    goto :goto_12

    .line 154
    :cond_7
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    :goto_12
    move-wide v4, v0

    .line 155
    new-instance v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;-><init>([Landroidx/media2/exoplayer/external/RendererCapabilities;JLandroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)V

    .line 163
    iget-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz p1, :cond_2e

    .line 164
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 165
    iget-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->setNext(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    :cond_2e
    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 169
    iget p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    .line 170
    iget-object p1, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

    return-object p1
.end method

.method public getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 2

    .line 202
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->hasPlayingPeriod()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    :goto_b
    return-object v0
.end method

.method public getLoadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 2

    .line 178
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextMediaPeriodInfo(JLandroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererPositionUs",
            "playbackInfo"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-nez v0, :cond_9

    .line 131
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFirstMediaPeriodInfo(Landroidx/media2/exoplayer/external/PlaybackInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object p1

    goto :goto_d

    .line 132
    :cond_9
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public getPlayingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 2

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;
    .registers 2

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 368
    iget-object v1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 369
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v10

    .line 370
    invoke-direct {p0, v1, v10}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->isLastInTimeline(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Z)Z

    move-result v11

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media2/exoplayer/external/Timeline$Period;)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 373
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 374
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    iget v2, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    :goto_25
    move-wide v8, v2

    goto :goto_45

    .line 375
    :cond_27
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3e

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_3b

    goto :goto_3e

    .line 377
    :cond_3b
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    goto :goto_25

    .line 376
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->period:Landroidx/media2/exoplayer/external/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    goto :goto_25

    .line 378
    :goto_45
    new-instance v12, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    return-object v12
.end method

.method public hasPlayingPeriod()Z
    .registers 2

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLoading(Landroidx/media2/exoplayer/external/source/MediaPeriod;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->mediaPeriod:Landroidx/media2/exoplayer/external/source/MediaPeriod;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererPositionUs"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->reevaluateBuffer(J)V

    :cond_7
    return-void
.end method

.method public removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriodHolder"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 257
    :goto_7
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 259
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 260
    :goto_c
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 261
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object p1

    .line 262
    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-ne p1, v2, :cond_1f

    .line 263
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->playing:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 v0, 0x1

    .line 266
    :cond_1f
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->release()V

    .line 267
    iget v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

    goto :goto_c

    .line 269
    :cond_28
    iget-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->setNext(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)V

    return v0
.end method

.method public resolveMediaPeriodIdForAds(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "positionUs"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolvePeriodIndexToWindowSequenceNumber(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 399
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public setTimeline(Landroidx/media2/exoplayer/external/Timeline;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-void
.end method

.method public shouldLoadNextMediaPeriod()Z
    .registers 6

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    .line 115
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->loading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->length:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererPositionUs",
            "maxRendererReadPositionUs"
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFrontPeriod()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x1

    if-eqz v0, :cond_78

    .line 314
    iget-object v3, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    if-nez v1, :cond_11

    .line 322
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v1

    goto :goto_2a

    .line 324
    :cond_11
    invoke-direct {p0, v1, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media2/exoplayer/external/MediaPeriodHolder;J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 327
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 329
    :cond_1d
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->canKeepMediaPeriodHolder(Landroidx/media2/exoplayer/external/MediaPeriodInfo;Landroidx/media2/exoplayer/external/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 331
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_29
    move-object v1, v4

    .line 336
    :goto_2a
    iget-wide v4, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->copyWithContentPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->info:Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 338
    iget-wide v3, v3, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    invoke-direct {p0, v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v3

    if-nez v3, :cond_70

    .line 342
    iget-wide p1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p1, v3

    if-nez v5, :cond_4d

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_53

    .line 344
    :cond_4d
    iget-wide p1, v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    .line 345
    :goto_53
    iget-object v1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->reading:Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_64

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, p3, v4

    if-eqz v1, :cond_62

    cmp-long v1, p3, p1

    if-ltz v1, :cond_64

    :cond_62
    const/4 p1, 0x1

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    .line 349
    :goto_65
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->removeAfter(Landroidx/media2/exoplayer/external/MediaPeriodHolder;)Z

    move-result p2

    if-nez p2, :cond_6e

    if-nez p1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    return v2

    .line 354
    :cond_70
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/MediaPeriodHolder;->getNext()Landroidx/media2/exoplayer/external/MediaPeriodHolder;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :cond_78
    return v2
.end method

.method public updateRepeatMode(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    .line 82
    iput p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->repeatMode:I

    .line 83
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method

.method public updateShuffleModeEnabled(Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shuffleModeEnabled"
        }
    .end annotation

    .line 91
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 92
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/MediaPeriodQueue;->updateForPlaybackModeChange()Z

    move-result p1

    return p1
.end method
