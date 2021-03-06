.class public final Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private final extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private final loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final tag:Ljava/lang/Object;

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 8
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

    .line 219
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 220
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->uri:Landroid/net/Uri;

    .line 221
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 222
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 223
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 224
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->customCacheKey:Ljava/lang/String;

    .line 225
    iput p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 227
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "durationUs",
            "isSeekable"
        }
    .end annotation

    .line 291
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 292
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 294
    new-instance p1, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->refreshSourceInfo(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .registers 15
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

    .line 249
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;->createDataSource()Landroidx/media2/exoplayer/external/upstream/DataSource;

    move-result-object v2

    .line 250
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    if-eqz p3, :cond_d

    .line 251
    invoke-interface {v2, p3}, Landroidx/media2/exoplayer/external/upstream/DataSource;->addTransferListener(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    .line 253
    :cond_d
    new-instance p3, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->uri:Landroid/net/Uri;

    iget-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 256
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 258
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v5

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->customCacheKey:Ljava/lang/String;

    iget v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;[Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;Landroidx/media2/exoplayer/external/upstream/Allocator;Ljava/lang/String;I)V

    return-object p3
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "durationUs",
            "isSeekable"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 280
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 281
    :cond_b
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_16

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_16

    return-void

    .line 285
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->transferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 239
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    .line 267
    check-cast p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 1

    return-void
.end method
