.class public final Landroidx/media2/exoplayer/external/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_1a

    sput-object v1, Landroidx/media2/exoplayer/external/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_3e

    sput-object v0, Landroidx/media2/exoplayer/external/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_62

    sput-object v0, Landroidx/media2/exoplayer/external/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static getDtsFrameSize([B)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_4a

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_21

    const/4 v1, 0x5

    .line 181
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_58

    .line 169
    :cond_21
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    goto :goto_42

    .line 176
    :cond_32
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    :goto_42
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    const/4 v0, 0x1

    goto :goto_5d

    .line 173
    :cond_4a
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_58
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    :goto_5d
    if-eqz v0, :cond_63

    mul-int/lit8 p0, p0, 0x10

    .line 185
    div-int/lit8 p0, p0, 0xe

    :cond_63
    return p0
.end method

.method private static getNormalizedFrameHeader([B)Landroidx/media2/exoplayer/external/util/ParsableBitArray;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameHeader"
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_d

    .line 191
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 194
    :cond_d
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 195
    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    .line 197
    :goto_19
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2b

    .line 198
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 199
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 200
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 203
    :cond_2b
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 204
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_51

    .line 206
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    .line 207
    :goto_3b
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_51

    const/4 v2, 0x2

    .line 208
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xe

    .line 209
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->putInt(II)V

    goto :goto_3b

    .line 212
    :cond_51
    invoke-virtual {v1, p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([B)V

    return-object v1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameHeader"
        }
    .end annotation

    const/4 v0, 0x0

    .line 217
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_b

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isSyncWord(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "word"
        }
    .end annotation

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_17

    const v0, -0x180fe80

    if-eq p0, v0, :cond_17

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_17

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 141
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_47

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_23

    add-int/lit8 v1, v0, 0x4

    .line 153
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_57

    :cond_23
    add-int/lit8 v1, v0, 0x5

    .line 149
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_44

    :cond_34
    add-int/lit8 v1, v0, 0x4

    .line 146
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_44
    and-int/lit8 p0, p0, 0x3c

    goto :goto_59

    :cond_47
    add-int/lit8 v1, v0, 0x5

    .line 143
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_57
    and-int/lit16 p0, p0, 0xfc

    :goto_59
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static parseDtsAudioSampleCount([B)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_19

    .line 125
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    goto :goto_30

    .line 121
    :cond_19
    aget-byte v0, p0, v3

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    goto :goto_26

    .line 118
    :cond_20
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    :goto_26
    and-int/lit8 p0, p0, 0x3c

    goto :goto_32

    .line 115
    :cond_29
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    :goto_30
    and-int/lit16 p0, p0, 0xfc

    :goto_32
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "trackId",
            "language",
            "drmInitData"
        }
    .end annotation

    .line 90
    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->getNormalizedFrameHeader([B)Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    move-result-object v0

    const/16 v1, 0x3c

    .line 91
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x6

    .line 92
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 93
    sget-object v2, Landroidx/media2/exoplayer/external/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v1, v2, v1

    const/4 v2, 0x4

    .line 94
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 95
    sget-object v3, Landroidx/media2/exoplayer/external/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v10, v3, v2

    const/4 v2, 0x5

    .line 96
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 97
    sget-object v3, Landroidx/media2/exoplayer/external/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_29

    const/4 v2, -0x1

    const/4 v7, -0x1

    goto :goto_2f

    .line 98
    :cond_29
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    move v7, v2

    :goto_2f
    const/16 v2, 0xa

    .line 99
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 100
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-lez v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    add-int v9, v1, v0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v5, "audio/vnd.dts"

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 101
    invoke-static/range {v4 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method
