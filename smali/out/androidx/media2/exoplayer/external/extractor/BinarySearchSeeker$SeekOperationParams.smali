.class public Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekOperationParams"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .registers 15
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
            "seekTimeUs",
            "targetTimePosition",
            "floorTimePosition",
            "ceilingTimePosition",
            "floorBytePosition",
            "ceilingBytePosition",
            "approxBytesPerFrame"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 353
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 354
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 355
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 356
    iput-wide p9, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 357
    iput-wide p11, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 358
    iput-wide p13, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 360
    invoke-static/range {p3 .. p14}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 302
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static calculateNextSearchBytePosition(JJJJJJ)J
    .registers 19
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
            "targetTimePosition",
            "floorTimePosition",
            "ceilingTimePosition",
            "floorBytePosition",
            "ceilingBytePosition",
            "approxBytesPerFrame"
        }
    .end annotation

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_2e

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_f

    goto :goto_2e

    :cond_f
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    .line 338
    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    .line 341
    invoke-static/range {p0 .. p5}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2e
    :goto_2e
    return-wide p6
.end method

.method private getCeilingBytePosition()J
    .registers 3

    .line 382
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private getFloorBytePosition()J
    .registers 3

    .line 374
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private getNextSearchBytePosition()J
    .registers 3

    .line 411
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private getSeekTimeUs()J
    .registers 3

    .line 392
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private getTargetTimePosition()J
    .registers 3

    .line 387
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private updateNextSearchBytePosition()V
    .registers 13

    .line 415
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 416
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method private updateSeekCeiling(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ceilingTimePosition",
            "ceilingBytePosition"
        }
    .end annotation

    .line 404
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 405
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 406
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

.method private updateSeekFloor(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "floorTimePosition",
            "floorBytePosition"
        }
    .end annotation

    .line 397
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 398
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 399
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method
