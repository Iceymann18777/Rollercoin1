.class Lcom/mopub/mobileads/StartAppRewardedVideo$3;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppRewardedVideo;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
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

    .line 88
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo$3;->this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 97
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo$3;->this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/mobileads/StartAppRewardedVideo;->access$002(Lcom/mopub/mobileads/StartAppRewardedVideo;Z)Z

    .line 98
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "StartApp"

    invoke-static {p1, v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 91
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo$3;->this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mopub/mobileads/StartAppRewardedVideo;->access$002(Lcom/mopub/mobileads/StartAppRewardedVideo;Z)Z

    .line 92
    const-class p1, Lcom/mopub/mobileads/StartAppRewardedVideo;

    const-string v0, "StartApp"

    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
