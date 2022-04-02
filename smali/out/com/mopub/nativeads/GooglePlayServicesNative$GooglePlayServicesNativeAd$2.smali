.class Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;
.super Ljava/lang/Object;
.source "GooglePlayServicesNative.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;)V
    .registers 3

    .line 361
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$100(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p1, "MoPubToAdMobNative"

    const-string v0, "The Google native app install ad is missing one or more required assets, failing request."

    .line 366
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 372
    :cond_1b
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$202(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 379
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 381
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$2;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$300(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
