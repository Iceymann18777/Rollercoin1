.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hlsDataSourceFactory"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 101
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 102
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 103
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;->DEFAULT:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 104
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 105
    new-instance p1, Landroidx/media2/exoplayer/external/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceFactory"
        }
    .end annotation

    .line 90
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;)V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playlistUri"
        }
    .end annotation

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    .line 273
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->streamKeys:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 274
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 277
    :cond_10
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;

    .line 283
    invoke-interface {v1, v5, v8, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget-boolean v11, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    iget-object v12, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;)V

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method
