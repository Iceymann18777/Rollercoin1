.class public Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
.super Landroid/os/AsyncTask;
.source "VastVideoBlurLastVideoFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final MICROSECONDS_PER_MILLISECOND:I = 0x3e8

.field private static final OFFSET_IN_MICROSECONDS:I = 0x30d40


# instance fields
.field private mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

.field private final mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

.field private mLastVideoFrame:Landroid/graphics/Bitmap;

.field private final mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mVideoDuration:I


# direct methods
.method public constructor <init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 42
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    .line 43
    iput p3, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mVideoDuration:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_47

    .line 48
    array-length v2, p1

    if-eqz v2, :cond_47

    aget-object v2, p1, v0

    if-nez v2, :cond_f

    goto :goto_47

    :cond_f
    const/4 v2, 0x1

    .line 53
    :try_start_10
    aget-object p1, p1, v0

    .line 55
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget v3, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mVideoDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0x30d40

    sub-int/2addr v3, v4

    int-to-long v3, v3

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mLastVideoFrame:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2c

    return-object v1

    :cond_2c
    const/4 v3, 0x4

    .line 68
    invoke-static {p1, v3}, Lcom/mopub/common/util/ImageUtils;->applyFastGaussianBlurToBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_38

    return-object p1

    :catch_38
    move-exception p1

    .line 73
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Failed to blur last video frame"

    aput-object v5, v4, v0

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_47
    :goto_47
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method getBlurredLastVideoFrame()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onCancelled()V
    .registers 5

    .line 94
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VastVideoBlurLastVideoFrameTask was cancelled."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->onCancelled()V

    return-void

    :cond_a
    if-eqz p1, :cond_20

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 86
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->mBlurredLastVideoFrameImageView:Landroid/widget/ImageView;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_20
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
