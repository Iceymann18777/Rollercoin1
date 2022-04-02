.class public Lcom/mopub/mobileads/StartAppRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "StartAppRewardedVideo.java"


# static fields
.field private static final thirdPartyId:Ljava/lang/String; = "StartApp"


# instance fields
.field private ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

.field private adTag:Ljava/lang/String;

.field private isInitialized:Z

.field private isLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/StartAppRewardedVideo;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->isLoaded:Z

    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-boolean p2, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->isInitialized:Z

    const/4 v0, 0x1

    if-nez p2, :cond_21

    .line 70
    invoke-static {p1, p3}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->checkInit(Landroid/content/Context;Ljava/util/Map;)V

    const-string p2, "adTag"

    .line 71
    invoke-static {p2, p3}, Lcom/mopub/mobileads/StartAppCustomEventUtils;->getStringFromExtras(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->adTag:Ljava/lang/String;

    .line 72
    new-instance p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {p2, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    .line 73
    new-instance p1, Lcom/mopub/mobileads/StartAppRewardedVideo$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/StartAppRewardedVideo$2;-><init>(Lcom/mopub/mobileads/StartAppRewardedVideo;)V

    invoke-virtual {p2, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setVideoListener(Lcom/startapp/android/publish/adsCommon/VideoListener;)V

    .line 81
    iput-boolean v0, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->isInitialized:Z

    :cond_21
    return v0
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .registers 2

    const-string v0, "StartApp"

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->isLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    sget-object p2, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance p3, Lcom/mopub/mobileads/StartAppRewardedVideo$3;

    invoke-direct {p3, p0}, Lcom/mopub/mobileads/StartAppRewardedVideo$3;-><init>(Lcom/mopub/mobileads/StartAppRewardedVideo;)V

    invoke-virtual {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 1

    return-void
.end method

.method protected showVideo()V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->ad:Lcom/startapp/android/publish/adsCommon/StartAppAd;

    iget-object v1, p0, Lcom/mopub/mobileads/StartAppRewardedVideo;->adTag:Ljava/lang/String;

    new-instance v2, Lcom/mopub/mobileads/StartAppRewardedVideo$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/StartAppRewardedVideo$1;-><init>(Lcom/mopub/mobileads/StartAppRewardedVideo;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    return-void
.end method
