.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodSeekInfo"
.end annotation


# instance fields
.field public final availableEndTimeUs:J

.field public final availableStartTimeUs:J

.field public final isIndexExplicit:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .registers 6

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    .line 1157
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    .line 1158
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    return-void
.end method

.method public static createPeriodSeekInfo(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    .line 1102
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    const/4 v6, 0x1

    if-ge v3, v1, :cond_24

    .line 1110
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-eq v7, v6, :cond_22

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    :goto_22
    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_2f
    if-ge v11, v1, :cond_a5

    .line 1118
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    if-eqz v3, :cond_44

    .line 1121
    iget v7, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_44

    :cond_40
    move/from16 v17, v3

    move-wide v2, v9

    goto :goto_9d

    .line 1125
    :cond_44
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v6

    if-nez v6, :cond_5e

    .line 1127
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v6

    .line 1129
    :cond_5e
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v7

    or-int/2addr v12, v7

    .line 1130
    invoke-interface {v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v7

    if-nez v7, :cond_71

    move/from16 v17, v3

    const-wide/16 v2, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    goto :goto_9d

    :cond_71
    if-nez v15, :cond_40

    move/from16 v17, v3

    .line 1136
    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v2

    move-wide/from16 v18, v9

    .line 1137
    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v8

    .line 1138
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9b

    int-to-long v7, v7

    add-long/2addr v2, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v2, v7

    .line 1141
    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v7

    .line 1142
    invoke-interface {v6, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v2

    add-long/2addr v7, v2

    move-wide/from16 v2, v18

    .line 1143
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_9d

    :cond_9b
    move-wide/from16 v2, v18

    :goto_9d
    add-int/lit8 v11, v11, 0x1

    move-wide v9, v2

    move/from16 v3, v17

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_2f

    :cond_a5
    move-wide v2, v9

    .line 1147
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-object v11, v0

    move-wide v15, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    return-object v0
.end method
