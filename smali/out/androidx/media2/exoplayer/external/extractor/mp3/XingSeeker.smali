.class final Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataStartPosition",
            "xingFrameSize",
            "durationUs"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 102
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataStartPosition",
            "xingFrameSize",
            "durationUs",
            "dataSize",
            "tableOfContents"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    .line 117
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    .line 118
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    .line 119
    iput-object p8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 120
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_14

    goto :goto_16

    :cond_14
    add-long p3, p1, p6

    .line 121
    :goto_16
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-void
.end method

.method public static create(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputLength",
            "position",
            "mpegAudioHeader",
            "frame"
        }
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    .line 55
    iget v3, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->samplesPerFrame:I

    .line 56
    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->sampleRate:I

    .line 58
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8a

    .line 60
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_8a

    :cond_19
    int-to-long v7, v6

    int-to-long v9, v3

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    int-to-long v11, v4

    .line 64
    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v17

    const/4 v3, 0x6

    and-int/lit8 v4, v5, 0x6

    if-eq v4, v3, :cond_37

    .line 68
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    invoke-direct/range {v13 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJ)V

    return-object v0

    .line 71
    :cond_37
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x64

    new-array v6, v5, [J

    const/4 v7, 0x0

    :goto_41
    if-ge v7, v5, :cond_4d

    .line 74
    invoke-virtual/range {p5 .. p5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_4d
    const-wide/16 v7, -0x1

    cmp-long v5, v0, v7

    if-eqz v5, :cond_79

    add-long v7, p2, v3

    cmp-long v5, v0, v7

    if-eqz v5, :cond_79

    const/16 v5, 0x43

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "XING data size mismatch: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XingSeeker"

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_79
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;

    iget v1, v2, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    move-wide/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    return-object v0

    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimeUsForTableIndex(I)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tableIndex"
        }
    .end annotation

    .line 193
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDataEndPosition()J
    .registers 3

    .line 183
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 178
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_19

    .line 132
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object p1

    :cond_19
    const-wide/16 v6, 0x0

    .line 134
    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    cmpg-double v8, v0, v4

    if-gtz v8, :cond_3a

    goto :goto_66

    :cond_3a
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_40

    move-wide v4, v6

    goto :goto_66

    :cond_40
    double-to-int v2, v0

    .line 143
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 144
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v8, 0x63

    if-ne v2, v8, :cond_52

    move-wide v8, v6

    goto :goto_57

    :cond_52
    add-int/lit8 v8, v2, 0x1

    .line 145
    aget-wide v8, v3, v8

    long-to-double v8, v8

    :goto_57
    int-to-double v2, v2

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v4

    mul-double v0, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    :goto_66
    div-double/2addr v4, v6

    .line 151
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 153
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v8, v0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v2, 0x1

    sub-long v10, v0, v2

    invoke-static/range {v6 .. v11}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 154
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekPoint;)V

    return-object v2
.end method

.method public getTimeUs(J)J
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 159
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long/2addr p1, v0

    .line 160
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    goto :goto_63

    .line 163
    :cond_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 164
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 165
    invoke-static {v0, v1, v2, v3, v3}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    .line 166
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v2

    .line 167
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 168
    invoke-direct {p0, v6}, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_41

    const-wide/16 v0, 0x100

    goto :goto_44

    .line 169
    :cond_41
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_44
    cmp-long v6, v4, v0

    if-nez v6, :cond_4b

    const-wide/16 p1, 0x0

    goto :goto_56

    :cond_4b
    long-to-double v9, v4

    .line 172
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    :goto_56
    sub-long/2addr v7, v2

    long-to-double v0, v7

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    :cond_63
    :goto_63
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
