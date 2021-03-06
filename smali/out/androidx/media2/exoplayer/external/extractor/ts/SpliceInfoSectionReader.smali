.class public final Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;


# instance fields
.field private formatDeclared:Z

.field private output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionData"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    if-nez v0, :cond_29

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    return-void

    .line 58
    :cond_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 59
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    .line 58
    invoke-static {v1, v4, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->formatDeclared:Z

    .line 62
    :cond_29
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 64
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public init(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "extractorOutput",
            "idGenerator"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 45
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 46
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;->output:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 47
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
