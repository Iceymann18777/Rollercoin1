.class Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;
.super Ljava/lang/Object;
.source "GooglePlayServicesNative.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


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

    .line 333
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$400(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p1, "MoPubToAdMobNative"

    const-string v0, "The Google native content ad is missing one or more required assets, failing request."

    .line 337
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$000(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 344
    :cond_1b
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$502(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;

    .line 346
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 353
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->this$0:Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;

    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd$3;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;->access$300(Lcom/mopub/nativeads/GooglePlayServicesNative$GooglePlayServicesNativeAd;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
