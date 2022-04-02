.class public final Landroidx/media2/exoplayer/external/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 48
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "limit"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    .line 59
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .line 312
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_10

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

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
.method public bitsLeft()I
    .registers 3

    .line 99
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .registers 2

    .line 236
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 239
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 240
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 241
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public getPosition()I
    .registers 3

    .line 106
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public putInt(II)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "numBits"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p2, v1, :cond_9

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 287
    :cond_9
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 288
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v1

    const v5, 0xff00

    shr-int v3, v5, v3

    shl-int v5, v0, v4

    sub-int/2addr v5, v0

    or-int/2addr v3, v5

    .line 290
    iget-object v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v7, v5, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    sub-int v1, p2, v1

    ushr-int v3, p1, v1

    .line 292
    aget-byte v7, v5, v6

    shl-int/2addr v3, v4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/2addr v6, v0

    :goto_37
    if-le v1, v2, :cond_48

    .line 297
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v1, -0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v1, v1, -0x8

    move v6, v4

    goto :goto_37

    :cond_48
    rsub-int/lit8 v2, v1, 0x8

    .line 301
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    aget-byte v4, v3, v6

    shl-int v5, v0, v2

    sub-int/2addr v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 304
    aget-byte v0, v3, v6

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    .line 306
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 307
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBit()Z
    .registers 4

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 164
    :goto_12
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBit()V

    return v0
.end method

.method public readBits(I)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 179
    :cond_4
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x0

    .line 180
    :goto_a
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_24

    add-int/lit8 v2, v2, -0x8

    .line 181
    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 182
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_a

    .line 184
    :cond_24
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_3e

    .line 187
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 188
    iput v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 190
    :cond_3e
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return p1
.end method

.method public readBits([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "numBits"
        }
    .end annotation

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_3
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_27

    .line 207
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v3, v4

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 208
    aget-byte v4, p1, p2

    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_27
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_2c

    return-void

    .line 216
    :cond_2c
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 217
    iget p3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_4f

    .line 219
    aget-byte v3, p1, v0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 220
    iput p3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 222
    :cond_4f
    iget p3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 223
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 224
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_72

    const/4 p1, 0x0

    .line 226
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v4, v4, 0x1

    .line 227
    iput v4, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 229
    :cond_72
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public reset(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parsableByteArray"
        }
    .end annotation

    .line 78
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    .line 79
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public reset([B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 68
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    return-void
.end method

.method public reset([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "limit"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 91
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 92
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public setPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 125
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 126
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 127
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBit()V
    .registers 3

    .line 134
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 136
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 138
    :cond_13
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
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

    .line 147
    div-int/lit8 v0, p1, 0x8

    .line 148
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    .line 149
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 151
    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v2, v2, -0x8

    .line 152
    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitOffset:I

    .line 154
    :cond_1a
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
