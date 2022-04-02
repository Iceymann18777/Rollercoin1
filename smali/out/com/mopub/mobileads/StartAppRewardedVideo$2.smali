.class Lcom/mopub/mobileads/StartAppRewardedVideo$2;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppRewardedVideo;->checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
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

    .line 73
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo$2;->this$0:Lcom/mopub/mobileads/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .registers 4

    .line 76
    const-class v0, Lcom/mopub/mobileads/StartAppRewardedVideo;

    const-string v1, "StartApp"

    const/4 v2, 0x1

    .line 77
    invoke-static {v1, v2}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    .line 76
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method
