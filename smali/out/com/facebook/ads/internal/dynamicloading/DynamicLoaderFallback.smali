.class Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;
.super Ljava/lang/Object;
.source "DynamicLoaderFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;
    }
.end annotation


# static fields
.field private static final sApiProxyToAdListenersMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/facebook/ads/AdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->sApiProxyToAdListenersMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/util/WeakHashMap;
    .registers 1

    .line 41
    sget-object v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->sApiProxyToAdListenersMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/util/Map;)Z
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->reportError(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static equalsMethodParams(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 385
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static equalsMethods(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 4

    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    .line 379
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 380
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 381
    invoke-static {p0, p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->equalsMethodParams(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method static makeFallbackLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    .registers 17

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    new-instance v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;-><init>(Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;)V

    .line 61
    const-class v10, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    .line 63
    invoke-interface {v10, v5, v5, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/internal/api/InterstitialAdApi;

    .line 64
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v10, v5, v5, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createRewardedVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    .line 67
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v10, v5, v5, v5, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createInstreamVideoAdViewApi(Lcom/facebook/ads/InstreamVideoAdView;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    move-object v14, v5

    check-cast v14, Lcom/facebook/ads/AdSize;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    invoke-interface/range {v11 .. v16}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdViewApi(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/api/AdViewApi;

    .line 73
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 76
    :try_start_69
    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v10

    invoke-interface/range {v11 .. v16}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdViewApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/api/AdViewApi;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_73} :catch_73

    .line 80
    :catch_73
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v10, v5, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    .line 83
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 85
    invoke-interface {v10, v5, v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeBannerAdApi(Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    .line 86
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    .line 88
    const-class v10, Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 90
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd()V

    .line 91
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    move-object v13, v5

    check-cast v13, Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    invoke-interface {v10, v13}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    .line 94
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    move-object v13, v5

    check-cast v13, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-interface {v10, v13}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAd(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    .line 97
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAdFromBid(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v10, v5, v5}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->loadAdFromBid(Ljava/lang/String;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    .line 103
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->buildLoadAdConfig(Lcom/facebook/ads/NativeAdBase;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 106
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    .line 107
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v10, v5, v5}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->setAdListener(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V

    .line 110
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-class v10, Lcom/facebook/ads/internal/api/InterstitialAdApi;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/api/InterstitialAdApi;

    .line 114
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->loadAd()V

    .line 115
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    move-object v13, v5

    check-cast v13, Ljava/util/EnumSet;

    invoke-interface {v10, v13}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->loadAd(Ljava/util/EnumSet;)V

    .line 118
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    move-object v13, v5

    check-cast v13, Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    invoke-interface {v10, v13}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 121
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v10, v5, v5}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->loadAdFromBid(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 127
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/InterstitialAdApi;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 130
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 131
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-class v10, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;

    .line 135
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd()V

    .line 136
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 139
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    .line 141
    invoke-interface {v10, v13}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAd(Z)V

    .line 142
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v10, v5, v13}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->loadAdFromBid(Ljava/lang/String;Z)V

    .line 145
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 148
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/RewardedVideoAdApi;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 151
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 152
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-class v10, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;

    .line 155
    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;

    .line 157
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;->loadAd()V

    .line 158
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;->loadAd(Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadAdConfig;)V

    .line 161
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;->loadAdFromBid(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;->setAdListener(Lcom/facebook/ads/InstreamVideoAdListener;)V

    .line 167
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/InstreamVideoAdViewApi;->buildLoadAdConfig()Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 171
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-class v10, Lcom/facebook/ads/internal/api/AdViewApi;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/internal/api/AdViewApi;

    .line 175
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/AdViewApi;->loadAd()V

    .line 176
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/AdViewApi;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 179
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/AdViewApi;->loadAdFromBid(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v10, v5}, Lcom/facebook/ads/internal/api/AdViewApi;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 185
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v10}, Lcom/facebook/ads/internal/api/AdViewApi;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 188
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    .line 189
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-class v10, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 194
    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 195
    invoke-interface {v10, v5}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-class v10, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 199
    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 200
    invoke-interface {v10, v5}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    .line 201
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-class v14, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 204
    invoke-virtual {v0, v14}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 205
    invoke-interface {v14, v5}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 206
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-class v14, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 209
    invoke-virtual {v0, v14}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 210
    invoke-interface {v14, v5}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 211
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-class v14, Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder;

    .line 214
    invoke-virtual {v0, v14}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->mock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder;

    .line 215
    invoke-interface {v14, v5}, Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InstreamVideoAdListener;)Lcom/facebook/ads/InstreamVideoAdView$InstreamVideoLoadConfigBuilder;

    .line 216
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v10}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->loadAd()V

    .line 221
    invoke-virtual {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor;->getLastMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 223
    new-instance v14, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;

    move-object v0, v14

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 317
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;

    .line 319
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    aput-object v2, v1, v13

    .line 318
    invoke-static {v0, v1, v14}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    return-object v0
.end method

.method private static reportError(Ljava/lang/Object;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/facebook/ads/Ad;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 329
    :cond_4
    sget-object v1, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback;->sApiProxyToAdListenersMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/AdListener;

    .line 330
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/Ad;

    if-eqz v1, :cond_29

    .line 332
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2;-><init>(Lcom/facebook/ads/AdListener;Lcom/facebook/ads/Ad;)V

    const-wide/16 v1, 0x1f4

    .line 333
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0
.end method
