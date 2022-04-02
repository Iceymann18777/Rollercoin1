.class Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubCustomEventNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
