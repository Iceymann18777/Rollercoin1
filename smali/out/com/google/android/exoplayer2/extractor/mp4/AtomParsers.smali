.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OpusHead"

    .line 81
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    .line 1395
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1396
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1397
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1398
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 1399
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .registers 7

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_25

    .line 1205
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    .line 1207
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x65736473

    if-ne v2, v3, :cond_23

    return v0

    :cond_23
    add-int/2addr v0, v1

    goto :goto_4

    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .registers 2

    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x4

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 1030
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_20

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1035
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_24

    .line 1037
    :cond_20
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    :goto_24
    const/16 v6, 0x10

    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_46

    if-ne v5, v11, :cond_2d

    goto :goto_46

    :cond_2d
    if-ne v5, v12, :cond_45

    .line 1052
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v6, 0x14

    .line 1059
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_58

    :cond_45
    return-void

    .line 1044
    :cond_46
    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1045
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    if-ne v5, v11, :cond_56

    .line 1049
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_56
    move v5, v4

    move v4, v7

    .line 1065
    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    const v7, 0x656e6361

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_8d

    .line 1067
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_8a

    .line 1070
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_78

    move-object/from16 v3, v16

    goto :goto_82

    .line 1071
    :cond_78
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 1072
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 1073
    :goto_82
    iget-object v9, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v7, v9, p9

    .line 1075
    :cond_8a
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_8d
    move-object v10, v3

    const v3, 0x61632d33

    const v9, 0x616c6163

    const-string v7, "audio/raw"

    if-ne v8, v3, :cond_9c

    const-string v3, "audio/ac3"

    goto/16 :goto_119

    :cond_9c
    const v3, 0x65632d33

    if-ne v8, v3, :cond_a5

    const-string v3, "audio/eac3"

    goto/16 :goto_119

    :cond_a5
    const v3, 0x61632d34

    if-ne v8, v3, :cond_ae

    const-string v3, "audio/ac4"

    goto/16 :goto_119

    :cond_ae
    const v3, 0x64747363

    if-ne v8, v3, :cond_b7

    const-string v3, "audio/vnd.dts"

    goto/16 :goto_119

    :cond_b7
    const v3, 0x64747368

    if-eq v8, v3, :cond_117

    const v3, 0x6474736c

    if-ne v8, v3, :cond_c2

    goto :goto_117

    :cond_c2
    const v3, 0x64747365

    if-ne v8, v3, :cond_ca

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_119

    :cond_ca
    const v3, 0x73616d72

    if-ne v8, v3, :cond_d2

    const-string v3, "audio/3gpp"

    goto :goto_119

    :cond_d2
    const v3, 0x73617762

    if-ne v8, v3, :cond_da

    const-string v3, "audio/amr-wb"

    goto :goto_119

    :cond_da
    const v3, 0x6c70636d

    if-eq v8, v3, :cond_115

    const v3, 0x736f7774

    if-ne v8, v3, :cond_e5

    goto :goto_115

    :cond_e5
    const v3, 0x2e6d7033

    if-ne v8, v3, :cond_ed

    const-string v3, "audio/mpeg"

    goto :goto_119

    :cond_ed
    if-ne v8, v9, :cond_f2

    const-string v3, "audio/alac"

    goto :goto_119

    :cond_f2
    const v3, 0x616c6177

    if-ne v8, v3, :cond_fa

    const-string v3, "audio/g711-alaw"

    goto :goto_119

    :cond_fa
    const v3, 0x756c6177

    if-ne v8, v3, :cond_102

    const-string v3, "audio/g711-mlaw"

    goto :goto_119

    :cond_102
    const v3, 0x4f707573

    if-ne v8, v3, :cond_10a

    const-string v3, "audio/opus"

    goto :goto_119

    :cond_10a
    const v3, 0x664c6143

    if-ne v8, v3, :cond_112

    const-string v3, "audio/flac"

    goto :goto_119

    :cond_112
    move-object/from16 v3, v16

    goto :goto_119

    :cond_115
    :goto_115
    move-object v3, v7

    goto :goto_119

    :cond_117
    :goto_117
    const-string v3, "audio/vnd.dts.hd"

    :goto_119
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v16

    :goto_120
    sub-int v3, v6, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_2b8

    .line 1118
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    if-lez v5, :cond_130

    const/4 v3, 0x1

    goto :goto_131

    :cond_130
    const/4 v3, 0x0

    :goto_131
    const-string v9, "childAtomSize should be positive"

    .line 1120
    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v9, 0x65736473

    if-eq v3, v9, :cond_263

    if-eqz p6, :cond_148

    const v11, 0x77617665

    if-ne v3, v11, :cond_148

    goto/16 :goto_263

    :cond_148
    const v4, 0x64616333

    if-ne v3, v4, :cond_16d

    add-int/lit8 v3, v6, 0x8

    .line 1140
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1141
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_15c
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x2

    move v7, v6

    :goto_168
    const v6, 0x616c6163

    goto/16 :goto_260

    :cond_16d
    const v4, 0x64656333

    if-ne v3, v4, :cond_182

    add-int/lit8 v3, v6, 0x8

    .line 1144
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1145
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_15c

    :cond_182
    const v4, 0x64616334

    if-ne v3, v4, :cond_197

    add-int/lit8 v3, v6, 0x8

    .line 1148
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1150
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_15c

    :cond_197
    const v4, 0x64647473

    if-ne v3, v4, :cond_1d5

    .line 1152
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v5

    move-object v5, v9

    move v9, v6

    move v6, v11

    move-object v11, v7

    move/from16 v7, v21

    move-object/from16 v25, v8

    move/from16 v8, v17

    move/from16 v26, v9

    move/from16 v9, v18

    move-object/from16 v21, v10

    move-object/from16 v10, v22

    move-object/from16 v27, v11

    const/16 v20, 0x1

    move-object/from16 v11, v21

    const/16 v22, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v5, v24

    move/from16 v7, v26

    goto :goto_168

    :cond_1d5
    move/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x2

    const v4, 0x644f7073

    if-ne v3, v4, :cond_20d

    move/from16 v5, v24

    add-int/lit8 v3, v5, -0x8

    .line 1159
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v6, v4

    add-int/2addr v6, v3

    new-array v6, v6, [B

    .line 1160
    array-length v7, v4

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v7, v26

    add-int/lit8 v4, v7, 0x8

    .line 1161
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1162
    sget-object v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v4, v4

    invoke-virtual {v0, v6, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v6

    :goto_206
    move-object/from16 v8, v25

    const v6, 0x616c6163

    goto/16 :goto_2a7

    :cond_20d
    move/from16 v5, v24

    move/from16 v7, v26

    const v4, 0x64664c61

    if-ne v3, v4, :cond_239

    add-int/lit8 v3, v5, -0xc

    add-int/lit8 v4, v3, 0x4

    .line 1165
    new-array v4, v4, [B

    const/16 v6, 0x66

    .line 1166
    aput-byte v6, v4, v1

    const/16 v6, 0x4c

    .line 1167
    aput-byte v6, v4, v20

    const/16 v6, 0x61

    .line 1168
    aput-byte v6, v4, v22

    const/4 v6, 0x3

    const/16 v8, 0x43

    .line 1169
    aput-byte v8, v4, v6

    add-int/lit8 v6, v7, 0xc

    .line 1170
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x4

    .line 1171
    invoke-virtual {v0, v4, v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v4

    goto :goto_206

    :cond_239
    const v6, 0x616c6163

    if-ne v3, v6, :cond_260

    add-int/lit8 v3, v5, -0xc

    .line 1174
    new-array v4, v3, [B

    add-int/lit8 v8, v7, 0xc

    .line 1175
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1176
    invoke-virtual {v0, v4, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1180
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    .line 1181
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1182
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v19, v4

    :cond_260
    :goto_260
    move-object/from16 v8, v25

    goto :goto_2a7

    :cond_263
    :goto_263
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x2

    move v7, v6

    const v6, 0x616c6163

    if-ne v3, v9, :cond_276

    move v3, v7

    goto :goto_27a

    .line 1124
    :cond_276
    invoke-static {v0, v7, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v3

    :goto_27a
    if-eq v3, v4, :cond_260

    .line 1127
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 1128
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1129
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 1130
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 1134
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    .line 1135
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1136
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_2a7
    :goto_2a7
    add-int v3, v7, v5

    move/from16 v1, p2

    move v6, v3

    move-object/from16 v10, v21

    move-object/from16 v7, v27

    const v9, 0x616c6163

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_120

    :cond_2b8
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/16 v22, 0x2

    .line 1187
    iget-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_2f5

    move-object/from16 v8, v25

    if-eqz v8, :cond_2f5

    move-object/from16 v0, v27

    .line 1190
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    const/4 v7, 0x2

    goto :goto_2d3

    :cond_2d2
    const/4 v7, -0x1

    .line 1191
    :goto_2d3
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_2dd

    goto :goto_2e3

    .line 1193
    :cond_2dd
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_2e3
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v21

    move-object/from16 v11, p5

    .line 1191
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_2f5
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3d

    .line 1294
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1295
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 1300
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1302
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_34
    const v10, 0x73636869

    if-ne v9, v10, :cond_3b

    move v5, v0

    move v7, v8

    :cond_3b
    :goto_3b
    add-int/2addr v0, v8

    goto :goto_9

    :cond_3d
    const-string p1, "cenc"

    .line 1310
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 1311
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object v2

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    if-eqz v6, :cond_64

    const/4 p2, 0x1

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    const-string v0, "frma atom is mandatory"

    .line 1312
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_6e

    const/4 p2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p2, 0x0

    :goto_6f
    const-string v0, "schi atom is mandatory"

    .line 1313
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1315
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    const/4 v3, 0x1

    :cond_7b
    const-string p1, "tenc atom is mandatory"

    .line 1317
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1318
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5c

    const v0, 0x656c7374

    .line 996
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_5c

    .line 999
    :cond_c
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1000
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1002
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1004
    new-array v2, v1, [J

    .line 1005
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v1, :cond_57

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2e

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_32
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3b

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_40

    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_40
    aput-wide v6, v3, v4

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4f

    const/4 v5, 0x2

    .line 1015
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1013
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1017
    :cond_57
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    .line 997
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1221
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1223
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1224
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 1225
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1227
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    .line 1229
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_28
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2f

    .line 1235
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1239
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1240
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1244
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts"

    .line 1246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts.hd"

    .line 1247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_6d

    :cond_56
    const/16 v1, 0xc

    .line 1251
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1255
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1256
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1257
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1258
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6d
    :goto_6d
    const/4 p0, 0x0

    .line 1248
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4

    .line 1383
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    .line 690
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 691
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4

    const/16 v0, 0x8

    .line 599
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 602
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 604
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 607
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    goto :goto_27

    :cond_22
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object p0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 717
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 718
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 719
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_12

    const/16 v2, 0x8

    goto :goto_14

    :cond_12
    const/16 v2, 0x10

    .line 720
    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 721
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1e

    const/4 v0, 0x4

    .line 722
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 723
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 11

    const v0, 0x68646c72    # 4.3148E24f

    .line 535
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 536
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 537
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a4

    if-eqz v1, :cond_a4

    if-eqz p0, :cond_a4

    .line 538
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 541
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a4

    .line 547
    :cond_29
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 548
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 549
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 550
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 552
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 553
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 555
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 559
    :cond_4d
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 560
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    :goto_57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_98

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 564
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 567
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 569
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 571
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 574
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    add-int/2addr v4, v6

    .line 576
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 578
    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9f

    goto :goto_a4

    :cond_9f
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_a4
    :goto_a4
    return-object v2
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 617
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 618
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 619
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/16 v0, 0x10

    .line 620
    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 621
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    .line 1021
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1023
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_20

    .line 1368
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1370
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_1e

    .line 1372
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_1e
    add-int/2addr v0, v1

    goto :goto_2

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 1270
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    .line 1272
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1273
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 1275
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 1328
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1329
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_62

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1333
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1334
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 1338
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_38

    .line 1340
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1344
    :goto_38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 1345
    :goto_41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1347
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 1350
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1351
    new-array v2, p1, [B

    .line 1352
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 1354
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_62
    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 147
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 149
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_23

    :cond_15
    const v3, 0x73747a32

    .line 151
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_4d4

    .line 155
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 158
    :goto_23
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_44

    .line 160
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_44
    const v6, 0x7374636f

    .line 172
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_57

    const v6, 0x636f3634

    .line 175
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_58

    :cond_57
    const/4 v8, 0x0

    .line 177
    :goto_58
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v9, 0x73747363

    .line 179
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747473

    .line 181
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v11, 0x73747373

    .line 183
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_79

    .line 184
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_7a

    :cond_79
    move-object v11, v12

    :goto_7a
    const v13, 0x63747473

    .line 186
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 187
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_87

    :cond_86
    move-object v0, v12

    .line 190
    :goto_87
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 193
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 194
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    .line 195
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 196
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_a8

    .line 203
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 204
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_a9

    :cond_a8
    const/4 v15, 0x0

    :goto_a9
    const/16 v16, -0x1

    if-eqz v11, :cond_be

    .line 210
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 211
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_c0

    .line 213
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_c0

    :cond_be
    move-object v12, v11

    const/4 v6, 0x0

    .line 222
    :cond_c0
    :goto_c0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v11

    if-eqz v11, :cond_da

    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v11, v11, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 223
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    if-nez v8, :cond_da

    if-nez v15, :cond_da

    if-nez v6, :cond_da

    const/4 v5, 0x1

    goto :goto_db

    :cond_da
    const/4 v5, 0x0

    :goto_db
    const-wide/16 v18, 0x0

    if-nez v5, :cond_248

    .line 237
    new-array v5, v3, [J

    .line 238
    new-array v11, v3, [I

    .line 239
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 240
    new-array v6, v3, [I

    move-object/from16 v23, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move/from16 v35, v8

    move/from16 v8, p1

    :goto_101
    move/from16 p1, v35

    const-string v9, "AtomParsers"

    if-ge v1, v3, :cond_1c3

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_10d
    if-nez v27, :cond_12a

    .line 247
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v22

    if-eqz v22, :cond_12a

    move/from16 v30, v14

    move/from16 v31, v15

    .line 248
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    .line 249
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_10d

    :cond_12a
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_14e

    const-string v2, "Unexpected end of chunk data"

    .line 252
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 255
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 256
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 257
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_1cb

    :cond_14e
    if-eqz v0, :cond_161

    :goto_150
    if-nez v24, :cond_15f

    if-lez v16, :cond_15f

    .line 264
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v24

    .line 270
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_150

    :cond_15f
    add-int/lit8 v24, v24, -0x1

    :cond_161
    move/from16 v3, v21

    .line 276
    aput-wide v28, v5, v1

    .line 277
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v9

    aput v9, v11, v1

    .line 278
    aget v9, v11, v1

    if-le v9, v10, :cond_172

    .line 279
    aget v9, v11, v1

    move v10, v9

    :cond_172
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 281
    aput-wide v14, v7, v1

    if-nez v12, :cond_17b

    const/4 v9, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v9, 0x0

    .line 284
    :goto_17c
    aput v9, v6, v1

    if-ne v1, v2, :cond_18c

    const/4 v9, 0x1

    .line 286
    aput v9, v6, v1

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_18c

    .line 289
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v9

    :cond_18c
    move v15, v2

    move v9, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_1a4

    if-lez p1, :cond_1a4

    .line 297
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 304
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_1a7

    :cond_1a4
    move v3, v14

    move/from16 v14, p1

    :goto_1a7
    move/from16 p1, v2

    .line 308
    aget v2, v11, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v9

    move/from16 v35, v14

    move/from16 v14, p1

    goto/16 :goto_101

    :cond_1c3
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_1cb
    int-to-long v12, v2

    add-long v25, v25, v12

    :goto_1ce
    if-lez v16, :cond_1de

    .line 317
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_1d8

    const/4 v0, 0x0

    goto :goto_1df

    .line 321
    :cond_1d8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_1ce

    :cond_1de
    const/4 v0, 0x1

    :goto_1df
    if-nez v8, :cond_1f1

    if-nez v30, :cond_1f1

    if-nez v1, :cond_1f1

    if-nez p1, :cond_1f1

    move/from16 v2, v24

    if-nez v2, :cond_1f3

    if-nez v0, :cond_1ee

    goto :goto_1f3

    :cond_1ee
    move-object/from16 v12, p0

    goto :goto_241

    :cond_1f1
    move/from16 v2, v24

    .line 330
    :cond_1f3
    :goto_1f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inconsistent stbl box for track "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p0

    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v30

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesInChunk "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_235

    const-string v0, ", ctts invalid"

    goto :goto_237

    :cond_235
    const-string v0, ""

    :goto_237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_241
    move v0, v3

    move-object v2, v5

    move-object v14, v6

    move-object v13, v7

    move v4, v10

    move-object v3, v11

    goto :goto_28c

    :cond_248
    move-object v12, v1

    move/from16 v32, v3

    .line 347
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 348
    iget v1, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v1, v1, [I

    .line 349
    :goto_253
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v2

    if-eqz v2, :cond_266

    .line 350
    iget v2, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v3, v0, v2

    .line 351
    iget v2, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v3, v1, v2

    goto :goto_253

    .line 353
    :cond_266
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget-object v3, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 354
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v3, v14

    .line 355
    invoke-static {v2, v0, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 357
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 358
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 359
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 360
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 361
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 362
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v13, v4

    move-object v14, v5

    move-wide/from16 v25, v6

    move/from16 v0, v32

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_28c
    const-wide/32 v7, 0xf4240

    .line 364
    iget-wide v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v5, v25

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 366
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_2ae

    .line 367
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v13, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 368
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 379
    :cond_2ae
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_344

    iget v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v5, :cond_344

    array-length v1, v13

    const/4 v5, 0x2

    if-lt v1, v5, :cond_344

    .line 382
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v15, v1, v5

    .line 383
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v27, v1, v5

    iget-wide v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v7, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v29, v5

    move-wide/from16 v31, v7

    invoke-static/range {v27 .. v32}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long v21, v15, v5

    move-object v5, v13

    move-wide/from16 v6, v25

    move-wide v8, v15

    move/from16 v23, v0

    move-wide v0, v10

    move-wide/from16 v10, v21

    .line 385
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_346

    sub-long v6, v25, v21

    const/4 v5, 0x0

    .line 387
    aget-wide v8, v13, v5

    sub-long v27, v15, v8

    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-static/range {v27 .. v32}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 389
    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 p1, v14

    move-wide v14, v10

    move-wide v10, v0

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    cmp-long v5, v14, v18

    if-nez v5, :cond_30f

    cmp-long v5, v0, v18

    if-eqz v5, :cond_348

    :cond_30f
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v14, v5

    if-gtz v7, :cond_348

    cmp-long v7, v0, v5

    if-gtz v7, :cond_348

    long-to-int v5, v14

    move-object/from16 v6, p2

    .line 393
    iput v5, v6, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v1, v0

    .line 394
    iput v1, v6, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 395
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v5, 0xf4240

    invoke-static {v13, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 396
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    const-wide/32 v7, 0xf4240

    iget-wide v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 397
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 399
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_344
    move/from16 v23, v0

    :cond_346
    move-object/from16 p1, v14

    .line 405
    :cond_348
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38c

    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    cmp-long v0, v5, v18

    if-nez v0, :cond_38c

    .line 409
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v5, v0, v1

    const/4 v0, 0x0

    .line 410
    :goto_35c
    array-length v1, v13

    if-ge v0, v1, :cond_373

    .line 411
    aget-wide v7, v13, v0

    sub-long v14, v7, v5

    const-wide/32 v16, 0xf4240

    iget-wide v7, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v7

    .line 412
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    aput-wide v7, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_35c

    :cond_373
    sub-long v14, v25, v5

    const-wide/32 v16, 0xf4240

    .line 415
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v0

    .line 416
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 417
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 422
    :cond_38c
    iget v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_393

    const/4 v9, 0x1

    goto :goto_394

    :cond_393
    const/4 v9, 0x0

    .line 428
    :goto_394
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    new-array v0, v0, [I

    .line 429
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 430
    :goto_3a2
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v10, v10

    if-ge v5, v10, :cond_407

    .line 431
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v14, v10, v5

    const-wide/16 v10, -0x1

    cmp-long v16, v14, v10

    if-eqz v16, :cond_3fa

    .line 433
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v24, v10, v5

    iget-wide v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v16, v3

    move/from16 v21, v4

    iget-wide v3, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v10

    move-wide/from16 v28, v3

    .line 434
    invoke-static/range {v24 .. v29}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    const/4 v10, 0x1

    .line 436
    invoke-static {v13, v14, v15, v10, v10}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    aput v11, v0, v5

    add-long/2addr v14, v3

    const/4 v3, 0x0

    .line 438
    invoke-static {v13, v14, v15, v9, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v4

    aput v4, v1, v5

    .line 440
    :goto_3d4
    aget v4, v0, v5

    aget v11, v1, v5

    if-ge v4, v11, :cond_3e7

    aget v4, v0, v5

    aget v4, p1, v4

    and-int/2addr v4, v10

    if-nez v4, :cond_3e7

    .line 446
    aget v4, v0, v5

    add-int/2addr v4, v10

    aput v4, v0, v5

    goto :goto_3d4

    .line 448
    :cond_3e7
    aget v4, v1, v5

    aget v11, v0, v5

    sub-int/2addr v4, v11

    add-int/2addr v7, v4

    .line 449
    aget v4, v0, v5

    if-eq v8, v4, :cond_3f3

    const/4 v4, 0x1

    goto :goto_3f4

    :cond_3f3
    const/4 v4, 0x0

    :goto_3f4
    or-int/2addr v4, v6

    .line 450
    aget v6, v1, v5

    move v8, v6

    move v6, v4

    goto :goto_400

    :cond_3fa
    move-object/from16 v16, v3

    move/from16 v21, v4

    const/4 v3, 0x0

    const/4 v10, 0x1

    :goto_400
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v21

    goto :goto_3a2

    :cond_407
    move-object/from16 v16, v3

    move/from16 v21, v4

    move/from16 v4, v23

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eq v7, v4, :cond_412

    goto :goto_413

    :cond_412
    const/4 v10, 0x0

    :goto_413
    or-int v4, v6, v10

    if-eqz v4, :cond_41a

    .line 456
    new-array v5, v7, [J

    goto :goto_41b

    :cond_41a
    move-object v5, v2

    :goto_41b
    if-eqz v4, :cond_420

    .line 457
    new-array v6, v7, [I

    goto :goto_422

    :cond_420
    move-object/from16 v6, v16

    :goto_422
    if-eqz v4, :cond_426

    const/16 v21, 0x0

    :cond_426
    if-eqz v4, :cond_42b

    .line 459
    new-array v8, v7, [I

    goto :goto_42d

    :cond_42b
    move-object/from16 v8, p1

    .line 460
    :goto_42d
    new-array v7, v7, [J

    const/4 v9, 0x0

    .line 463
    :goto_430
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v10, v10

    if-ge v3, v10, :cond_4b7

    .line 464
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v14, v10, v3

    .line 465
    aget v10, v0, v3

    .line 466
    aget v11, v1, v3

    move-object/from16 v17, v0

    if-eqz v4, :cond_455

    sub-int v0, v11, v10

    .line 469
    invoke-static {v2, v10, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    .line 470
    invoke-static {v1, v10, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    .line 471
    invoke-static {v2, v10, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45d

    :cond_455
    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    :goto_45d
    move/from16 v0, v21

    :goto_45f
    if-ge v10, v11, :cond_49d

    const-wide/32 v24, 0xf4240

    move-object/from16 p1, v2

    move/from16 v28, v3

    .line 474
    iget-wide v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v22, v18

    move-wide/from16 v26, v2

    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 475
    aget-wide v21, v13, v10

    sub-long v29, v21, v14

    const-wide/32 v31, 0xf4240

    move-object/from16 v22, v13

    move-wide/from16 v23, v14

    iget-wide v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v33, v13

    .line 476
    invoke-static/range {v29 .. v34}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    add-long/2addr v2, v13

    .line 478
    aput-wide v2, v7, v9

    if-eqz v4, :cond_490

    .line 479
    aget v2, v6, v9

    if-le v2, v0, :cond_490

    .line 480
    aget v0, v1, v10

    :cond_490
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v13, v22

    move-wide/from16 v14, v23

    move/from16 v3, v28

    goto :goto_45f

    :cond_49d
    move-object/from16 p1, v2

    move/from16 v28, v3

    move-object/from16 v22, v13

    .line 484
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v2, v28

    add-long v18, v18, v10

    add-int/lit8 v3, v28, 0x1

    move/from16 v21, v0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    goto/16 :goto_430

    :cond_4b7
    const-wide/32 v24, 0xf4240

    .line 486
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v22, v18

    move-wide/from16 v26, v0

    .line 487
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 488
    new-instance v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move/from16 v4, v21

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v11

    .line 153
    :cond_4d4
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4dd

    :goto_4dc
    throw v0

    :goto_4dd
    goto :goto_4dc
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 745
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 747
    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v11, :cond_13a

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "childAtomSize should be positive"

    .line 751
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_121

    const v0, 0x61766333

    if-eq v1, v0, :cond_121

    const v0, 0x656e6376

    if-eq v1, v0, :cond_121

    const v0, 0x6d703476

    if-eq v1, v0, :cond_121

    const v0, 0x68766331

    if-eq v1, v0, :cond_121

    const v0, 0x68657631

    if-eq v1, v0, :cond_121

    const v0, 0x73323633

    if-eq v1, v0, :cond_121

    const v0, 0x76703038

    if-eq v1, v0, :cond_121

    const v0, 0x76703039

    if-eq v1, v0, :cond_121

    const v0, 0x61763031

    if-eq v1, v0, :cond_121

    const v0, 0x64766176

    if-eq v1, v0, :cond_121

    const v0, 0x64766131

    if-eq v1, v0, :cond_121

    const v0, 0x64766865

    if-eq v1, v0, :cond_121

    const v0, 0x64766831

    if-ne v1, v0, :cond_72

    goto/16 :goto_121

    :cond_72
    const v0, 0x6d703461

    if-eq v1, v0, :cond_10e

    const v0, 0x656e6361

    if-eq v1, v0, :cond_10e

    const v0, 0x61632d33

    if-eq v1, v0, :cond_10e

    const v0, 0x65632d33

    if-eq v1, v0, :cond_10e

    const v0, 0x61632d34

    if-eq v1, v0, :cond_10e

    const v0, 0x64747363

    if-eq v1, v0, :cond_10e

    const v0, 0x64747365

    if-eq v1, v0, :cond_10e

    const v0, 0x64747368

    if-eq v1, v0, :cond_10e

    const v0, 0x6474736c

    if-eq v1, v0, :cond_10e

    const v0, 0x73616d72

    if-eq v1, v0, :cond_10e

    const v0, 0x73617762

    if-eq v1, v0, :cond_10e

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_10e

    const v0, 0x736f7774

    if-eq v1, v0, :cond_10e

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_10e

    const v0, 0x616c6163

    if-eq v1, v0, :cond_10e

    const v0, 0x616c6177

    if-eq v1, v0, :cond_10e

    const v0, 0x756c6177

    if-eq v1, v0, :cond_10e

    const v0, 0x4f707573

    if-eq v1, v0, :cond_10e

    const v0, 0x664c6143

    if-ne v1, v0, :cond_d2

    goto :goto_10e

    :cond_d2
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_100

    const v0, 0x74783367

    if-eq v1, v0, :cond_100

    const v0, 0x77767474

    if-eq v1, v0, :cond_100

    const v0, 0x73747070

    if-eq v1, v0, :cond_100

    const v0, 0x63363038

    if-ne v1, v0, :cond_ec

    goto :goto_100

    :cond_ec
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_131

    .line 796
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_131

    :cond_100
    :goto_100
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 793
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_131

    :cond_10e
    :goto_10e
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 788
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_131

    :cond_121
    :goto_121
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 767
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_131
    :goto_131
    add-int v15, v15, v16

    .line 799
    invoke-virtual {v10, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    :cond_13a
    return-object v12
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 806
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const-string v3, "application/ttml+xml"

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const v7, 0x54544d4c

    if-ne v1, v7, :cond_1f

    :goto_1a
    move-object v8, v3

    move-object/from16 v17, v4

    move-wide v15, v5

    goto :goto_50

    :cond_1f
    const v7, 0x74783367

    if-ne v1, v7, :cond_35

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 818
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 819
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 820
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v3, "application/x-quicktime-tx3g"

    goto :goto_1a

    :cond_35
    const v0, 0x77767474

    if-ne v1, v0, :cond_3d

    const-string v3, "application/x-mp4-vtt"

    goto :goto_1a

    :cond_3d
    const v0, 0x73747070

    if-ne v1, v0, :cond_45

    const-wide/16 v5, 0x0

    goto :goto_1a

    :cond_45
    const v0, 0x63363038

    if-ne v1, v0, :cond_62

    const/4 v0, 0x1

    .line 829
    iput v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_1a

    .line 837
    :goto_50
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v12, p5

    .line 836
    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 832
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_69

    :goto_68
    throw v0

    :goto_69
    goto :goto_68
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .registers 12

    const/16 v0, 0x8

    .line 630
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 631
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 632
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_14

    const/16 v3, 0x8

    goto :goto_16

    :cond_14
    const/16 v3, 0x10

    .line 634
    :goto_16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 637
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 639
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_28

    const/4 v0, 0x4

    :cond_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v0, :cond_3a

    .line 642
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_37

    const/4 v5, 0x0

    goto :goto_3b

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3a
    const/4 v5, 0x1

    :goto_3b
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_46

    .line 649
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_59

    :cond_46
    if-nez v1, :cond_4d

    .line 652
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_51
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_58

    goto :goto_59

    :cond_58
    move-wide v7, v0

    .line 660
    :goto_59
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 662
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 663
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 664
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 665
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7e

    if-ne v1, v4, :cond_7e

    if-ne v2, v5, :cond_7e

    if-nez p0, :cond_7e

    const/16 v6, 0x5a

    goto :goto_93

    :cond_7e
    if-nez v0, :cond_89

    if-ne v1, v5, :cond_89

    if-ne v2, v4, :cond_89

    if-nez p0, :cond_89

    const/16 v6, 0x10e

    goto :goto_93

    :cond_89
    if-ne v0, v5, :cond_93

    if-nez v1, :cond_93

    if-nez v2, :cond_93

    if-ne p0, v5, :cond_93

    const/16 v6, 0xb4

    .line 680
    :cond_93
    :goto_93
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    const v2, 0x68646c72    # 4.3148E24f

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_1f

    return-object v2

    :cond_1f
    const v3, 0x746b6864

    .line 104
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_3d

    .line 106
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_41

    :cond_3d
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 108
    :goto_41
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_4c

    goto :goto_54

    :cond_4c
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 113
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_54
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 115
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v6, 0x7374626c

    .line 116
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v6, 0x6d646864

    .line 118
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 119
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 120
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 119
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_a8

    const v6, 0x65647473

    .line 124
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    .line 125
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 126
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_ac

    :cond_a8
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 128
    :goto_ac
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_b1

    goto :goto_cc

    :cond_b1
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 129
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_cc
    return-object v2
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    .line 512
    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x8

    .line 513
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 514
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, p1, :cond_30

    .line 515
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 516
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 517
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x6d657461

    if-ne v3, v4, :cond_2b

    .line 519
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v2

    .line 520
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_2b
    add-int/2addr v1, v2

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b

    :cond_30
    return-object v0
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6

    const/16 v0, 0xc

    .line 583
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 584
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2a

    .line 585
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 586
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 587
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_25

    .line 589
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 590
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_25
    add-int/2addr v0, v1

    .line 592
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_5

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 852
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 854
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/16 v5, 0x32

    .line 859
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    const v7, 0x656e6376

    move/from16 v8, p1

    if-ne v8, v7, :cond_56

    .line 863
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_53

    .line 866
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_41

    move-object v3, v6

    goto :goto_4b

    .line 867
    :cond_41
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 868
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 869
    :goto_4b
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v7, v9, p8

    .line 871
    :cond_53
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_56
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v6

    move-object v9, v3

    move-object v14, v9

    move-object/from16 v17, v14

    const/4 v6, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_65
    sub-int v10, v5, v1

    if-ge v10, v2, :cond_185

    .line 885
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    if-nez v13, :cond_7f

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int/2addr v15, v1

    if-ne v15, v2, :cond_7f

    goto/16 :goto_185

    :cond_7f
    if-lez v13, :cond_83

    const/4 v7, 0x1

    goto :goto_84

    :cond_83
    const/4 v7, 0x0

    :goto_84
    const-string v15, "childAtomSize should be positive"

    .line 892
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v15, 0x61766343

    const/4 v1, 0x3

    if-ne v7, v15, :cond_b4

    if-nez v3, :cond_97

    const/4 v15, 0x1

    goto :goto_98

    :cond_97
    const/4 v15, 0x0

    .line 895
    :goto_98
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 897
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 898
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 899
    iget-object v14, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 900
    iget v3, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v6, :cond_b0

    .line 902
    iget v1, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v16, v1

    :cond_b0
    const-string v3, "video/avc"

    goto/16 :goto_180

    :cond_b4
    const v15, 0x68766343

    if-ne v7, v15, :cond_d4

    if-nez v3, :cond_bd

    const/4 v15, 0x1

    goto :goto_be

    :cond_bd
    const/4 v15, 0x0

    .line 905
    :goto_be
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 907
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 908
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 909
    iget-object v14, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 910
    iget v1, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    const-string v3, "video/hevc"

    goto/16 :goto_180

    :cond_d4
    const v15, 0x64766343

    if-eq v7, v15, :cond_176

    const v15, 0x64767643

    if-ne v7, v15, :cond_e0

    goto/16 :goto_176

    :cond_e0
    const v15, 0x76706343

    if-ne v7, v15, :cond_fa

    if-nez v3, :cond_e9

    const/4 v15, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v15, 0x0

    .line 918
    :goto_ea
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const v1, 0x76703038

    if-ne v8, v1, :cond_f5

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_f7

    :cond_f5
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_f7
    move-object v3, v1

    goto/16 :goto_180

    :cond_fa
    const v15, 0x61763143

    if-ne v7, v15, :cond_10b

    if-nez v3, :cond_103

    const/4 v15, 0x1

    goto :goto_104

    :cond_103
    const/4 v15, 0x0

    .line 921
    :goto_104
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v3, "video/av01"

    goto/16 :goto_180

    :cond_10b
    const v15, 0x64323633

    if-ne v7, v15, :cond_11c

    if-nez v3, :cond_114

    const/4 v15, 0x1

    goto :goto_115

    :cond_114
    const/4 v15, 0x0

    .line 924
    :goto_115
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string v3, "video/3gpp"

    goto/16 :goto_180

    :cond_11c
    const v15, 0x65736473

    if-ne v7, v15, :cond_138

    if-nez v3, :cond_125

    const/4 v15, 0x1

    goto :goto_126

    :cond_125
    const/4 v15, 0x0

    .line 927
    :goto_126
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 929
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v1

    .line 930
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 931
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_180

    :cond_138
    const v15, 0x70617370

    if-ne v7, v15, :cond_143

    .line 933
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v16

    const/4 v6, 0x1

    goto :goto_180

    :cond_143
    const v15, 0x73763364

    if-ne v7, v15, :cond_14d

    .line 936
    invoke-static {v0, v10, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v17

    goto :goto_180

    :cond_14d
    const v10, 0x73743364

    if-ne v7, v10, :cond_180

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 939
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v7, :cond_180

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-eqz v7, :cond_173

    const/4 v10, 0x1

    if-eq v7, v10, :cond_170

    const/4 v15, 0x2

    if-eq v7, v15, :cond_16d

    if-eq v7, v1, :cond_16a

    goto :goto_180

    :cond_16a
    const/16 v18, 0x3

    goto :goto_180

    :cond_16d
    const/16 v18, 0x2

    goto :goto_180

    :cond_170
    const/16 v18, 0x1

    goto :goto_180

    :cond_173
    const/16 v18, 0x0

    goto :goto_180

    .line 912
    :cond_176
    :goto_176
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v1

    if-eqz v1, :cond_180

    .line 914
    iget-object v9, v1, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    :cond_180
    :goto_180
    add-int/2addr v5, v13

    move/from16 v1, p2

    goto/16 :goto_65

    :cond_185
    :goto_185
    if-nez v3, :cond_188

    return-void

    .line 970
    :cond_188
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object v7, v3

    move-object v8, v9

    move v9, v0

    move/from16 v15, p5

    .line 969
    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
