.class public Lcom/mopub/mobileads/VastVideoView;
.super Landroid/widget/VideoView;
.source "VastVideoView.java"


# static fields
.field private static final MAX_VIDEO_RETRIES:I = 0x1

.field private static final VIDEO_VIEW_FILE_PERMISSION_ERROR:I = -0x80000000


# instance fields
.field private mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const-string v0, "context cannot be null"

    .line 37
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_12

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    :cond_12
    return-void
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_2a

    .line 52
    new-instance v0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    const/4 p1, 0x0

    const/4 v1, 0x1

    :try_start_13
    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, p1

    .line 56
    invoke-static {v0, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p2

    .line 61
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to blur last video frame"

    aput-object v3, v2, p1

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mBlurLastVideoFrameTask:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-void
.end method

.method setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method
