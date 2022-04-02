.class public final Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media2/exoplayer/external/Format;

.field private hasCRC:Z

.field private final headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

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

    .line 77
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 87
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 89
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 90
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 91
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

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

    .line 166
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 168
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private parseHeader()V
    .registers 14

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->setPosition(I)V

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media2/exoplayer/external/util/ParsableBitArray;)Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 200
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_2c

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v2, :cond_2c

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/ac4"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 204
    :cond_2c
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->trackFormatId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    const-string v3, "audio/ac4"

    .line 205
    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    .line 217
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 219
    :cond_47
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    .line 222
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->format:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleDurationUs:J

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

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_31

    .line 181
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 182
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_0

    .line 185
    :cond_18
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 186
    :goto_21
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_2b

    if-ne v0, v4, :cond_0

    :cond_2b
    if-ne v0, v4, :cond_2e

    const/4 v1, 0x1

    .line 188
    :cond_2e
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    return v3

    :cond_31
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

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_83

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5f

    if-eq v0, v3, :cond_41

    if-eq v0, v2, :cond_12

    goto :goto_0

    .line 136
    :cond_12
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 138
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 139
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v2, v7, :cond_0

    .line 140
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 141
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    .line 142
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 128
    :cond_41
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->continueRead(Landroidx/media2/exoplayer/external/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->parseHeader()V

    .line 130
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 132
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 120
    :cond_5f
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->skipToNextSync(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v1, :cond_7a

    const/16 v1, 0x41

    goto :goto_7c

    :cond_7a
    const/16 v1, 0x40

    :goto_7c
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 124
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_83
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

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->trackFormatId:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

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

    .line 112
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->state:I

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->bytesRead:I

    .line 99
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 100
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;->hasCRC:Z

    return-void
.end method
