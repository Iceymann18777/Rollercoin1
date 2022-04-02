.class Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayServicesNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)V
    .registers 2

    .line 389
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    .line 392
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 393
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->notifyAdClicked()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 3

    .line 404
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    if-eqz p1, :cond_3e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    .line 423
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_49

    .line 419
    :cond_1a
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_49

    .line 415
    :cond_26
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_49

    .line 411
    :cond_32
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_INVALID_REQUEST:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_49

    .line 407
    :cond_3e
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_49
    return-void
.end method

.method public onAdImpression()V
    .registers 2

    .line 398
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 399
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$1;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->notifyAdImpressed()V

    return-void
.end method
