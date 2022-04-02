.class Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "StartAppCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/StartAppCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartAppStaticNativeAd"
.end annotation


# instance fields
.field private adDetails:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

.field private adPrefs:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

.field private adTagNative:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

.field private final mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Ljava/lang/String;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adPrefs:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    .line 52
    iput-object p3, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->listener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 53
    iput-object p4, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 54
    iput-object p5, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    .line 55
    iput-object p6, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adTagNative:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adTagNative:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;Ljava/util/List;Ljava/lang/String;)Z
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->addUrl(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->listener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method private addUrl(Ljava/util/List;Ljava/lang/String;)Z
    .registers 3

    if-eqz p2, :cond_a

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeClickHandler;->clearOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method protected getAdDetails()Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adDetails:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->notifyAdClicked()V

    .line 136
    invoke-virtual {p0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->getAdDetails()Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendClick(Landroid/content/Context;)V

    return-void
.end method

.method loadAd()V
    .registers 4

    .line 63
    new-instance v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adPrefs:Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;

    new-instance v2, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;

    invoke-direct {v2, p0, v0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;-><init>(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V

    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .registers 3

    .line 110
    invoke-super {p0, p1}, Lcom/mopub/nativeads/StaticNativeAd;->recordImpression(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->notifyAdImpressed()V

    .line 112
    invoke-virtual {p0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->getAdDetails()Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->sendImpression(Landroid/content/Context;)V

    return-void
.end method

.method protected setAdDetails(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->adDetails:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    return-void
.end method
