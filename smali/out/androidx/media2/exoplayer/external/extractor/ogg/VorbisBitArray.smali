.class final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private final byteLimit:I

.field private byteOffset:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->data:[B

    .line 47
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteLimit:I

    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .line 131
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 3

    .line 108
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .registers 3

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 65
    :goto_12
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public readBits(I)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    .line 76
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 77
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    :goto_1b
    if-ge v1, p1, :cond_2a

    .line 80
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_1b

    :cond_2a
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 84
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public skipBits(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    .line 94
    div-int/lit8 v0, p1, 0x8

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 96
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 98
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v2, v2, -0x8

    .line 99
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 101
    :cond_1a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->assertValidOffset()V

    return-void
.end method
