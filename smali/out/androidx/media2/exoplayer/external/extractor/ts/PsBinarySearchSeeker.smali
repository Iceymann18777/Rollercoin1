.class final Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;
.super Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.source "PsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJ)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrTimestampAdjuster",
            "streamDurationUs",
            "inputLength"
        }
    .end annotation

    .line 48
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$1;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method

.method static synthetic access$100([BI)I
    .registers 2

    .line 40
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I

    move-result p0

    return p0
.end method

.method private static peekIntAtPosition([BI)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "position"
        }
    .end annotation

    .line 211
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
