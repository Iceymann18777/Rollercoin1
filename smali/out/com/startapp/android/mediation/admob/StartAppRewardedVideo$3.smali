.class Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->showVideo()V
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

    .line 96
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 110
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public adDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 105
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public adHidden(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 99
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    return-void
.end method
