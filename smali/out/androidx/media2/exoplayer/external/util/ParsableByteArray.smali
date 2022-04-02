.class public final Landroidx/media2/exoplayer/external/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 52
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    return-void
.end method

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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 62
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 73
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .registers 3

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public getPosition()I
    .registers 2

    .line 142
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .registers 2

    .line 125
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public readBytes(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitArray",
            "length"
        }
    .end annotation

    .line 184
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 185
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public readBytes([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-void
.end method

.method public readDouble()D
    .registers 3

    .line 446
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 5

    .line 325
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readInt24()I
    .registers 5

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 7

    .line 528
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 532
    :goto_a
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->isLinebreak(I)Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 535
    :cond_1b
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3d

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_3d

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_3d

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_3d

    add-int/2addr v1, v3

    .line 538
    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 540
    :cond_3d
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 541
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 542
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ne v0, v2, :cond_4e

    return-object v1

    .line 545
    :cond_4e
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5d

    add-int/lit8 v0, v0, 0x1

    .line 546
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    if-ne v0, v2, :cond_5d

    return-object v1

    .line 551
    :cond_5d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_6b

    add-int/lit8 v2, v2, 0x1

    .line 552
    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    :cond_6b
    return-object v1
.end method

.method public readLittleEndianInt()I
    .registers 5

    .line 335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .registers 10

    .line 359
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLittleEndianUnsignedInt()J
    .registers 10

    .line 315
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .registers 5

    .line 415
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 417
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLittleEndianUnsignedShort()I
    .registers 5

    .line 247
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .registers 10

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .registers 5

    .line 501
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 505
    :goto_a
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 508
    :cond_17
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v1

    .line 509
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 510
    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v2, :cond_2b

    add-int/lit8 v0, v0, 0x1

    .line 511
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    :cond_2b
    return-object v1
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 484
    :cond_5
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 485
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_17

    add-int/lit8 v0, p1, -0x1

    goto :goto_18

    :cond_17
    move v0, p1

    .line 488
    :goto_18
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public readShort()S
    .registers 5

    .line 254
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 456
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "charset"
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 468
    iget p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public readSynchSafeInt()I
    .registers 5

    .line 388
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 389
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 390
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 391
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public readUnsignedByte()I
    .registers 4

    .line 232
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .registers 5

    .line 373
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 375
    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return v0
.end method

.method public readUnsignedInt()J
    .registers 10

    .line 305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long/2addr v3, v7

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .registers 5

    .line 269
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .registers 5

    .line 401
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 403
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUnsignedLongToLong()J
    .registers 6

    .line 428
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    return-wide v0

    .line 430
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedShort()I
    .registers 5

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUtf8EncodedLong()J
    .registers 13

    .line 565
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_9
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_25

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_22

    if-ge v3, v4, :cond_1e

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_26

    :cond_1e
    if-ne v3, v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_5e

    :goto_28
    if-ge v5, v2, :cond_58

    .line 582
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3f

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 584
    :cond_3f
    new-instance v2, Ljava/lang/NumberFormatException;

    const/16 v3, 0x3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 588
    :cond_58
    iget v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-wide v0

    .line 579
    :cond_5e
    new-instance v2, Ljava/lang/NumberFormatException;

    const/16 v3, 0x37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :goto_77
    throw v2

    :goto_78
    goto :goto_77
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public reset(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

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

    .line 99
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

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

    .line 109
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    .line 110
    iput p2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-void
.end method

.method public setLimit(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    if-ltz p1, :cond_9

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 135
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

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

    if-ltz p1, :cond_8

    .line 161
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 162
    iput p1, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    return-void
.end method

.method public skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 173
    iget v0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method
