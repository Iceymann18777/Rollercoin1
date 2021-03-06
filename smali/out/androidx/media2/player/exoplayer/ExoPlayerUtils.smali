.class Landroidx/media2/player/exoplayer/ExoPlayerUtils;
.super Ljava/lang/Object;
.source "ExoPlayerUtils.java"


# static fields
.field private static final sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;->setAdtsExtractorFlags(I)Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method public static createUnclippedMediaSource(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/common/MediaItem;)Landroidx/media2/exoplayer/external/source/MediaSource;
    .registers 9

    .line 88
    instance-of v0, p2, Landroidx/media2/common/UriMediaItem;

    if-eqz v0, :cond_be

    .line 89
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/UriMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/UriMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 91
    new-instance p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    .line 92
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    move-result-object p0

    .line 93
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 95
    :cond_20
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_63

    .line 99
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "\\d+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_9f

    :cond_63
    const-string v2, "^/"

    const-string v5, ""

    .line 102
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_87

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "raw"

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_9f
    if-eqz p0, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 v3, 0x0

    .line 108
    :goto_a3
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 109
    invoke-static {p0}, Landroidx/media2/exoplayer/external/upstream/RawResourceDataSource;->buildRawResourceUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 111
    :cond_aa
    new-instance p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object p1, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 112
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object p0

    return-object p0

    .line 116
    :cond_be
    instance-of p0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz p0, :cond_d8

    .line 117
    new-instance p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object p1, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 118
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 119
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 120
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object p0

    return-object p0

    .line 121
    :cond_d8
    instance-of p0, p2, Landroidx/media2/common/CallbackMediaItem;

    if-eqz p0, :cond_fd

    .line 122
    move-object p0, p2

    check-cast p0, Landroidx/media2/common/CallbackMediaItem;

    .line 124
    invoke-virtual {p0}, Landroidx/media2/common/CallbackMediaItem;->getDataSourceCallback()Landroidx/media2/common/DataSourceCallback;

    move-result-object p0

    .line 123
    invoke-static {p0}, Landroidx/media2/player/exoplayer/DataSourceCallbackDataSource;->getFactory(Landroidx/media2/common/DataSourceCallback;)Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    move-result-object p0

    .line 125
    new-instance p1, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    sget-object p0, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->sExtractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 126
    invoke-virtual {p1, p0}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;

    move-result-object p0

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 128
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    move-result-object p0

    return-object p0

    .line 130
    :cond_fd
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static getAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media2/exoplayer/external/audio/AudioAttributes;
    .registers 3

    .line 136
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;-><init>()V

    .line 137
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setContentType(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setFlags(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->setUsage(I)Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/AudioAttributes$Builder;->build()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioAttributesCompat(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)Landroidx/media/AudioAttributesCompat;
    .registers 3

    .line 145
    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->contentType:I

    .line 146
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->flags:I

    .line 147
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setFlags(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->usage:I

    .line 148
    invoke-virtual {v0, p0}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)I
    .registers 2

    .line 177
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    if-nez v0, :cond_21

    .line 178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p0

    .line 179
    instance-of v0, p0, Landroidx/media2/exoplayer/external/ParserException;

    if-eqz v0, :cond_f

    const/16 p0, -0x3ef

    return p0

    .line 182
    :cond_f
    instance-of v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v0, :cond_1e

    .line 183
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1e

    const/16 p0, -0x6e

    return p0

    :cond_1e
    const/16 p0, -0x3ec

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static getMediaFormat(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;
    .registers 11

    .line 232
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 233
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "mime"

    .line 234
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const-string v4, "language"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2e

    .line 237
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 239
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_a5

    .line 240
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    :cond_2e
    const/4 v6, 0x2

    if-ne v3, v6, :cond_53

    .line 243
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const-string v2, "width"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 244
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 245
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 247
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V

    goto :goto_a5

    :cond_53
    const/4 v7, 0x3

    if-ne v3, v7, :cond_a5

    .line 251
    iget v3, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v3, v7, :cond_5e

    const/4 v3, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x0

    .line 252
    :goto_5f
    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v7, v5, :cond_65

    const/4 v7, 0x1

    goto :goto_66

    :cond_65
    const/4 v7, 0x0

    .line 253
    :goto_66
    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v9, v6, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v5, 0x0

    :goto_6c
    const-string v6, "is-autoselect"

    .line 254
    invoke-virtual {v0, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-default"

    .line 255
    invoke-virtual {v0, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "is-forced-subtitle"

    .line 256
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 257
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-nez v3, :cond_85

    const-string p0, "und"

    .line 258
    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 260
    :cond_85
    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v4, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8a
    const-string p0, "application/cea-608"

    .line 263
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_98

    const-string p0, "text/cea-608"

    .line 264
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_98
    const-string p0, "application/cea-708"

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    const-string p0, "text/cea-708"

    .line 266
    invoke-virtual {v0, v2, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    :goto_a5
    return-object v0
.end method

.method public static getPlaybackParameters(Landroidx/media2/player/PlaybackParams;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 4

    .line 154
    invoke-virtual {p0}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroidx/media2/player/PlaybackParams;->getPitch()Ljava/lang/Float;

    move-result-object p0

    .line 156
    new-instance v1, Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_15

    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_15
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_1b
    invoke-direct {v1, v0, v2}, Landroidx/media2/exoplayer/external/PlaybackParameters;-><init>(FF)V

    return-object v1
.end method

.method public static getSeekParameters(I)Landroidx/media2/exoplayer/external/SeekParameters;
    .registers 2

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    .line 163
    sget-object p0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object p0

    .line 171
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 165
    :cond_14
    sget-object p0, Landroidx/media2/exoplayer/external/SeekParameters;->CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object p0

    .line 167
    :cond_17
    sget-object p0, Landroidx/media2/exoplayer/external/SeekParameters;->NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object p0

    .line 169
    :cond_1a
    sget-object p0, Landroidx/media2/exoplayer/external/SeekParameters;->PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    return-object p0
.end method
