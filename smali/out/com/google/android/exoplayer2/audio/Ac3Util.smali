.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 124
    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v0, [I

    .line 132
    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 136
    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 140
    fill-array-data v1, :array_66

    sput-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v0, [I

    .line 145
    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .registers 6

    .line 517
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 518
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_b
    if-gt v2, v1, :cond_21

    add-int/lit8 v3, v2, 0x4

    .line 521
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-ne v3, v4, :cond_1e

    sub-int/2addr v2, v0

    return v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .registers 1

    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .registers 6

    .line 565
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_2e

    .line 566
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_2e

    if-ltz p1, :cond_2e

    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_11

    goto :goto_2e

    .line 571
    :cond_11
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    .line 573
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 575
    :cond_20
    sget-object p1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 17

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 161
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v1, v0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 163
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    move v7, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    move-object v2, p1

    move-object/from16 v10, p3

    move-object v12, p2

    .line 167
    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .registers 19

    move-object/from16 v0, p0

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 245
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 246
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ne v3, v5, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 247
    :goto_18
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_213

    .line 258
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 259
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_35

    if-eq v3, v6, :cond_33

    if-eq v3, v10, :cond_31

    goto :goto_36

    :cond_31
    const/4 v1, 0x2

    goto :goto_36

    :cond_33
    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    .line 273
    :goto_36
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v3, 0xb

    .line 274
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    .line 275
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-ne v11, v9, :cond_54

    .line 280
    sget-object v12, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    aget v12, v12, v13

    move v14, v12

    const/4 v12, 0x3

    const/4 v13, 0x6

    goto :goto_60

    .line 283
    :cond_54
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 284
    sget-object v13, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v13, v13, v12

    .line 285
    sget-object v14, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v14, v14, v11

    :goto_60
    mul-int/lit16 v15, v13, 0x100

    .line 288
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    .line 290
    sget-object v17, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v17, v17, v4

    add-int v17, v17, v16

    const/16 v9, 0xa

    .line 291
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 293
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_7e
    if-nez v4, :cond_8c

    .line 296
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 298
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_8c
    if-ne v1, v6, :cond_97

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 302
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 304
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/4 v9, 0x4

    if-eqz v5, :cond_1b0

    if-le v4, v10, :cond_a3

    .line 306
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_a3
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_ac

    if-le v4, v10, :cond_ac

    .line 309
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_ac
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_b3

    .line 312
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_b3
    if-eqz v16, :cond_be

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_be
    if-nez v1, :cond_1b0

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 319
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_c9
    if-nez v4, :cond_d4

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 322
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 324
    :cond_d4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 325
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 327
    :cond_dd
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-ne v5, v6, :cond_e8

    .line 329
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17d

    :cond_e8
    if-ne v5, v10, :cond_f1

    const/16 v5, 0xc

    .line 331
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_17d

    :cond_f1
    const/4 v6, 0x3

    if-ne v5, v6, :cond_17d

    .line 333
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_158

    .line 335
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 337
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 339
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_113

    .line 340
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 343
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 345
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_125

    .line 346
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 348
    :cond_125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 349
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 351
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_137

    .line 352
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 354
    :cond_137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_140

    .line 355
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 357
    :cond_140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_158

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 359
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 361
    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_158

    .line 362
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 366
    :cond_158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_174

    .line 367
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_174

    const/4 v6, 0x7

    .line 369
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_174

    .line 371
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_174
    add-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0x8

    .line 375
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    :cond_17d
    :goto_17d
    if-ge v4, v10, :cond_195

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    const/16 v6, 0xe

    if-eqz v5, :cond_18a

    .line 380
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_18a
    if-nez v4, :cond_195

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_195

    .line 384
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 388
    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1b0

    if-nez v12, :cond_1a1

    .line 390
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1b0

    :cond_1a1
    const/4 v5, 0x0

    :goto_1a2
    if-ge v5, v13, :cond_1b0

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1ad

    .line 394
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1ad
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a2

    .line 401
    :cond_1b0
    :goto_1b0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 402
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    if-ne v4, v10, :cond_1be

    .line 404
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1be
    if-lt v4, v8, :cond_1c3

    .line 407
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 409
    :cond_1c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 410
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1cc
    if-nez v4, :cond_1d7

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 413
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1d7
    const/4 v2, 0x3

    if-ge v11, v2, :cond_1df

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto :goto_1df

    :cond_1de
    const/4 v2, 0x3

    :cond_1df
    :goto_1df
    if-nez v1, :cond_1e6

    if-eq v12, v2, :cond_1e6

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_1e6
    if-ne v1, v10, :cond_1f3

    if-eq v12, v2, :cond_1f0

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 424
    :cond_1f0
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 427
    :cond_1f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_209

    .line 428
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_209

    .line 429
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_209

    const-string v0, "audio/eac3-joc"

    goto :goto_20b

    :cond_209
    const-string v0, "audio/eac3"

    :goto_20b
    move-object v7, v0

    move v8, v1

    move v11, v3

    move v10, v14

    move v12, v15

    move/from16 v9, v17

    goto :goto_266

    :cond_213
    const/16 v2, 0x20

    .line 435
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 436
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_221

    const/4 v4, 0x0

    goto :goto_223

    :cond_221
    const-string v4, "audio/ac3"

    .line 442
    :goto_223
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 443
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v5

    .line 444
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 445
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_23c

    const/4 v6, 0x1

    if-eq v3, v6, :cond_23c

    .line 447
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_23c
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_243

    .line 450
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_243
    if-ne v3, v10, :cond_248

    .line 453
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 455
    :cond_248
    sget-object v6, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v7, v6

    if-ge v2, v7, :cond_251

    aget v2, v6, v2

    move v14, v2

    goto :goto_252

    :cond_251
    const/4 v14, -0x1

    :goto_252
    const/16 v15, 0x600

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 459
    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v3

    add-int v17, v2, v0

    move-object v7, v4

    move v11, v5

    move v10, v14

    move/from16 v9, v17

    const/4 v8, -0x1

    const/16 v12, 0x600

    .line 461
    :goto_266
    new-instance v0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v0
.end method

.method public static parseAc3SyncframeSize([B)I
    .registers 6

    .line 472
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    .line 475
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-ne v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_27

    const/4 v0, 0x2

    .line 477
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 478
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_27
    const/4 v0, 0x4

    .line 481
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 482
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 483
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 19

    const/4 v0, 0x2

    move-object v1, p0

    .line 193
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 197
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v10, v3, v2

    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 199
    sget-object v3, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    add-int/lit8 v3, v3, 0x1

    .line 205
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_36

    .line 208
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_36

    add-int/lit8 v3, v3, 0x2

    :cond_36
    move v9, v3

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_48

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    const-string v0, "audio/eac3-joc"

    goto :goto_4a

    :cond_48
    const-string v0, "audio/eac3"

    :goto_4a
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 222
    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 503
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    goto :goto_24

    .line 504
    :cond_12
    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    .line 505
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    aget v1, v0, p0

    :goto_24
    mul-int/lit16 v1, v1, 0x100

    return v1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .registers 5

    .line 560
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/16 v1, 0x28

    .line 561
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_20

    const/16 p1, 0x9

    goto :goto_22

    :cond_20
    const/16 p1, 0x8

    :goto_22
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .registers 6

    const/4 v0, 0x4

    .line 540
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_38

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_38

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_38

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_1f

    goto :goto_38

    .line 546
    :cond_1f
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_28

    const/4 v2, 0x1

    :cond_28
    const/16 v3, 0x28

    if-eqz v2, :cond_2f

    const/16 v2, 0x9

    goto :goto_31

    :cond_2f
    const/16 v2, 0x8

    .line 547
    :goto_31
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    shl-int p0, v3, p0

    return p0

    :cond_38
    :goto_38
    return v2
.end method
