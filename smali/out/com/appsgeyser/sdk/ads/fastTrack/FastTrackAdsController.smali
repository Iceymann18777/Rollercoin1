.class public Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;,
        Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# instance fields
.field private adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

.field private bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private consentPendingBlocker:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreenPendingLoadTag:Ljava/lang/String;

.field private fullscreenPendingPlacementTag:Ljava/lang/String;

.field private fullscreenPendingUseFrequencyTimer:Z

.field private isActive:Z

.field private nativeAdsPublishSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    .line 37
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    .line 38
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    .line 39
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeAdsPublishSubject:Lrx/subjects/BehaviorSubject;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .registers 2

    const-class v0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    if-nez v1, :cond_e

    .line 46
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;-><init>()V

    sput-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    .line 48
    :cond_e
    sget-object v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->instance:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private init(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .registers 8

    .line 60
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getConfigPhp()Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getActiveAdsSDK()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x39749d03

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_36

    const v3, -0xf8edfe1

    if-eq v2, v3, :cond_2c

    const v3, 0x391b6b94

    if-eq v2, v3, :cond_22

    goto :goto_40

    :cond_22
    const-string v2, "facebookSdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x2

    goto :goto_41

    :cond_2c
    const-string v2, "mopubSdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_36
    const-string v2, "admobSdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v1, -0x1

    :goto_41
    const-string v2, "fastTrackTag"

    if-eqz v1, :cond_94

    if-eq v1, v5, :cond_83

    if-eq v1, v4, :cond_72

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown adsAdapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " . Disabling ads controller."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackDisabledAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_a4

    :cond_72
    const-string v1, "initializing facebook adsAdapter"

    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_a4

    :cond_83
    const-string v1, "initializing mopub adsAdapter"

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    goto :goto_a4

    :cond_94
    const-string v1, "initializing admob adsAdapter"

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    .line 83
    :goto_a4
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->loadFullscreen()V

    .line 84
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$MJ40-uST79s2Q36nLMwJceHje8A;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$MJ40-uST79s2Q36nLMwJceHje8A;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 85
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 86
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$Bhk5kkCzW4qovUastg9szpspU1Y;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$Bhk5kkCzW4qovUastg9szpspU1Y;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 87
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->nativeAdsPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$H_4Q9xBKHf-RuzsMP0oeIUbwgzw;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$H_4Q9xBKHf-RuzsMP0oeIUbwgzw;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    .line 91
    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 92
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->loadRewardedVideo()V

    .line 93
    iput-boolean v5, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    if-eqz v0, :cond_dd

    .line 95
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_dd
    return-void
.end method

.method public static synthetic lambda$DjMb6RrDcbFSuxjDeV9VLJ7r7aM(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->init(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;)V

    return-void
.end method


# virtual methods
.method public consentRequestProcessFinished()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$DjMb6RrDcbFSuxjDeV9VLJ7r7aM;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$DjMb6RrDcbFSuxjDeV9VLJ7r7aM;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    return v0
.end method

.method public synthetic lambda$init$0$FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    return-void
.end method

.method public synthetic lambda$init$1$FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    .line 88
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->getBannerViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->getPlacementTag()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$init$2$FastTrackAdsController(Ljava/lang/Integer;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->loadNativeAds(I)V

    return-void
.end method

.method public synthetic lambda$showFullscreen$3$FastTrackAdsController(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->showFullscreen(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "fastTrackTag"

    const-string p2, "attempt to show fullscreen"

    .line 118
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    if-eqz v0, :cond_7

    .line 236
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    :cond_7
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    if-eqz v0, :cond_7

    .line 242
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public requestInit(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->consentPendingBlocker:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setBannerViewContainer(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 5

    .line 154
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchased()Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_23

    const/16 v0, 0x8

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->bannerViewPlacementPublishSubject:Lrx/subjects/BehaviorSubject;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1c
    const-string p1, "fastTrackTag"

    const-string p2, "bannerView attach cancelled, ads disabled by in app purchase"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 145
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenListenerPublishSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    .line 109
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchased()Z

    move-result v0

    const-string v1, "fastTrackTag"

    if-nez v0, :cond_58

    .line 110
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive()Z

    move-result v0

    if-nez v0, :cond_4c

    if-eqz p2, :cond_2b

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setContext(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v1, p2}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->setProgressDialog(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    .line 115
    :cond_2b
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    .line 122
    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    goto :goto_6e

    .line 124
    :cond_4c
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    .line 126
    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    const-string p1, "fasttrack controller not activated"

    .line 127
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 130
    :cond_58
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getFullscreenListener()Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 131
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->getFullscreenListener()Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_69
    const-string p1, "fullscreen request cancelled, ads disabled by in app purchase"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void
.end method

.method public showPendingFullscreen(Landroid/content/Context;)V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingLoadTag:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 139
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingPlacementTag:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->fullscreenPendingUseFrequencyTimer:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showFullscreen(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_b
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .registers 5

    .line 169
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchased()Z

    move-result v0

    const-string v1, "fastTrackTag"

    if-nez v0, :cond_26

    if-eqz p1, :cond_30

    .line 171
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive:Z

    if-eqz v0, :cond_1d

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->adsAdapter:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    const-string p1, "attempt to show rewardedVideo"

    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 175
    :cond_1d
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    const-string p1, "fasttrack controller not activated"

    .line 176
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_26
    if-eqz p1, :cond_2b

    .line 181
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    :cond_2b
    const-string p1, "rewarded request cancelled, ads disabled by in app purchase"

    .line 183
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-void
.end method
