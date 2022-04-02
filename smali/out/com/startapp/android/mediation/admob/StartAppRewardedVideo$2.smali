.class Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
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

    .line 81
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    .line 89
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 84
    invoke-static {}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method
