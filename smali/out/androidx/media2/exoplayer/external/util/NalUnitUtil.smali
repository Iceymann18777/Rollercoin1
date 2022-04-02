.class public final Landroidx/media2/exoplayer/external/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;,
        Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final NAL_START_CODE:[B

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 103
    fill-array-data v0, :array_20

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 108
    fill-array-data v0, :array_26

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 138
    sput-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefixFlags"
        }
    .end annotation

    const/4 v0, 0x0

    .line 495
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 496
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 497
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    .line 201
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    .line 203
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 206
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 208
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    .line 221
    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "startOffset",
            "endOffset",
            "prefixFlags"
        }
    .end annotation

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 435
    :goto_9
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    :cond_f
    const/4 v3, 0x2

    if-eqz p3, :cond_40

    .line 441
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_1c

    .line 442
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_1c
    if-le v0, v2, :cond_2b

    .line 444
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_2b

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_2b

    .line 445
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_2b
    if-le v0, v3, :cond_40

    .line 447
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_40

    aget-byte v4, p0, p1

    if-nez v4, :cond_40

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_40

    .line 449
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_40
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_43
    if-ge p1, v4, :cond_67

    .line 458
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_4c

    goto :goto_64

    :cond_4c
    add-int/lit8 v5, p1, -0x2

    .line 461
    aget-byte v6, p0, v5

    if-nez v6, :cond_62

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_62

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_62

    if-eqz p3, :cond_61

    .line 463
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->clearPrefixFlags([Z)V

    :cond_61
    return v5

    :cond_62
    add-int/lit8 p1, p1, -0x2

    :goto_64
    add-int/lit8 p1, p1, 0x3

    goto :goto_43

    :cond_67
    if-eqz p3, :cond_bb

    if-le v0, v3, :cond_7e

    add-int/lit8 p1, p2, -0x3

    .line 476
    aget-byte p1, p0, p1

    if-nez p1, :cond_7c

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_7c

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_7c

    goto :goto_97

    :cond_7c
    const/4 p1, 0x0

    goto :goto_98

    :cond_7e
    if-ne v0, v3, :cond_8f

    .line 477
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_7c

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_7c

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_7c

    goto :goto_97

    .line 478
    :cond_8f
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_7c

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_7c

    :goto_97
    const/4 p1, 0x1

    :goto_98
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a7

    add-int/lit8 p1, p2, -0x2

    .line 480
    aget-byte p1, p0, p1

    if-nez p1, :cond_b1

    aget-byte p1, p0, v4

    if-nez p1, :cond_b1

    goto :goto_af

    .line 481
    :cond_a7
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b1

    aget-byte p1, p0, v4

    if-nez p1, :cond_b1

    :goto_af
    const/4 p1, 0x1

    goto :goto_b2

    :cond_b1
    const/4 p1, 0x0

    :goto_b2
    aput-boolean p1, p3, v2

    .line 483
    aget-byte p0, p0, v4

    if-nez p0, :cond_b9

    const/4 v1, 0x1

    :cond_b9
    aput-boolean v1, p3, v3

    :cond_bb
    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "limit"
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 502
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x3

    .line 260
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x3

    .line 248
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "nalUnitHeaderFirstByte"
        }
    .end annotation

    const-string v0, "video/avc"

    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1f

    :cond_e
    const-string v0, "video/hevc"

    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nalData",
            "nalOffset",
            "nalLimit"
        }
    .end annotation

    .line 401
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 p0, 0x8

    .line 402
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 403
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 404
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 405
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 406
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 407
    new-instance v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nalData",
            "nalOffset",
            "nalLimit"
        }
    .end annotation

    .line 273
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 274
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 276
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 277
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 278
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x64

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_4e

    const/16 v10, 0xf4

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x53

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x56

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x76

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x80

    if-eq v3, v10, :cond_4e

    const/16 v10, 0x8a

    if-ne v3, v10, :cond_4b

    goto :goto_4e

    :cond_4b
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_87

    .line 285
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_59

    .line 287
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_5a

    :cond_59
    const/4 v11, 0x0

    .line 289
    :goto_5a
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 290
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 291
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 292
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_87

    if-eq v10, v2, :cond_6e

    const/16 v12, 0x8

    goto :goto_70

    :cond_6e
    const/16 v12, 0xc

    :goto_70
    const/4 v13, 0x0

    :goto_71
    if-ge v13, v12, :cond_87

    .line 296
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_84

    const/4 v14, 0x6

    if-ge v13, v14, :cond_7f

    const/16 v14, 0x10

    goto :goto_81

    :cond_7f
    const/16 v14, 0x40

    .line 298
    :goto_81
    invoke-static {v0, v14}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;I)V

    :cond_84
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 304
    :cond_87
    :goto_87
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    .line 305
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    if-nez v13, :cond_9a

    .line 310
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    goto :goto_bb

    :cond_9a
    if-ne v13, v9, :cond_ba

    .line 312
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 313
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 314
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 315
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    int-to-long v1, v15

    const/4 v15, 0x0

    :goto_ac
    int-to-long v7, v15

    cmp-long v17, v7, v1

    if-gez v17, :cond_b7

    .line 317
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_ac

    :cond_b7
    move v15, v14

    const/4 v14, 0x0

    goto :goto_bc

    :cond_ba
    const/4 v14, 0x0

    :goto_bb
    const/4 v15, 0x0

    .line 320
    :goto_bc
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 321
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 323
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/2addr v1, v9

    .line 324
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v9

    .line 325
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    rsub-int/lit8 v7, v16, 0x2

    mul-int v7, v7, v2

    if-nez v16, :cond_d9

    .line 328
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    .line 331
    :cond_d9
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->skipBit()V

    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v7, v7, 0x10

    .line 334
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 336
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 337
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 338
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 339
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    if-nez v10, :cond_fd

    rsub-int/lit8 v10, v16, 0x2

    goto :goto_112

    :cond_fd
    const/16 v19, 0x2

    const/4 v9, 0x3

    if-ne v10, v9, :cond_106

    const/4 v9, 0x1

    const/16 v20, 0x1

    goto :goto_109

    :cond_106
    const/4 v9, 0x1

    const/16 v20, 0x2

    :goto_109
    if-ne v10, v9, :cond_10c

    const/4 v9, 0x2

    :cond_10c
    rsub-int/lit8 v10, v16, 0x2

    mul-int v10, v10, v9

    move/from16 v9, v20

    :goto_112
    add-int/2addr v2, v8

    mul-int v2, v2, v9

    sub-int/2addr v1, v2

    add-int v17, v17, v18

    mul-int v17, v17, v10

    sub-int v7, v7, v17

    :cond_11c
    move v8, v7

    move v7, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 356
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 358
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_16a

    const/16 v2, 0x8

    .line 360
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v9, 0xff

    if-ne v2, v9, :cond_149

    const/16 v9, 0x10

    .line 362
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 363
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v2, :cond_147

    if-eqz v0, :cond_147

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_147
    move v9, v1

    goto :goto_16c

    .line 367
    :cond_149
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v9, v0

    if-ge v2, v9, :cond_152

    .line 368
    aget v0, v0, v2

    move v9, v0

    goto :goto_16c

    :cond_152
    const/16 v0, 0x2e

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16a
    const/high16 v9, 0x3f800000    # 1.0f

    .line 375
    :goto_16c
    new-instance v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    move-object v2, v0

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v15}, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v0
.end method

.method private static skipScalingList(Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitArray",
            "size"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_1a

    if-eqz v0, :cond_13

    .line 514
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 515
    rem-int/lit16 v0, v0, 0x100

    :cond_13
    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 10
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

    .line 152
    sget-object v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_2c

    .line 156
    :try_start_8
    invoke-static {p0, v2, p1}, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 158
    sget-object v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v4, v4

    if-gt v4, v3, :cond_20

    .line 160
    sget-object v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v5, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 163
    :cond_20
    sget-object v4, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :catchall_2a
    move-exception p0

    goto :goto_50

    :cond_2c
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_30
    if-ge v2, v3, :cond_49

    .line 172
    sget-object v6, Landroidx/media2/exoplayer/external/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 174
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 176
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 177
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_49
    sub-int v1, p1, v4

    .line 182
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    monitor-exit v0

    return p1

    .line 184
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_2a

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method
