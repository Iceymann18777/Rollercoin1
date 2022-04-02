.class final Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OpusHead"

    .line 89
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestamps",
            "duration",
            "editStartTime",
            "editEndTime"
        }
    .end annotation

    .line 1394
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1395
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    .line 1396
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1397
    invoke-static {v5, v3, v0}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v0

    .line 1398
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

.method private static findEsdsPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size"
        }
    .end annotation

    .line 1202
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_25

    .line 1204
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1205
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    .line 1206
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1207
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdlr"
        }
    .end annotation

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

.method private static parseAudioSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 38
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "atomType",
            "position",
            "size",
            "trackId",
            "language",
            "isQuickTime",
            "drmInitData",
            "out",
            "entryIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
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

    .line 1040
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_20

    .line 1044
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1045
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_24

    .line 1047
    :cond_20
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    :goto_24
    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_46

    if-ne v5, v11, :cond_2d

    goto :goto_46

    :cond_2d
    if-ne v5, v12, :cond_45

    .line 1062
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v6, 0x14

    .line 1069
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_58

    :cond_45
    return-void

    .line 1054
    :cond_46
    :goto_46
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1055
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    if-ne v5, v11, :cond_56

    .line 1059
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_56
    move v5, v4

    move v4, v7

    .line 1075
    :goto_58
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    const v7, 0x656e6361

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_8d

    .line 1077
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_8a

    .line 1080
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_78

    move-object/from16 v3, v16

    goto :goto_82

    .line 1082
    :cond_78
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    .line 1083
    :goto_82
    iget-object v9, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    aput-object v7, v9, p9

    .line 1085
    :cond_8a
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

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

    if-ge v3, v2, :cond_286

    .line 1128
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    if-lez v5, :cond_130

    const/4 v3, 0x1

    goto :goto_131

    :cond_130
    const/4 v3, 0x0

    :goto_131
    const-string v9, "childAtomSize should be positive"

    .line 1130
    invoke-static {v3, v9}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    const v9, 0x65736473

    if-eq v3, v9, :cond_232

    if-eqz p6, :cond_148

    const v11, 0x77617665

    if-ne v3, v11, :cond_148

    goto/16 :goto_232

    :cond_148
    const v4, 0x64616333

    if-ne v3, v4, :cond_16e

    add-int/lit8 v3, v6, 0x8

    .line 1150
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1151
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    :goto_15c
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x2

    move v7, v6

    move v6, v5

    :goto_169
    const v5, 0x616c6163

    goto/16 :goto_22f

    :cond_16e
    const v4, 0x64656333

    if-ne v3, v4, :cond_183

    add-int/lit8 v3, v6, 0x8

    .line 1154
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1155
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    goto :goto_15c

    :cond_183
    const v4, 0x64616334

    if-ne v3, v4, :cond_198

    add-int/lit8 v3, v6, 0x8

    .line 1158
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1160
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    goto :goto_15c

    :cond_198
    const v4, 0x64647473

    if-ne v3, v4, :cond_1d6

    .line 1162
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

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move/from16 v6, v24

    move/from16 v7, v26

    goto :goto_169

    :cond_1d6
    move/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const v5, 0x616c6163

    const/16 v20, 0x1

    const/16 v22, 0x2

    if-ne v3, v5, :cond_1f9

    move/from16 v6, v24

    .line 1166
    new-array v3, v6, [B

    move/from16 v7, v26

    .line 1167
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1168
    invoke-virtual {v0, v3, v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v3

    goto :goto_22f

    :cond_1f9
    move/from16 v6, v24

    move/from16 v7, v26

    const v4, 0x644f7073

    if-ne v3, v4, :cond_21c

    add-int/lit8 v3, v6, -0x8

    .line 1173
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v8, v4

    add-int/2addr v8, v3

    new-array v8, v8, [B

    .line 1174
    array-length v9, v4

    invoke-static {v4, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v7, 0x8

    .line 1175
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1176
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v4, v4

    invoke-virtual {v0, v8, v4, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v8

    goto :goto_22f

    :cond_21c
    const v3, 0x64664c61

    if-ne v6, v3, :cond_22f

    add-int/lit8 v3, v6, -0xc

    .line 1179
    new-array v4, v3, [B

    add-int/lit8 v8, v7, 0xc

    .line 1180
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1181
    invoke-virtual {v0, v4, v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v4

    :cond_22f
    :goto_22f
    move-object/from16 v8, v25

    goto :goto_277

    :cond_232
    :goto_232
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x2

    move v7, v6

    move v6, v5

    const v5, 0x616c6163

    if-ne v3, v9, :cond_246

    move v3, v7

    goto :goto_24a

    .line 1134
    :cond_246
    invoke-static {v0, v7, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->findEsdsPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)I

    move-result v3

    :goto_24a
    if-eq v3, v4, :cond_22f

    .line 1137
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 1138
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1139
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 1140
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_277

    .line 1144
    invoke-static/range {v19 .. v19}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v3

    .line 1145
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1146
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_277
    :goto_277
    add-int/2addr v6, v7

    move/from16 v1, p2

    move-object/from16 v10, v21

    move-object/from16 v7, v27

    const v9, 0x616c6163

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_120

    :cond_286
    move-object/from16 v27, v7

    move-object/from16 v25, v8

    move-object/from16 v21, v10

    const/16 v22, 0x2

    .line 1186
    iget-object v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_2c3

    move-object/from16 v8, v25

    if-eqz v8, :cond_2c3

    move-object/from16 v0, v27

    .line 1189
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    const/4 v7, 0x2

    goto :goto_2a1

    :cond_2a0
    const/4 v7, -0x1

    .line 1190
    :goto_2a1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_2ab

    goto :goto_2b1

    .line 1192
    :cond_2ab
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_2b1
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v21

    move-object/from16 v11, p5

    .line 1190
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    :cond_2c3
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;",
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

    .line 1293
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1294
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1295
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 1297
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 1299
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1301
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

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

    .line 1309
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 1310
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

    .line 1311
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_6e

    const/4 p2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p2, 0x0

    :goto_6f
    const-string v0, "schi atom is mandatory"

    .line 1312
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1314
    invoke-static {p0, v5, v7, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSchiFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    const/4 v3, 0x1

    :cond_7b
    const-string p1, "tenc atom is mandatory"

    .line 1316
    invoke-static {v3, p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1317
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edtsAtom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5c

    const v0, 0x656c7374

    .line 1006
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_5c

    .line 1009
    :cond_c
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1011
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1012
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1013
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1014
    new-array v2, v1, [J

    .line 1015
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v1, :cond_57

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2e

    .line 1018
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_32
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3b

    .line 1019
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_40

    :cond_3b
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_40
    aput-wide v6, v3, v4

    .line 1020
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4f

    const/4 v5, 0x2

    .line 1025
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1023
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1027
    :cond_57
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    .line 1007
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1220
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1222
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1223
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 1224
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1226
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    .line 1228
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    .line 1231
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :cond_28
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2f

    .line 1234
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1238
    :cond_2f
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1239
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    .line 1242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1243
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts"

    .line 1245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "audio/vnd.dts.hd"

    .line 1246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_6d

    :cond_56
    const/16 v1, 0xc

    .line 1250
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1253
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1254
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result p1

    .line 1255
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1256
    invoke-virtual {p0, v1, v2, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1257
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6d
    :goto_6d
    const/4 p0, 0x0

    .line 1247
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1382
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 1385
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdlr"
        }
    .end annotation

    const/16 v0, 0x10

    .line 700
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 701
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ilst",
            "limit"
        }
    .end annotation

    const/16 v0, 0x8

    .line 609
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 612
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 614
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 617
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    goto :goto_27

    :cond_22
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object p0
.end method

.method private static parseMdhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mdhd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 727
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 728
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 729
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_12

    const/16 v2, 0x8

    goto :goto_14

    :cond_12
    const/16 v2, 0x10

    .line 730
    :goto_14
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 731
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1e

    const/4 v0, 0x4

    .line 732
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 733
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v4, 0x3

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 739
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meta"
        }
    .end annotation

    const v0, 0x68646c72    # 4.3148E24f

    .line 545
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 546
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 547
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a6

    if-eqz v1, :cond_a6

    if-eqz p0, :cond_a6

    .line 548
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 551
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a6

    .line 557
    :cond_29
    iget-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 558
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 559
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 560
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 562
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 563
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 565
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 569
    :cond_4d
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 570
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    :goto_57
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_9a

    .line 573
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 574
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 575
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 577
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 579
    invoke-static {p0, v8, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_95

    .line 581
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_7d
    const/16 v8, 0x34

    .line 584
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    add-int/2addr v4, v6

    .line 586
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 588
    :cond_9a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a1

    goto :goto_a6

    :cond_a1
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v2, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_a6
    :goto_a6
    return-object v2
.end method

.method private static parseMvhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mvhd"
        }
    .end annotation

    const/16 v0, 0x8

    .line 627
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 628
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 629
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/16 v0, 0x10

    .line 630
    :goto_12
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 631
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "position"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1031
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1032
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1033
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_20

    .line 1367
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1368
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1369
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_1e

    .line 1371
    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

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

.method private static parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1267
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 1269
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1270
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize should be positive"

    .line 1271
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1272
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 1274
    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

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

.method private static parseSchiFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "position",
            "size",
            "schemeType"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 1327
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1328
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1329
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_62

    .line 1331
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1332
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1333
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 1337
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_38

    .line 1339
    :cond_2c
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1343
    :goto_38
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 1344
    :goto_41
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1346
    invoke-virtual {p0, v7, v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 1349
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1350
    new-array v2, p1, [B

    .line 1351
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 1353
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_62
    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method public static parseStbl(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .registers 38
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "track",
            "stblAtom",
            "gaplessInfoHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 155
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 157
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_23

    :cond_15
    const v3, 0x73747a32

    .line 159
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_4dc

    .line 163
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    .line 166
    :goto_23
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_44

    .line 168
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

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

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_44
    const v6, 0x7374636f

    .line 180
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_57

    const v6, 0x636f3634

    .line 183
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_58

    :cond_57
    const/4 v8, 0x0

    .line 185
    :goto_58
    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const v9, 0x73747363

    .line 187
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const v10, 0x73747473

    .line 189
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const v11, 0x73747373

    .line 191
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_79

    .line 192
    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    goto :goto_7a

    :cond_79
    move-object v11, v12

    :goto_7a
    const v13, 0x63747473

    .line 194
    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 195
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    goto :goto_87

    :cond_86
    move-object v0, v12

    .line 198
    :goto_87
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 201
    invoke-virtual {v10, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 202
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    .line 203
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 204
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_a8

    .line 211
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 212
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_a9

    :cond_a8
    const/4 v15, 0x0

    :goto_a9
    const/16 v16, -0x1

    if-eqz v11, :cond_be

    .line 218
    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 219
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_c0

    .line 221
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_c0

    :cond_be
    move-object v12, v11

    const/4 v6, 0x0

    .line 230
    :cond_c0
    :goto_c0
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v11

    if-eqz v11, :cond_da

    iget-object v11, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 231
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

    if-nez v5, :cond_24e

    .line 245
    new-array v5, v3, [J

    .line 246
    new-array v11, v3, [I

    .line 247
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 248
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

    move/from16 v34, v8

    move/from16 v8, p1

    :goto_101
    move/from16 p1, v34

    const-string v9, "AtomParsers"

    if-ge v1, v3, :cond_1c3

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_10d
    if-nez v27, :cond_12a

    .line 255
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v22

    if-eqz v22, :cond_12a

    move/from16 v30, v14

    move/from16 v31, v15

    .line 256
    iget-wide v14, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    .line 257
    iget v3, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

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

    .line 260
    invoke-static {v9, v2}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 263
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 264
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 265
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

    .line 272
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v24

    .line 278
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_150

    :cond_15f
    add-int/lit8 v24, v24, -0x1

    :cond_161
    move/from16 v3, v21

    .line 284
    aput-wide v28, v5, v1

    .line 285
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v9

    aput v9, v11, v1

    .line 286
    aget v9, v11, v1

    if-le v9, v10, :cond_172

    .line 287
    aget v9, v11, v1

    move v10, v9

    :cond_172
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 289
    aput-wide v14, v7, v1

    if-nez v12, :cond_17b

    const/4 v9, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v9, 0x0

    .line 292
    :goto_17c
    aput v9, v6, v1

    if-ne v1, v2, :cond_18c

    const/4 v9, 0x1

    .line 294
    aput v9, v6, v1

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_18c

    .line 297
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

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

    .line 305
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 312
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_1a7

    :cond_1a4
    move v3, v14

    move/from16 v14, p1

    :goto_1a7
    move/from16 p1, v2

    .line 316
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

    move/from16 v34, v14

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

    .line 325
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_1d8

    const/4 v0, 0x0

    goto :goto_1df

    .line 329
    :cond_1d8
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

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
    move-object/from16 v4, p0

    goto :goto_247

    :cond_1f1
    move/from16 v2, v24

    :cond_1f3
    :goto_1f3
    move-object/from16 v4, p0

    .line 338
    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    if-nez v0, :cond_1fc

    const-string v0, ", ctts invalid"

    goto :goto_1fe

    :cond_1fc
    const-string v0, ""

    .line 352
    :goto_1fe
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x106

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Inconsistent stbl box for track "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": remainingSynchronizationSamples "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v30

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesInChunk "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v9, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_247
    move v0, v3

    move-object v2, v5

    move-object v5, v7

    move-object v3, v11

    move-wide/from16 v7, v25

    goto :goto_28e

    :cond_24e
    move-object v4, v1

    move/from16 v32, v3

    .line 355
    iget v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 356
    iget v1, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v1, v1, [I

    .line 357
    :goto_259
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 358
    iget v2, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v5, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v5, v0, v2

    .line 359
    iget v2, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v3, v13, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v3, v1, v2

    goto :goto_259

    .line 361
    :cond_26c
    iget-object v2, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget-object v3, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 362
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v5, v14

    .line 363
    invoke-static {v2, v0, v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 365
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 366
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 367
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 368
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 369
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 370
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move v10, v3

    move/from16 v0, v32

    move-object v3, v2

    move-object v2, v1

    :goto_28e
    const-wide/32 v13, 0xf4240

    .line 372
    iget-wide v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide v15, v11

    move-wide v11, v7

    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 374
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    if-eqz v1, :cond_4c0

    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-eqz v1, :cond_2a5

    goto/16 :goto_4c0

    .line 389
    :cond_2a5
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_339

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    if-ne v1, v9, :cond_339

    array-length v1, v5

    const/4 v9, 0x2

    if-lt v1, v9, :cond_339

    .line 392
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v9, 0x0

    aget-wide v11, v1, v9

    .line 393
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v21, v1, v9

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move v9, v0

    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v23, v13

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long/2addr v0, v11

    move-object/from16 v21, v5

    move-wide/from16 v22, v7

    move-wide/from16 v24, v11

    move-wide/from16 v26, v0

    .line 395
    invoke-static/range {v21 .. v27}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v13

    if-eqz v13, :cond_33a

    sub-long v21, v7, v0

    const/4 v0, 0x0

    .line 397
    aget-wide v13, v5, v0

    sub-long v23, v11, v13

    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v0, v0

    iget-wide v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v25, v0

    move-wide/from16 v27, v11

    invoke-static/range {v23 .. v28}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 399
    iget-object v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v11, v11, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v11, v11

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-static/range {v21 .. v26}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    cmp-long v13, v0, v18

    if-nez v13, :cond_305

    cmp-long v13, v11, v18

    if-eqz v13, :cond_33a

    :cond_305
    const-wide/32 v13, 0x7fffffff

    cmp-long v21, v0, v13

    if-gtz v21, :cond_33a

    cmp-long v21, v11, v13

    if-gtz v21, :cond_33a

    long-to-int v1, v0

    move-object/from16 v0, p2

    .line 403
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v1, v11

    .line 404
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 405
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    const-wide/32 v7, 0xf4240

    invoke-static {v5, v7, v8, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 406
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v11, v0, v1

    const-wide/32 v13, 0xf4240

    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide v15, v0

    .line 407
    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 409
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_339
    move v9, v0

    .line 415
    :cond_33a
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37c

    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v11, v0, v1

    cmp-long v0, v11, v18

    if-nez v0, :cond_37c

    .line 419
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v11, v0, v1

    const/4 v0, 0x0

    .line 420
    :goto_34e
    array-length v1, v5

    if-ge v0, v1, :cond_365

    .line 421
    aget-wide v13, v5, v0

    sub-long v15, v13, v11

    const-wide/32 v17, 0xf4240

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v19, v13

    .line 422
    invoke-static/range {v15 .. v20}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    aput-wide v13, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34e

    :cond_365
    sub-long v13, v7, v11

    const-wide/32 v15, 0xf4240

    .line 425
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v17, v0

    .line 426
    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 427
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 432
    :cond_37c
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_383

    const/4 v0, 0x1

    goto :goto_384

    :cond_383
    const/4 v0, 0x0

    .line 438
    :goto_384
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 439
    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 440
    :goto_392
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v14, v14

    if-ge v8, v14, :cond_3ff

    .line 441
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    move-object/from16 p1, v2

    move-object/from16 v21, v3

    aget-wide v2, v14, v8

    const-wide/16 v14, -0x1

    cmp-long v16, v2, v14

    if-eqz v16, :cond_3ee

    .line 443
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v22, v14, v8

    iget-wide v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move/from16 v16, v9

    move/from16 v28, v10

    iget-wide v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v24, v14

    move-wide/from16 v26, v9

    .line 444
    invoke-static/range {v22 .. v27}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const/4 v14, 0x1

    .line 446
    invoke-static {v5, v2, v3, v14, v14}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v15

    aput v15, v1, v8

    add-long/2addr v2, v9

    const/4 v9, 0x0

    .line 448
    invoke-static {v5, v2, v3, v0, v9}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v2

    aput v2, v7, v8

    .line 450
    :goto_3c8
    aget v2, v1, v8

    aget v3, v7, v8

    if-ge v2, v3, :cond_3db

    aget v2, v1, v8

    aget v2, v6, v2

    and-int/2addr v2, v14

    if-nez v2, :cond_3db

    .line 456
    aget v2, v1, v8

    add-int/2addr v2, v14

    aput v2, v1, v8

    goto :goto_3c8

    .line 458
    :cond_3db
    aget v2, v7, v8

    aget v3, v1, v8

    sub-int/2addr v2, v3

    add-int/2addr v12, v2

    .line 459
    aget v2, v1, v8

    if-eq v13, v2, :cond_3e7

    const/4 v2, 0x1

    goto :goto_3e8

    :cond_3e7
    const/4 v2, 0x0

    :goto_3e8
    or-int/2addr v2, v11

    .line 460
    aget v3, v7, v8

    move v11, v2

    move v13, v3

    goto :goto_3f4

    :cond_3ee
    move/from16 v16, v9

    move/from16 v28, v10

    const/4 v9, 0x0

    const/4 v14, 0x1

    :goto_3f4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v9, v16

    move-object/from16 v3, v21

    move/from16 v10, v28

    goto :goto_392

    :cond_3ff
    move-object/from16 p1, v2

    move-object/from16 v21, v3

    move v3, v9

    move/from16 v28, v10

    const/4 v9, 0x0

    const/4 v14, 0x1

    if-eq v12, v3, :cond_40b

    goto :goto_40c

    :cond_40b
    const/4 v14, 0x0

    :goto_40c
    or-int v0, v11, v14

    if-eqz v0, :cond_413

    .line 466
    new-array v2, v12, [J

    goto :goto_415

    :cond_413
    move-object/from16 v2, p1

    :goto_415
    if-eqz v0, :cond_41a

    .line 467
    new-array v3, v12, [I

    goto :goto_41c

    :cond_41a
    move-object/from16 v3, v21

    :goto_41c
    if-eqz v0, :cond_420

    const/4 v10, 0x0

    goto :goto_422

    :cond_420
    move/from16 v10, v28

    :goto_422
    if-eqz v0, :cond_427

    .line 469
    new-array v8, v12, [I

    goto :goto_428

    :cond_427
    move-object v8, v6

    .line 470
    :goto_428
    new-array v11, v12, [J

    move-wide/from16 v19, v18

    const/4 v12, 0x0

    .line 473
    :goto_42d
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v13

    if-ge v9, v13, :cond_4a4

    .line 474
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v22, v13, v9

    .line 475
    aget v13, v1, v9

    .line 476
    aget v15, v7, v9

    if-eqz v0, :cond_44e

    sub-int v14, v15, v13

    move-object/from16 v24, v7

    move-object/from16 v7, p1

    .line 479
    invoke-static {v7, v13, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v7, v21

    .line 480
    invoke-static {v7, v13, v3, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    invoke-static {v6, v13, v8, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_452

    :cond_44e
    move-object/from16 v24, v7

    move-object/from16 v7, v21

    :goto_452
    if-ge v13, v15, :cond_491

    const-wide/32 v16, 0xf4240

    move-object/from16 v21, v1

    move-object/from16 v25, v2

    .line 484
    iget-wide v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move/from16 v26, v13

    move-wide/from16 v13, v19

    move/from16 v27, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 485
    aget-wide v13, v5, v26

    sub-long v28, v13, v22

    const-wide/32 v30, 0xf4240

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v13

    .line 486
    invoke-static/range {v28 .. v33}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    add-long/2addr v1, v13

    .line 488
    aput-wide v1, v11, v12

    if-eqz v0, :cond_486

    .line 489
    aget v1, v3, v12

    if-le v1, v10, :cond_486

    .line 490
    aget v1, v7, v26

    move v10, v1

    :cond_486
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v26, 0x1

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move/from16 v15, v27

    goto :goto_452

    :cond_491
    move-object/from16 v21, v1

    move-object/from16 v25, v2

    .line 494
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v13, v1, v9

    add-long v19, v19, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v24

    goto :goto_42d

    :cond_4a4
    move-object/from16 v25, v2

    const-wide/32 v15, 0xf4240

    .line 496
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v13, v19

    move-wide/from16 v17, v0

    .line 497
    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 498
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    move-object v5, v11

    move-object v6, v8

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_4c0
    :goto_4c0
    move-object/from16 p1, v2

    move-object v7, v3

    move/from16 v28, v10

    .line 377
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static {v5, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 378
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v28

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 161
    :cond_4dc
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4e5

    :goto_4e4
    throw v0

    :goto_4e5
    goto :goto_4e4
.end method

.method private static parseStsd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stsd",
            "trackId",
            "rotationDegrees",
            "language",
            "drmInitData",
            "isQuickTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 755
    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 757
    new-instance v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v11, :cond_13a

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "childAtomSize should be positive"

    .line 761
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

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

    .line 806
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    goto :goto_131

    :cond_100
    :goto_100
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 803
    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTextSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;)V

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

    .line 798
    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V

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

    .line 777
    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIIILandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_131
    :goto_131
    add-int v15, v15, v16

    .line 809
    invoke-virtual {v10, v15}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    :cond_13a
    return-object v12
.end method

.method private static parseTextSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;)V
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "atomType",
            "position",
            "atomSize",
            "trackId",
            "language",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 816
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

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

    .line 828
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 829
    invoke-virtual {v0, v3, v4, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 830
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

    .line 839
    iput v0, v2, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_1a

    .line 847
    :goto_50
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v12, p5

    .line 846
    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v2, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    return-void

    .line 842
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_69

    :goto_68
    throw v0

    :goto_69
    goto :goto_68
.end method

.method private static parseTkhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tkhd"
        }
    .end annotation

    const/16 v0, 0x8

    .line 640
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 641
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 642
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_14

    const/16 v3, 0x8

    goto :goto_16

    :cond_14
    const/16 v3, 0x10

    .line 644
    :goto_16
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 645
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 647
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 649
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_28

    const/4 v0, 0x4

    :cond_28
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v0, :cond_3a

    .line 652
    iget-object v8, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

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

    .line 659
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_59

    :cond_46
    if-nez v1, :cond_4d

    .line 662
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_51
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_58

    goto :goto_59

    :cond_58
    move-wide v7, v0

    .line 670
    :goto_59
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 671
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 672
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 673
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 674
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 675
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

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

    .line 690
    :cond_93
    :goto_93
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method public static parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trak",
            "mvhd",
            "duration",
            "drmInitData",
            "ignoreEditLists",
            "isQuickTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 106
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    const v2, 0x68646c72    # 4.3148E24f

    .line 107
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_1f

    return-object v2

    :cond_1f
    const v3, 0x746b6864

    .line 112
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTkhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_3d

    .line 114
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_41

    :cond_3d
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 116
    :goto_41
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_4c

    goto :goto_54

    :cond_4c
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 121
    invoke-static/range {v10 .. v15}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_54
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 123
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v6, 0x7374626c

    .line 124
    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v6, 0x6d646864

    .line 126
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMdhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 127
    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 128
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$200(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 127
    invoke-static/range {v12 .. v17}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseStsd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_a8

    const v6, 0x65647473

    .line 132
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEdts(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    .line 133
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 134
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_ac

    :cond_a8
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 136
    :goto_ac
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_b1

    goto :goto_cc

    .line 137
    :cond_b1
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    iget v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;-><init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_cc
    return-object v2
.end method

.method public static parseUdta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "udtaAtom",
            "isQuickTime"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    .line 522
    :cond_4
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p1, 0x8

    .line 523
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 524
    :goto_b
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, p1, :cond_30

    .line 525
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 526
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 527
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x6d657461

    if-ne v3, v4, :cond_2b

    .line 529
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v2

    .line 530
    invoke-static {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseUdtaMeta(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_2b
    add-int/2addr v1, v2

    .line 532
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b

    :cond_30
    return-object v0
.end method

.method private static parseUdtaMeta(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "meta",
            "limit"
        }
    .end annotation

    const/16 v0, 0xc

    .line 593
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 594
    :goto_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2a

    .line 595
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 596
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 597
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_25

    .line 599
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 600
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_25
    add-int/2addr v0, v1

    .line 602
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    goto :goto_5

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIIILandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "atomType",
            "position",
            "size",
            "trackId",
            "rotationDegrees",
            "drmInitData",
            "out",
            "entryIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 862
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 864
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 866
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/16 v5, 0x32

    .line 869
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    const v7, 0x656e6376

    move/from16 v8, p1

    if-ne v8, v7, :cond_56

    .line 873
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_53

    .line 876
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_41

    move-object v3, v6

    goto :goto_4b

    .line 878
    :cond_41
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    .line 879
    :goto_4b
    iget-object v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    aput-object v7, v9, p8

    .line 881
    :cond_53
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

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

    if-ge v10, v2, :cond_187

    .line 895
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v13

    if-nez v13, :cond_7f

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int/2addr v15, v1

    if-ne v15, v2, :cond_7f

    goto/16 :goto_187

    :cond_7f
    if-lez v13, :cond_83

    const/4 v7, 0x1

    goto :goto_84

    :cond_83
    const/4 v7, 0x0

    :goto_84
    const-string v15, "childAtomSize should be positive"

    .line 902
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    const v15, 0x61766343

    const/4 v1, 0x3

    if-ne v7, v15, :cond_b4

    if-nez v3, :cond_97

    const/4 v15, 0x1

    goto :goto_98

    :cond_97
    const/4 v15, 0x0

    .line 905
    :goto_98
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 907
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 908
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/AvcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-result-object v1

    .line 909
    iget-object v14, v1, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 910
    iget v3, v1, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v6, :cond_b0

    .line 912
    iget v1, v1, Landroidx/media2/exoplayer/external/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v16, v1

    :cond_b0
    const-string v3, "video/avc"

    goto/16 :goto_182

    :cond_b4
    const v15, 0x68766343

    if-ne v7, v15, :cond_d4

    if-nez v3, :cond_bd

    const/4 v15, 0x1

    goto :goto_be

    :cond_bd
    const/4 v15, 0x0

    .line 915
    :goto_be
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 917
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 918
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/HevcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/HevcConfig;

    move-result-object v1

    .line 919
    iget-object v14, v1, Landroidx/media2/exoplayer/external/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 920
    iget v1, v1, Landroidx/media2/exoplayer/external/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    const-string v3, "video/hevc"

    goto/16 :goto_182

    :cond_d4
    const v15, 0x64766343

    if-eq v7, v15, :cond_178

    const v15, 0x64767643

    if-ne v7, v15, :cond_e0

    goto/16 :goto_178

    :cond_e0
    const v15, 0x76706343

    if-ne v7, v15, :cond_fa

    if-nez v3, :cond_e9

    const/4 v15, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v15, 0x0

    .line 928
    :goto_ea
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const v1, 0x76703038

    if-ne v8, v1, :cond_f5

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_f7

    :cond_f5
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_f7
    move-object v3, v1

    goto/16 :goto_182

    :cond_fa
    const v15, 0x61763143

    if-ne v7, v15, :cond_10b

    if-nez v3, :cond_103

    const/4 v15, 0x1

    goto :goto_104

    :cond_103
    const/4 v15, 0x0

    .line 931
    :goto_104
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const-string v3, "video/av01"

    goto/16 :goto_182

    :cond_10b
    const v15, 0x64323633

    if-ne v7, v15, :cond_11c

    if-nez v3, :cond_114

    const/4 v15, 0x1

    goto :goto_115

    :cond_114
    const/4 v15, 0x0

    .line 934
    :goto_115
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    const-string v3, "video/3gpp"

    goto/16 :goto_182

    :cond_11c
    const v15, 0x65736473

    if-ne v7, v15, :cond_13a

    if-nez v3, :cond_125

    const/4 v15, 0x1

    goto :goto_126

    :cond_125
    const/4 v15, 0x0

    .line 937
    :goto_126
    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 939
    invoke-static {v0, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v1

    .line 940
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 941
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_182

    :cond_13a
    const v15, 0x70617370

    if-ne v7, v15, :cond_145

    .line 943
    invoke-static {v0, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parsePaspFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)F

    move-result v16

    const/4 v6, 0x1

    goto :goto_182

    :cond_145
    const v15, 0x73763364

    if-ne v7, v15, :cond_14f

    .line 946
    invoke-static {v0, v10, v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseProjFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)[B

    move-result-object v17

    goto :goto_182

    :cond_14f
    const v10, 0x73743364

    if-ne v7, v10, :cond_182

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 949
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    if-nez v7, :cond_182

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-eqz v7, :cond_175

    const/4 v10, 0x1

    if-eq v7, v10, :cond_172

    const/4 v15, 0x2

    if-eq v7, v15, :cond_16f

    if-eq v7, v1, :cond_16c

    goto :goto_182

    :cond_16c
    const/16 v18, 0x3

    goto :goto_182

    :cond_16f
    const/16 v18, 0x2

    goto :goto_182

    :cond_172
    const/16 v18, 0x1

    goto :goto_182

    :cond_175
    const/16 v18, 0x0

    goto :goto_182

    .line 922
    :cond_178
    :goto_178
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;

    move-result-object v1

    if-eqz v1, :cond_182

    .line 924
    iget-object v9, v1, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    :cond_182
    :goto_182
    add-int/2addr v5, v13

    move/from16 v1, p2

    goto/16 :goto_65

    :cond_187
    :goto_187
    if-nez v3, :cond_18a

    return-void

    .line 980
    :cond_18a
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

    .line 979
    invoke-static/range {v6 .. v20}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method
