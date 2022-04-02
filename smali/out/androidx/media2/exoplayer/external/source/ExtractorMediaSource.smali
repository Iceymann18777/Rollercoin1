.class public final Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "ExtractorMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "dataSourceFactory",
            "extractorsFactory",
            "loadableLoadErrorHandlingPolicy",
            "customCacheKey",
            "continueLoadingCheckIntervalBytes",
            "tag"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 332
    new-instance v8, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v0, p0

    iput-object v8, v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$1;)V
    .registers 9

    .line 46
    invoke-direct/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "allocator",
            "startPositionUs"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 346
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timeline",
            "manifest"
        }
    .end annotation

    .line 377
    invoke-virtual {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;->progressiveMediaSource:Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    return-void
.end method
