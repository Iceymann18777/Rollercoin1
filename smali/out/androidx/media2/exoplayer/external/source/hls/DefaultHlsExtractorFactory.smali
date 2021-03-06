.class public final Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "payloadReaderFactoryFlags",
            "exposeCea608WhenMissingDeclarations"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 88
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractor"
        }
    .end annotation

    .line 304
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_15

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_15

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_15

    instance-of v1, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    .line 310
    :goto_16
    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;-><init>(Landroidx/media2/exoplayer/external/extractor/Extractor;ZZ)V

    return-object v0
.end method

.method private static buildResultForSameExtractorType(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previousExtractor",
            "format",
            "timestampAdjuster"
        }
    .end annotation

    .line 288
    instance-of v0, p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    if-eqz v0, :cond_10

    .line 289
    new-instance p0, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 290
    :cond_10
    instance-of p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-eqz p1, :cond_1e

    .line 291
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 292
    :cond_1e
    instance-of p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-eqz p1, :cond_2c

    .line 293
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 294
    :cond_2c
    instance-of p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-eqz p1, :cond_3a

    .line 295
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    .line 296
    :cond_3a
    instance-of p0, p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-eqz p0, :cond_48

    .line 297
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>()V

    invoke-static {p0}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p0

    return-object p0

    :cond_48
    const/4 p0, 0x0

    return-object p0
.end method

.method private createExtractorByFileExtension(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/Extractor;
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
            "uri",
            "format",
            "muxedCaptionFormats",
            "drmInitData",
            "timestampAdjuster"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ")",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""

    .line 200
    :cond_8
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    const-string v0, ".webvtt"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    const-string v0, ".vtt"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_a7

    :cond_24
    const-string v0, ".aac"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 205
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    :cond_32
    const-string v0, ".ac3"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, ".ec3"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_a1

    :cond_43
    const-string v0, ".ac4"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 210
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    :cond_51
    const-string v0, ".mp3"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 212
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    :cond_62
    const-string v0, ".mp4"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ".m4"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    const-string v1, ".cmf"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_93

    goto :goto_9c

    .line 220
    :cond_93
    iget p1, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean p4, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {p1, p4, p2, p3, p5}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    .line 217
    :cond_9c
    :goto_9c
    invoke-static {p5, p4, p3}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 208
    :cond_a1
    :goto_a1
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1

    .line 203
    :cond_a7
    :goto_a7
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p5}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    return-object p1
.end method

.method private static createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampAdjuster",
            "drmInitData",
            "muxedCaptionFormats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)",
            "Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 278
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p2, :cond_5

    goto :goto_9

    .line 283
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_9
    move-object v5, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v6
.end method

.method private static createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProvidedPayloadReaderFactoryFlags",
            "exposeCea608WhenMissingDeclarations",
            "format",
            "muxedCaptionFormats",
            "timestampAdjuster"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ")",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_7

    or-int/lit8 p0, p0, 0x20

    goto :goto_1a

    :cond_7
    if-eqz p1, :cond_16

    const/4 p1, 0x0

    const/4 p3, 0x0

    const-string v0, "application/cea-608"

    .line 247
    invoke-static {p3, v0, p1, p3}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    .line 246
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_1a

    .line 253
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 255
    :goto_1a
    iget-object p1, p2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3e

    .line 260
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    or-int/lit8 p0, p0, 0x2

    .line 263
    :cond_30
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    or-int/lit8 p0, p0, 0x4

    .line 268
    :cond_3e
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    new-instance p2, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {p2, p0, p3}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousExtractor"
        }
    .end annotation

    .line 327
    instance-of v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    if-nez v0, :cond_b

    instance-of p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractor",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/extractor/Extractor;->sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_d
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 321
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_11

    :catchall_8
    move-exception p0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    throw p0

    :catch_d
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public createExtractor(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "previousExtractor",
            "uri",
            "format",
            "muxedCaptionFormats",
            "drmInitData",
            "timestampAdjuster",
            "responseHeaders",
            "extractorInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media2/exoplayer/external/extractor/ExtractorInput;",
            ")",
            "Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_37

    .line 105
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->isReusable(Landroidx/media2/exoplayer/external/extractor/Extractor;)Z

    move-result p7

    if-eqz p7, :cond_d

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 109
    :cond_d
    invoke-static {p1, p3, p6}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResultForSameExtractorType(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p7

    if-nez p7, :cond_37

    .line 111
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unexpected previousExtractor type: "

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_2e

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_2e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_37
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 119
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileExtension(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object p1

    .line 121
    invoke-interface {p8}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 122
    invoke-static {p1, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 123
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 129
    :cond_4f
    instance-of p2, p1, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    if-nez p2, :cond_65

    .line 130
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;

    iget-object p7, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-direct {p2, p7, p6}, Landroidx/media2/exoplayer/external/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    .line 131
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_65

    .line 132
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 136
    :cond_65
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_79

    .line 137
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;-><init>()V

    .line 138
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_79

    .line 139
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 143
    :cond_79
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_8d

    .line 144
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Extractor;-><init>()V

    .line 145
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_8d

    .line 146
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 150
    :cond_8d
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    if-nez p2, :cond_a1

    .line 151
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Extractor;-><init>()V

    .line 152
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_a1

    .line 153
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 157
    :cond_a1
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    if-nez p2, :cond_b8

    .line 158
    new-instance p2, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p2, p7, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 160
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p7

    if-eqz p7, :cond_b8

    .line 161
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 165
    :cond_b8
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    if-nez p2, :cond_cb

    .line 167
    invoke-static {p6, p5, p4}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p2

    .line 168
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p5

    if-eqz p5, :cond_cb

    .line 169
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 173
    :cond_cb
    instance-of p2, p1, Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    if-nez p2, :cond_e2

    .line 174
    iget p2, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean p5, p0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 175
    invoke-static {p2, p5, p3, p4, p6}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLandroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/extractor/ts/TsExtractor;

    move-result-object p2

    .line 181
    invoke-static {p2, p8}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result p3

    if-eqz p3, :cond_e2

    .line 182
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1

    .line 187
    :cond_e2
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsExtractorFactory;->buildResult(Landroidx/media2/exoplayer/external/extractor/Extractor;)Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;

    move-result-object p1

    return-object p1
.end method
