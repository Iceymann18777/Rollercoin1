.class public Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static listener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;


# instance fields
.field private ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .registers 1

    .line 19
    sget-object v0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->listener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 61
    sput-object p4, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->listener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 63
    iget-boolean p2, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->mInitialized:Z

    if-nez p2, :cond_18

    .line 64
    new-instance p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {p2, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    .line 65
    new-instance p1, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;

    invoke-direct {p1, p0}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$1;-><init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;)V

    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setVideoListener(Lcom/startapp/android/publish/adsCommon/VideoListener;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->mInitialized:Z

    .line 76
    :cond_18
    sget-object p1, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->listener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->mInitialized:Z

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 81
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    sget-object p2, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance p3, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;

    invoke-direct {p3, p0}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$2;-><init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;)V

    invoke-virtual {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->mInitialized:Z

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public showVideo()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    new-instance v1, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$3;-><init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    return-void
.end method
