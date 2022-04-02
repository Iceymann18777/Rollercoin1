.class Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;
.super Ljava/lang/Object;
.source "StartAppCustomEventNative.java"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

.field final synthetic val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    iput-object p2, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 3

    .line 98
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Empty Response"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 99
    iget-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$300(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_29

    .line 102
    :cond_1e
    iget-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$300(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_29
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 5

    .line 69
    iget-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->val$nativeAd:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;

    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$000(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;->getNativeAds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;

    .line 71
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setAdDetails(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V

    .line 74
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setTitle(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setText(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->isApp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "Install"

    goto :goto_3b

    :cond_39
    const-string v1, "Open"

    :goto_3b
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getRating()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$100(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;Ljava/util/List;Ljava/lang/String;)Z

    .line 82
    iget-object v1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$100(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;Ljava/util/List;Ljava/lang/String;)Z

    .line 83
    iget-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$200(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;-><init>(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;)V

    invoke-static {p1, v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void
.end method
