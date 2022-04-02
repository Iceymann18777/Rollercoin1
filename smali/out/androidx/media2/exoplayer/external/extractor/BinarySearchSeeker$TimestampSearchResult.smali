.class public final Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimestampSearchResult"
.end annotation


# static fields
.field public static final NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;


# instance fields
.field private final bytePositionToUpdate:J

.field private final timestampToUpdate:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 451
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    sput-object v6, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "timestampToUpdate",
            "bytePositionToUpdate"
        }
    .end annotation

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    .line 475
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    .line 476
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-void
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)I
    .registers 1

    .line 430
    iget p0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I

    return p0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 430
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;)J
    .registers 3

    .line 430
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J

    return-wide v0
.end method

.method public static overestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCeilingTimestamp",
            "newCeilingBytePosition"
        }
    .end annotation

    .line 486
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static targetFoundResult(J)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultBytePosition"
        }
    .end annotation

    .line 510
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static underestimatedResult(JJ)Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newFloorTimestamp",
            "newCeilingBytePosition"
        }
    .end annotation

    .line 497
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    return-object v6
.end method
