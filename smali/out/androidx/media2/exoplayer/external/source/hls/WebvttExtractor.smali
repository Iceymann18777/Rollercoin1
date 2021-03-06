.class public final Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "LOCAL:([^,]+)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "language",
            "timestampAdjuster"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 70
    new-instance p1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subsampleOffsetUs"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    .line 186
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 188
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method private processSample()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 138
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 141
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 149
    :cond_e
    :goto_e
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_88

    const-string v8, "X-TIMESTAMP-MAP"

    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 151
    sget-object v3, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 153
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_40
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_46
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_4a
    sget-object v4, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_73

    .line 157
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_69
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_6f
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_73
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v5

    .line 160
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v3

    goto :goto_e

    .line 165
    :cond_88
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->findNextCueHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_92

    .line 168
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    return-void

    .line 172
    :cond_92
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    .line 173
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    .line 174
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->usToPts(J)J

    move-result-wide v3

    .line 173
    invoke-virtual {v2, v3, v4}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 177
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->buildTrackOutput(J)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v5

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v0, v1}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    const/4 v8, 0x1

    .line 181
    iget v9, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->output:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 98
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V

    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "seekPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1c

    if-eq p2, v3, :cond_11

    move v0, p2

    goto :goto_12

    .line 120
    :cond_11
    array-length v0, v1

    :goto_12
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 119
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    .line 124
    :cond_1c
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_33

    .line 126
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleSize:I

    if-eq p2, v3, :cond_31

    if-eq v0, p2, :cond_33

    :cond_31
    const/4 p1, 0x0

    return p1

    .line 133
    :cond_33
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->processSample()V

    return v3
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    invoke-virtual {v0, v3, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_18
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 91
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleData:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 92
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;->sampleDataWrapper:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Z

    move-result p1

    return p1
.end method
