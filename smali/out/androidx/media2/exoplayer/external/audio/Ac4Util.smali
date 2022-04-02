.class public final Landroidx/media2/exoplayer/external/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final SAMPLE_COUNT:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 77
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_a
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static getAc4SampleHeader(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "buffer"
        }
    .end annotation

    const/4 v0, 0x7

    .line 228
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset(I)V

    .line 229
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    .line 230
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 232
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 233
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 234
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 235
    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method public static parseAc4AnnexEFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "trackId",
            "language",
            "drmInitData"
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_15

    const p0, 0xbb80

    const v6, 0xbb80

    goto :goto_1b

    :cond_15
    const p0, 0xac44

    const v6, 0xac44

    :goto_1b
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v1, "audio/ac4"

    move-object v0, p1

    move-object v8, p3

    move-object v10, p2

    .line 109
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 219
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 220
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    new-instance p0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    move-result-object p0

    iget p0, p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return p0
.end method

.method public static parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/16 v0, 0x10

    .line 132
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 134
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_18

    const/16 v0, 0x18

    .line 137
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_19

    :cond_18
    const/4 v3, 0x4

    :goto_19
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_21

    add-int/lit8 v0, v0, 0x2

    :cond_21
    move v7, v0

    const/4 v0, 0x2

    .line 144
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 146
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->readVariableBits(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2f
    move v4, v1

    const/16 v1, 0xa

    .line 148
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 149
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 150
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_45

    .line 151
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 154
    :cond_45
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v5

    const v6, 0xbb80

    const v8, 0xac44

    if-eqz v5, :cond_55

    const v9, 0xbb80

    goto :goto_58

    :cond_55
    const v9, 0xac44

    .line 155
    :goto_58
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result p0

    const/4 v5, 0x0

    if-ne v9, v8, :cond_69

    const/16 v8, 0xd

    if-ne p0, v8, :cond_69

    .line 158
    sget-object v0, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget p0, v0, p0

    move v8, p0

    goto :goto_99

    :cond_69
    if-ne v9, v6, :cond_98

    .line 159
    sget-object v6, Landroidx/media2/exoplayer/external/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v8, v6

    if-ge p0, v8, :cond_98

    .line 160
    aget v5, v6, p0

    .line 161
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v8, 0x1

    if-eq v1, v8, :cond_8e

    const/16 v8, 0xb

    if-eq v1, v0, :cond_89

    if-eq v1, v3, :cond_8e

    if-eq v1, v2, :cond_82

    goto :goto_93

    :cond_82
    if-eq p0, v3, :cond_95

    if-eq p0, v6, :cond_95

    if-ne p0, v8, :cond_93

    goto :goto_95

    :cond_89
    if-eq p0, v6, :cond_95

    if-ne p0, v8, :cond_93

    goto :goto_95

    :cond_8e
    if-eq p0, v3, :cond_95

    if-ne p0, v6, :cond_93

    goto :goto_95

    :cond_93
    :goto_93
    move v8, v5

    goto :goto_99

    :cond_95
    :goto_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    :cond_98
    const/4 v8, 0x0

    .line 182
    :goto_99
    new-instance p0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    const/4 v5, 0x2

    const/4 v0, 0x0

    move-object v3, p0

    move v6, v9

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroidx/media2/exoplayer/external/audio/Ac4Util$1;)V

    return-object p0
.end method

.method public static parseAc4SyncframeSize([BI)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "syncword"
        }
    .end annotation

    .line 193
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    .line 197
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_2e

    .line 200
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x4

    :goto_2f
    const p0, 0xac41

    if-ne p1, p0, :cond_36

    add-int/lit8 v1, v1, 0x2

    :cond_36
    add-int/2addr v0, v1

    return v0
.end method

.method private static readVariableBits(Landroidx/media2/exoplayer/external/util/ParsableBitArray;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bitsPerRead"
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_1
.end method
