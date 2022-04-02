.class final Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected parseHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 65
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v2, 0x1

    if-nez v1, :cond_85

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 67
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_32

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    .line 70
    sget-object v3, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget v10, v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "audio/mpeg"

    .line 71
    invoke-static/range {v4 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 73
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 74
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_82

    :cond_32
    const/4 v6, 0x7

    if-eq v3, v6, :cond_5a

    const/16 v7, 0x8

    if-ne v3, v7, :cond_3a

    goto :goto_5a

    :cond_3a
    const/16 v1, 0xa

    if-ne v3, v1, :cond_3f

    goto :goto_82

    .line 84
    :cond_3f
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_5a
    :goto_5a
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    if-ne v3, v6, :cond_61

    const-string v3, "audio/g711-alaw"

    goto :goto_63

    :cond_61
    const-string v3, "audio/g711-mlaw"

    :goto_63
    move-object v7, v3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_69

    const/4 v13, 0x2

    goto :goto_6a

    :cond_69
    const/4 v13, 0x3

    :goto_6a
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 79
    invoke-static/range {v6 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 81
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 82
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 86
    :goto_82
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_8a

    :cond_85
    move-object/from16 v1, p1

    .line 89
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    :goto_8a
    return v2
.end method

.method protected parsePayload(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "timeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 98
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, v1, v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 99
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p2

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    goto :goto_7a

    .line 101
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5f

    .line 102
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v4, :cond_5f

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 105
    invoke-virtual {v1, v4, v5, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 106
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 108
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 110
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v6, "audio/mp4a-latm"

    .line 108
    invoke-static/range {v5 .. v15}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 111
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 112
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_7a

    .line 113
    :cond_5f
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_67

    if-ne v2, v3, :cond_7a

    .line 114
    :cond_67
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    .line 115
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, v1, v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 116
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/AudioTagPayloadReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v7, p2

    invoke-interface/range {v6 .. v12}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    :cond_7a
    :goto_7a
    return-void
.end method
