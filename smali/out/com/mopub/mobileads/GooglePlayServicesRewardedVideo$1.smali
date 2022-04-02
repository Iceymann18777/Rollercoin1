.class Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;
.super Lcom/mopub/common/BaseLifecycleListener;
.source "GooglePlayServicesRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-direct {p0}, Lcom/mopub/common/BaseLifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(Landroid/app/Activity;)V
    .registers 3

    .line 62
    invoke-super {p0, p1}, Lcom/mopub/common/BaseLifecycleListener;->onPause(Landroid/app/Activity;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->pause(Landroid/content/Context;)V

    :cond_14
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Lcom/mopub/common/BaseLifecycleListener;->onResume(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;->access$000(Lcom/mopub/mobileads/GooglePlayServicesRewardedVideo;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->resume(Landroid/content/Context;)V

    :cond_14
    return-void
.end method
