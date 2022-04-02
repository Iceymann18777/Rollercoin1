.class public final Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media2/exoplayer/external/Format;

.field private final headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J

.field private trackFormatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 89
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    .line 91
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "targetLength"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 166
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private parseHeader()V
    .registers 15

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 200
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseAc3SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;

    move-result-object v0

    .line 201
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_28

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v2, :cond_28

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v1, v2, :cond_28

    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v1, v2, :cond_43

    .line 204
    :cond_28
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    iget v9, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    .line 207
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 209
    :cond_43
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    .line 212
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pesBuffer"
        }
    .end annotation

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_29

    .line 179
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 180
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    .line 183
    :cond_18
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_23

    .line 185
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    return v3

    :cond_23
    if-ne v0, v2, :cond_26

    const/4 v1, 0x1

    .line 188
    :cond_26
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_29
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7a

    .line 116
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5f

    if-eq v0, v3, :cond_41

    if-eq v0, v2, :cond_12

    goto :goto_0

    .line 134
    :cond_12
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 136
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    .line 137
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v2, v7, :cond_0

    .line 138
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 139
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->timeUs:J

    .line 140
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 126
    :cond_41
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->parseHeader()V

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 130
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 118
    :cond_5f
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 122
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    :cond_7a
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "generator"
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 104
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->trackFormatId:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .registers 1

    return-void
.end method

.method public packetStarted(JI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pesTimeUs",
            "flags"
        }
    .end annotation

    .line 110
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->state:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->bytesRead:I

    .line 98
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    return-void
.end method
