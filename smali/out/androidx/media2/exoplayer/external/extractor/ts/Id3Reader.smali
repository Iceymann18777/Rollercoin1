.class public final Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# instance fields
.field private final id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_5

    return-void

    .line 89
    :cond_5
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 90
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_68

    rsub-int/lit8 v1, v1, 0xa

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93
    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_68

    .line 97
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x49

    .line 98
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-ne v1, v4, :cond_5e

    const/16 v1, 0x44

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-ne v1, v4, :cond_5e

    const/16 v1, 0x33

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 99
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eq v1, v4, :cond_4e

    goto :goto_5e

    .line 104
    :cond_4e
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 105
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->id3Header:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_68

    :cond_5e
    :goto_5e
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 100
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    return-void

    .line 109
    :cond_68
    :goto_68
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 111
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 69
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method public packetFinished()V
    .registers 9

    .line 116
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_1a

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v5, :cond_1a

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, v5, :cond_d

    goto :goto_1a

    .line 119
    :cond_d
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    :cond_1a
    :goto_1a
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

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 78
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    .line 79
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleSize:I

    .line 81
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;->writingSample:Z

    return-void
.end method
