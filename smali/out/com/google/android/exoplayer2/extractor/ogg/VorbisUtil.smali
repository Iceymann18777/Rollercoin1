.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# direct methods
.method public static iLog(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .registers 6

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 405
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method private static readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 344
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_b9

    const/16 v1, 0x10

    .line 348
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 350
    new-array v5, v4, [J

    .line 352
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v8, 0x1

    if-nez v7, :cond_47

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    :goto_26
    if-ge v2, v4, :cond_69

    if-eqz v9, :cond_3c

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_39

    .line 358
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    goto :goto_44

    .line 360
    :cond_39
    aput-wide v0, v5, v2

    goto :goto_44

    .line 363
    :cond_3c
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v2

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 367
    :cond_47
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v8

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v4, :cond_69

    sub-int v10, v4, v9

    .line 369
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_5a
    if-ge v11, v10, :cond_66

    if-ge v9, v4, :cond_66

    int-to-long v12, v6

    .line 371
    aput-wide v12, v5, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_69
    const/4 v2, 0x4

    .line 377
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_a2

    if-eq v6, v8, :cond_75

    if-ne v6, v9, :cond_9b

    :cond_75
    const/16 v9, 0x20

    .line 381
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 382
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 383
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 384
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    if-ne v6, v8, :cond_90

    if-eqz v3, :cond_94

    int-to-long v0, v4

    int-to-long v8, v3

    .line 388
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_94

    :cond_90
    int-to-long v0, v4

    int-to-long v8, v3

    mul-long v0, v0, v8

    :cond_94
    :goto_94
    int-to-long v8, v2

    mul-long v0, v0, v8

    long-to-int v1, v0

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 398
    :cond_9b
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    .line 379
    :cond_a2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_b9
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_d5

    :goto_d4
    throw v0

    :goto_d5
    goto :goto_d4
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_ad

    const/16 v5, 0x10

    .line 292
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_8c

    if-ne v6, v2, :cond_75

    const/4 v5, 0x5

    .line 306
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, -0x1

    .line 308
    new-array v9, v5, [I

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v5, :cond_32

    .line 310
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 311
    aget v11, v9, v10

    if-le v11, v6, :cond_2f

    .line 312
    aget v6, v9, v10

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 315
    new-array v10, v6, [I

    const/4 v11, 0x0

    :goto_37
    const/4 v12, 0x2

    if-ge v11, v6, :cond_59

    const/4 v13, 0x3

    .line 317
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 318
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_4b

    .line 320
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_4b
    const/4 v13, 0x0

    :goto_4c
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_56

    .line 323
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4c

    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    .line 326
    :cond_59
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 327
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_63
    if-ge v7, v5, :cond_a9

    .line 330
    aget v12, v9, v7

    .line 331
    aget v12, v10, v12

    add-int/2addr v8, v12

    :goto_6a
    if-ge v11, v8, :cond_72

    .line 333
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 338
    :cond_75
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_8c
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 296
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 297
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 299
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 300
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_a1
    if-ge v6, v5, :cond_a9

    .line 302
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a1

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_ad
    return-void
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_87

    const/16 v4, 0x10

    .line 220
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_2a

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 226
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_37

    .line 227
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    .line 232
    :goto_38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5b

    .line 233
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v6, :cond_5b

    add-int/lit8 v9, p0, -0x1

    .line 235
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 236
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5b
    const/4 v6, 0x2

    .line 241
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_7f

    if-le v4, v1, :cond_6d

    const/4 v6, 0x0

    :goto_65
    if-ge v6, p0, :cond_6d

    .line 246
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_6d
    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v4, :cond_7c

    .line 250
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 251
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 252
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 242
    :cond_7f
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .registers 9

    const/4 v0, 0x6

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 205
    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2a

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 208
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 209
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 210
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 211
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_69

    const/16 v5, 0x10

    .line 260
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_61

    const/16 v5, 0x18

    .line 264
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 265
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 266
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 268
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 269
    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v5, :cond_48

    const/4 v9, 0x3

    .line 272
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 273
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x5

    .line 274
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_40

    :cond_3f
    const/4 v10, 0x0

    :goto_40
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    .line 276
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_48
    const/4 v8, 0x0

    :goto_49
    if-ge v8, v5, :cond_5e

    const/4 v9, 0x0

    :goto_4c
    if-ge v9, v6, :cond_5b

    .line 280
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_58

    .line 281
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 262
    :cond_61
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 95
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v0, v2

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    add-int/2addr v3, v2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    long-to-int v2, v4

    .line 101
    new-array v2, v2, [Ljava/lang/String;

    add-int/lit8 v3, v3, 0x4

    :goto_1e
    int-to-long v6, v1

    cmp-long v8, v6, v4

    if-gez v8, :cond_3a

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    long-to-int v7, v6

    add-int/lit8 v3, v3, 0x4

    .line 106
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 107
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 109
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_4a

    add-int/lit8 v3, v3, 0x1

    .line 113
    new-instance p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0

    .line 110
    :cond_4a
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "framing bit expected to be set"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 69
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v2, v3

    .line 70
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/2addr v3, v1

    if-lez v3, :cond_40

    const/4 v14, 0x1

    goto :goto_41

    :cond_40
    const/4 v14, 0x0

    .line 74
    :goto_41
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-object v3, v0

    move v13, v2

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 175
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 179
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    const/4 p0, 0x0

    :goto_1c
    if-ge p0, v0, :cond_24

    .line 183
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1c

    :cond_24
    const/4 p0, 0x6

    .line 186
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2b
    if-ge v1, p0, :cond_40

    const/16 v0, 0x10

    .line 188
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    if-nez v0, :cond_38

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 189
    :cond_38
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_40
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 193
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 194
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)V

    .line 196
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object p0

    .line 197
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_54

    return-object p0

    .line 198
    :cond_54
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :goto_5c
    throw p0

    :goto_5d
    goto :goto_5c
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_26

    if-eqz p2, :cond_b

    return v1

    .line 133
    :cond_b
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too short header: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_4a

    if-eqz p2, :cond_2f

    return v1

    .line 141
    :cond_2f
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected header type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7d

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7d

    .line 147
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7d

    .line 148
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7d

    .line 149
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7d

    .line 150
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 p0, 0x1

    return p0

    :cond_7d
    :goto_7d
    if-eqz p2, :cond_80

    return v1

    .line 154
    :cond_80
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
