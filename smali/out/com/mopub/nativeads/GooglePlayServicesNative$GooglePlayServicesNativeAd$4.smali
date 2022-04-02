.class Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;
.super Ljava/lang/Object;
.source "GooglePlayServicesNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->preCacheImages(Landroid/content/Context;Ljava/util/List;)V
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

    .line 532
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .registers 3

    .line 535
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$500(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 536
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$500(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$600(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    .line 537
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    goto :goto_39

    .line 539
    :cond_1d
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$200(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 540
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$200(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$700(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    .line 541
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$4;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
