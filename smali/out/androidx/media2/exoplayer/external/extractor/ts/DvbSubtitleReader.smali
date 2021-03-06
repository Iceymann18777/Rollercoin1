.class public final Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subtitleInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    return-void
.end method

.method private checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "expectedValue"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 129
    :cond_8
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 130
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 132
    :cond_10
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 133
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p1
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3c

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 111
    :cond_12
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 115
    :cond_1f
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 117
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v4, v3

    :goto_2a
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    .line 118
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-interface {v5, p1, v2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 121
    :cond_37
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3c
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 14
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

    const/4 v0, 0x0

    .line 65
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 67
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v2

    .line 71
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 76
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v4, "application/dvbsubs"

    .line 70
    invoke-static/range {v3 .. v10}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 69
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 79
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    return-void
.end method

.method public packetFinished()V
    .registers 12

    .line 96
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_1c

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 98
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 100
    :cond_1a
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_1c
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

    .line 88
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 89
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    .line 91
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return-void
.end method
