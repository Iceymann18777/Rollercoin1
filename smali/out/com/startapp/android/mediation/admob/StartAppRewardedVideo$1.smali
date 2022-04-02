.class Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .registers 6

    .line 68
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoCompleted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 69
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    new-instance v2, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;

    const-string v3, "startapp"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;-><init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    return-void
.end method
