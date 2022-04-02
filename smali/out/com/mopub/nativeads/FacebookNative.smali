.class public Lcom/mopub/nativeads/FacebookNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "FacebookNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;
    }
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String;

.field private static final NATIVE_BANNER_KEY:Ljava/lang/String; = "native_banner"

.field private static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placement_id"

.field private static mPlacementId:Ljava/lang/String;


# instance fields
.field private isNativeBanner:Ljava/lang/Boolean;

.field private mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/mopub/nativeads/FacebookNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativeads/FacebookNative;->ADAPTER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    .line 62
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/FacebookNative;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 49
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/mopub/nativeads/FacebookNative;->ADAPTER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .registers 4

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/nativeads/FacebookNative;->registerChildViewsForInteraction(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    return-void
.end method

.method private static assembleChildViewsWithLimit(Landroid/view/View;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_14

    .line 160
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->getAdNetworkId()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "View given is null. Ignoring"

    aput-object v1, p2, v0

    invoke-static {p0, p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_14
    if-gtz p2, :cond_29

    .line 165
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Depth limit reached; adding this view regardless of its type."

    aput-object v3, v1, v0

    invoke-static {p2, v2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 167
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 171
    :cond_29
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_49

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_49

    .line 173
    :goto_36
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v0, p0, :cond_48

    .line 174
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, p1, v3}, Lcom/mopub/nativeads/FacebookNative;->assembleChildViewsWithLimit(Landroid/view/View;Ljava/util/List;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_48
    return-void

    .line 179
    :cond_49
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
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

    const-string v0, "placement_id"

    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/mopub/nativeads/FacebookNative;->mPlacementId:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static getAdNetworkId()Ljava/lang/String;
    .registers 1

    .line 183
    sget-object v0, Lcom/mopub/nativeads/FacebookNative;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method private static registerChildViewsForInteraction(Landroid/view/View;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 137
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    .line 138
    invoke-static {p0, v0, v1}, Lcom/mopub/nativeads/FacebookNative;->assembleChildViewsWithLimit(Landroid/view/View;Ljava/util/List;I)V

    .line 140
    instance-of v1, p1, Lcom/facebook/ads/NativeAd;

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    if-eqz p2, :cond_24

    .line 141
    check-cast p1, Lcom/facebook/ads/NativeAd;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_20

    .line 143
    invoke-virtual {p1, p0, p2, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    goto :goto_37

    .line 145
    :cond_20
    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_37

    .line 147
    :cond_24
    instance-of p2, p1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz p2, :cond_37

    .line 148
    check-cast p1, Lcom/facebook/ads/NativeBannerAd;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_34

    .line 150
    invoke-virtual {p1, p0, p3}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    goto :goto_37

    .line 152
    :cond_34
    invoke-virtual {p1, p0, p3, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
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

    .line 70
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 76
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 80
    :cond_15
    invoke-direct {p0, p4}, Lcom/mopub/nativeads/FacebookNative;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "placement_id"

    .line 81
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/mopub/nativeads/FacebookNative;->mFacebookAdapterConfiguration:Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    invoke-virtual {v1, p1, p4}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    const-string v1, "adm"

    .line 90
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 91
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "native_banner"

    .line 92
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 94
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_44

    .line 95
    check-cast p3, Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->isNativeBanner:Ljava/lang/Boolean;

    .line 101
    :cond_44
    iget-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->isNativeBanner:Ljava/lang/Boolean;

    if-nez p3, :cond_4c

    invoke-static {}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->getNativeBannerPref()Ljava/lang/Boolean;

    move-result-object p3

    :cond_4c
    iput-object p3, p0, Lcom/mopub/nativeads/FacebookNative;->isNativeBanner:Ljava/lang/Boolean;

    if-eqz p3, :cond_64

    .line 105
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_64

    .line 106
    new-instance p3, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;

    new-instance v1, Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p1, v1, p2, p4}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->loadAd()V

    return-void

    .line 117
    :cond_64
    new-instance p3, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;

    new-instance v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p1, v1, p2, p4}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Lcom/mopub/nativeads/FacebookNative$FacebookNativeAd;->loadAd()V

    return-void

    .line 84
    :cond_72
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 85
    invoke-static {}, Lcom/mopub/nativeads/FacebookNative;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    sget-object v0, Lcom/mopub/nativeads/FacebookNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p3, p4

    const/4 p4, 0x1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    .line 86
    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x2

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    aput-object v0, p3, p4

    .line 85
    invoke-static {p1, p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
