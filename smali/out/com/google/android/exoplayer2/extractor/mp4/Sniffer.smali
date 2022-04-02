.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
    .end array-data
.end method

.method private static isCompatibleBrand(I)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_9

    return v1

    .line 193
    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_18

    aget v5, v0, v4

    if-ne v5, p0, :cond_15

    return v1

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    return v3
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 73
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 92
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_14

    cmp-long v7, v1, v3

    if-lez v7, :cond_13

    goto :goto_14

    :cond_13
    move-wide v3, v1

    :cond_14
    :goto_14
    long-to-int v4, v3

    .line 96
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1f
    if-ge v8, v4, :cond_e8

    const/16 v11, 0x8

    .line 103
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 104
    iget-object v12, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v12, v7, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 106
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const-wide/16 v15, 0x1

    const/16 v10, 0x10

    cmp-long v17, v12, v15

    if-nez v17, :cond_48

    .line 110
    iget-object v12, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v12, v11, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 112
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v12

    goto :goto_5f

    :cond_48
    const-wide/16 v15, 0x0

    cmp-long v10, v12, v15

    if-nez v10, :cond_5d

    .line 115
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v15

    cmp-long v10, v15, v5

    if-eqz v10, :cond_5d

    .line 117
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v12

    sub-long/2addr v15, v12

    int-to-long v12, v11

    add-long/2addr v12, v15

    :cond_5d
    const/16 v10, 0x8

    :goto_5f
    cmp-long v15, v1, v5

    if-eqz v15, :cond_6a

    int-to-long v5, v8

    add-long/2addr v5, v12

    cmp-long v17, v5, v1

    if-lez v17, :cond_6a

    return v7

    :cond_6a
    int-to-long v5, v10

    cmp-long v17, v12, v5

    if-gez v17, :cond_70

    return v7

    :cond_70
    add-int/2addr v8, v10

    const v10, 0x6d6f6f76

    if-ne v14, v10, :cond_86

    long-to-int v5, v12

    add-int/2addr v4, v5

    const-wide/16 v15, -0x1

    cmp-long v5, v1, v15

    if-eqz v5, :cond_84

    int-to-long v5, v4

    cmp-long v10, v5, v1

    if-lez v10, :cond_84

    long-to-int v4, v1

    :cond_84
    move-wide v5, v15

    goto :goto_1f

    :cond_86
    const-wide/16 v15, -0x1

    const v10, 0x6d6f6f66

    if-eq v14, v10, :cond_e4

    const v10, 0x6d766578

    if-ne v14, v10, :cond_93

    goto :goto_e4

    :cond_93
    move-wide/from16 v17, v1

    int-to-long v1, v8

    add-long/2addr v1, v12

    sub-long/2addr v1, v5

    move/from16 v19, v8

    int-to-long v7, v4

    cmp-long v20, v1, v7

    if-ltz v20, :cond_a0

    goto :goto_e8

    :cond_a0
    sub-long/2addr v12, v5

    long-to-int v1, v12

    add-int v8, v19, v1

    const v2, 0x66747970

    if-ne v14, v2, :cond_d8

    if-ge v1, v11, :cond_ad

    const/4 v2, 0x0

    return v2

    :cond_ad
    const/4 v2, 0x0

    .line 161
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 162
    iget-object v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v5, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 163
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_b9
    if-ge v2, v1, :cond_d2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c3

    const/4 v6, 0x4

    .line 167
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_cf

    .line 168
    :cond_c3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v6

    if-eqz v6, :cond_cf

    const/4 v9, 0x1

    goto :goto_d2

    :cond_cf
    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    :cond_d2
    :goto_d2
    if-nez v9, :cond_d6

    const/4 v2, 0x0

    return v2

    :cond_d6
    const/4 v2, 0x0

    goto :goto_de

    :cond_d8
    const/4 v2, 0x0

    if-eqz v1, :cond_de

    .line 179
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_de
    :goto_de
    move-wide v5, v15

    move-wide/from16 v1, v17

    const/4 v7, 0x0

    goto/16 :goto_1f

    :cond_e4
    :goto_e4
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_eb

    :cond_e8
    :goto_e8
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_eb
    if-eqz v9, :cond_f3

    move/from16 v1, p1

    if-ne v1, v0, :cond_f3

    const/4 v7, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v7, 0x0

    :goto_f4
    return v7
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
