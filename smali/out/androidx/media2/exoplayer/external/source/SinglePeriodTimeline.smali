.class public final Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;
.super Landroidx/media2/exoplayer/external/Timeline;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final tag:Ljava/lang/Object;

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZLjava/lang/Object;)V
    .registers 16
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
            "presentationStartTimeMs",
            "windowStartTimeMs",
            "periodDurationUs",
            "windowDurationUs",
            "windowPositionInPeriodUs",
            "windowDefaultStartPositionUs",
            "isSeekable",
            "isDynamic",
            "tag"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/Timeline;-><init>()V

    .line 138
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 139
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 140
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 141
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 142
    iput-wide p9, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 143
    iput-wide p11, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 144
    iput-boolean p13, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isSeekable:Z

    .line 145
    iput-boolean p14, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    .line 146
    iput-object p15, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJZZLjava/lang/Object;)V
    .registers 28
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
            "periodDurationUs",
            "windowDurationUs",
            "windowPositionInPeriodUs",
            "windowDefaultStartPositionUs",
            "isSeekable",
            "isDynamic",
            "tag"
        }
    .end annotation

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 99
    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJJJZZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZLjava/lang/Object;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "durationUs",
            "isSeekable",
            "isDynamic",
            "tag"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 67
    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 199
    sget-object v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodIndex",
            "period",
            "setIds"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_a

    .line 193
    sget-object p1, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 194
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/exoplayer/external/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodIndex"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    .line 205
    sget-object p1, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "window",
            "setTag",
            "defaultPositionProjectionUs"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 157
    invoke-static {v3, v1, v2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_e

    .line 158
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->tag:Ljava/lang/Object;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move-object v3, v1

    .line 159
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 160
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_30

    const-wide/16 v7, 0x0

    cmp-long v4, p4, v7

    if-eqz v4, :cond_30

    .line 161
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_29

    :goto_27
    move-wide v10, v5

    goto :goto_31

    :cond_29
    add-long v1, v1, p4

    cmp-long v4, v1, v7

    if-lez v4, :cond_30

    goto :goto_27

    :cond_30
    move-wide v10, v1

    .line 172
    :goto_31
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isSeekable:Z

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->isDynamic:Z

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowDurationUs:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Landroidx/media2/exoplayer/external/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
