.class Lcom/mopub/mobileads/StartAppRewardedVideo$1;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppRewardedVideo;->showVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/StartAppRewardedVideo;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo$1;->this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 49
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    const-string v0, "StartApp"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 44
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    const-string v0, "StartApp"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 39
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    const-string v0, "StartApp"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 54
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "StartApp"

    invoke-static {p1, v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
