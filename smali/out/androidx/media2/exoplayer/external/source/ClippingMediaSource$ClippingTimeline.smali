.class final Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;
.super Landroidx/media2/exoplayer/external/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Timeline;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "startUs",
            "endUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ForwardingTimeline;-><init>(Landroidx/media2/exoplayer/external/Timeline;)V

    .line 327
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7b

    .line 330
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 331
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_23

    .line 332
    iget-wide p4, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    goto :goto_27

    :cond_23
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 333
    :goto_27
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_55

    .line 334
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long v0, p4, v5

    if-lez v0, :cond_3a

    .line 335
    iget-wide p4, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    :cond_3a
    cmp-long v0, p2, v3

    if-eqz v0, :cond_49

    .line 337
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_43

    goto :goto_49

    .line 338
    :cond_43
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_49
    :goto_49
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4e

    goto :goto_55

    .line 341
    :cond_4e
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 344
    :cond_55
    :goto_55
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 345
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_5f

    move-wide p2, v7

    goto :goto_61

    :cond_5f
    sub-long p2, p4, p2

    .line 346
    :goto_61
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 347
    iget-boolean p2, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    if-eqz p2, :cond_78

    cmp-long p2, p4, v7

    if-eqz p2, :cond_77

    iget-wide p2, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long v0, p2, v7

    if-eqz v0, :cond_78

    iget-wide p1, p1, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_78

    :cond_77
    const/4 v1, 0x1

    :cond_78
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    return-void

    .line 328
    :cond_7b
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;
    .registers 16
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

    .line 379
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/Timeline;->getPeriod(ILandroidx/media2/exoplayer/external/Timeline$Period;Z)Landroidx/media2/exoplayer/external/Timeline$Period;

    .line 380
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    .line 382
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    move-wide v8, v2

    goto :goto_1d

    :cond_1b
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 383
    :goto_1d
    iget-object v5, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Landroidx/media2/exoplayer/external/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media2/exoplayer/external/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;
    .registers 12
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

    .line 356
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;ZJ)Landroidx/media2/exoplayer/external/Timeline$Window;

    .line 358
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->positionInFirstPeriodUs:J

    .line 359
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->durationUs:J

    .line 360
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean p1, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->isDynamic:Z

    .line 361
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_48

    .line 362
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    .line 363
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long p1, p3, v0

    if-nez p1, :cond_37

    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    goto :goto_3f

    .line 364
    :cond_37
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_3f
    iput-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    .line 365
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->defaultPositionUs:J

    .line 367
    :cond_48
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4}, Landroidx/media2/exoplayer/external/C;->usToMs(J)J

    move-result-wide p3

    .line 368
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_59

    .line 369
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->presentationStartTimeMs:J

    .line 371
    :cond_59
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_64

    .line 372
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/Timeline$Window;->windowStartTimeMs:J

    :cond_64
    return-object p2
.end method
