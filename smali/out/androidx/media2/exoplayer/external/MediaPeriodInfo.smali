.class final Landroidx/media2/exoplayer/external/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "startPositionUs",
            "contentPositionUs",
            "endPositionUs",
            "durationUs",
            "isLastInTimelinePeriod",
            "isFinal"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 76
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    .line 77
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    .line 78
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    .line 79
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    .line 80
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 81
    iput-boolean p11, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    return-void
.end method


# virtual methods
.method public copyWithContentPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentPositionUs"
        }
    .end annotation

    move-object v0, p0

    .line 106
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_9

    move-object v1, v0

    goto :goto_1d

    .line 108
    :cond_9
    new-instance v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v14}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    :goto_1d
    return-object v1
.end method

.method public copyWithStartPositionUs(J)Landroidx/media2/exoplayer/external/MediaPeriodInfo;
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPositionUs"
        }
    .end annotation

    move-object v0, p0

    .line 89
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_9

    move-object v1, v0

    goto :goto_1d

    .line 91
    :cond_9
    new-instance v1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v14, v0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v14}, Landroidx/media2/exoplayer/external/MediaPeriodInfo;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;JJJJZZ)V

    :goto_1d
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4d

    .line 126
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;

    .line 127
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4b

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4b

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4b

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4b

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v2, v3, :cond_4b

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 133
    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->id:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 140
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->startPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 141
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->contentPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 142
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->endPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 143
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->durationUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 144
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v1, v0

    return v1
.end method
