.class public Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "SourceFile"


# static fields
.field public static final AppnextConfigurationExtraKey:Ljava/lang/String; = "AppnextConfiguration"


# instance fields
.field protected mBanner:Lcom/appnext/banners/BannerView;

.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object p0
.end method


# virtual methods
.method protected createBannerView(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/banners/BannerView;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/banners/BannerView;"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p2

    const-string v0, "tid"

    const-string v1, "311"

    invoke-virtual {p2, v0, v1}, Lcom/appnext/banners/d;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p2, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMopubBannerView;

    invoke-direct {p2, p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMopubBannerView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p3}, Lcom/appnext/sdk/adapters/mopub/banners/Helper;->getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appnext/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

    .line 53
    invoke-static {p3}, Lcom/appnext/sdk/adapters/mopub/banners/Helper;->getBannerSize(Ljava/util/Map;)Lcom/appnext/banners/BannerSize;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-object p2

    :catchall_1f
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AppnextMoPubCustomEventBanner createAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected hasAdConfigServerExtras(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_5a

    .line 65
    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/Helper;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextCreativeType"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextCategories"

    .line 67
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextPostback"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextMute"

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextVideoLength"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextMaxVideoLen"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextMinVideoLen"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextClickEnabled"

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextAutoPlay"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "AppnextLanguage"

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    :cond_58
    const/4 p1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    return p1
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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

    .line 161
    iput-object p2, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 162
    invoke-virtual {p0, p1, p3, p4}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->createBannerView(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lcom/appnext/banners/BannerView;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    if-nez p1, :cond_12

    .line 164
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_12
    const/4 p1, 0x0

    const-string p2, "AppnextLanguage"

    if-eqz p3, :cond_36

    const-string p1, "AppnextConfiguration"

    .line 170
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 171
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 172
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/appnext/banners/BannerView;->setLanguage(Ljava/lang/String;)V

    :cond_36
    if-nez p1, :cond_5a

    .line 176
    new-instance p1, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {p1}, Lcom/appnext/banners/BannerAdRequest;-><init>()V

    .line 177
    invoke-virtual {p0, p4}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->hasAdConfigServerExtras(Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 178
    move-object p3, p1

    check-cast p3, Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p0, p3, p4}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->setConfigFromExtras(Lcom/appnext/banners/BannerAdRequest;Ljava/util/Map;)V

    .line 181
    :cond_49
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5a

    .line 182
    iget-object p3, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/appnext/banners/BannerView;->setLanguage(Ljava/lang/String;)V

    .line 186
    :cond_5a
    :try_start_5a
    iget-object p2, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    new-instance p3, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;

    invoke-direct {p3, p0}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;-><init>(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)V

    invoke-virtual {p2, p3}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 223
    iget-object p2, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    check-cast p1, Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p2, p1}, Lcom/appnext/banners/BannerView;->loadAd(Lcom/appnext/banners/BannerAdRequest;)V
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_6c

    return-void

    :catchall_6c
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "requestBannerAd: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    if-eqz v0, :cond_7

    .line 234
    invoke-virtual {v0}, Lcom/appnext/banners/BannerView;->destroy()V

    :cond_7
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    return-void
.end method

.method protected setConfigFromExtras(Lcom/appnext/banners/BannerAdRequest;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/banners/BannerAdRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "AppnextCreativeType"

    .line 92
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 94
    :try_start_b
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/appnext/banners/BannerAdRequest;->setCreativeType(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "set creative"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_28

    goto :goto_37

    :catchall_28
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCreativeType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    :goto_37
    const-string v0, "AppnextCategories"

    .line 100
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 102
    :try_start_3f
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/appnext/banners/BannerAdRequest;->setCategories(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "set categories"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_5c

    goto :goto_6b

    :catchall_5c
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCategories: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    :goto_6b
    const-string v0, "AppnextPostback"

    .line 108
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 110
    :try_start_73
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setPostback(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_7d

    goto :goto_8c

    :catchall_7d
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPostback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    :goto_8c
    const-string v0, "AppnextMute"

    .line 115
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 117
    :try_start_94
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setMute(Z)Lcom/appnext/banners/BannerAdRequest;
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a2

    goto :goto_b1

    :catchall_a2
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b1
    :goto_b1
    const-string v0, "AppnextVideoLength"

    .line 122
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 124
    :try_start_b9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setVideoLength(Ljava/lang/String;)Lcom/appnext/banners/BannerAdRequest;
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_c3

    goto :goto_d2

    :catchall_c3
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d2
    :goto_d2
    const-string v0, "AppnextMaxVideoLen"

    .line 129
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 131
    :try_start_da
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setVidMax(I)Lcom/appnext/banners/BannerAdRequest;
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_ec

    goto :goto_fb

    :catchall_ec
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVidMax: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fb
    :goto_fb
    const-string v0, "AppnextMinVideoLen"

    .line 136
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 138
    :try_start_103
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setVidMin(I)Lcom/appnext/banners/BannerAdRequest;
    :try_end_114
    .catchall {:try_start_103 .. :try_end_114} :catchall_115

    goto :goto_124

    :catchall_115
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVidMin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_124
    :goto_124
    const-string v0, "AppnextAutoPlay"

    .line 143
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 145
    :try_start_12c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerAdRequest;->setAutoPlay(Z)Lcom/appnext/banners/BannerAdRequest;
    :try_end_139
    .catchall {:try_start_12c .. :try_end_139} :catchall_13a

    goto :goto_149

    :catchall_13a
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAutoPlay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_149
    :goto_149
    const-string v0, "AppnextClickEnabled"

    .line 150
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 152
    :try_start_151
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appnext/banners/BannerAdRequest;->setClickEnabled(Z)Lcom/appnext/banners/BannerAdRequest;
    :try_end_15e
    .catchall {:try_start_151 .. :try_end_15e} :catchall_15f

    return-void

    :catchall_15f
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setClickEnabled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16e
    return-void
.end method
