.class Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;
.super Ljava/lang/Object;
.source "StartAppCustomEventNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;->this$1:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;->this$1:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;

    iget-object v0, v0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$300(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;->this$1:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;

    iget-object v1, v1, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1$1;->this$1:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;

    iget-object v0, v0, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd$1;->this$0:Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;->access$300(Lcom/mopub/nativeads/StartAppCustomEventNative$StartAppStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
