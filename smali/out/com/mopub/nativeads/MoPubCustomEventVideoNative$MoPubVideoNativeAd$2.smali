.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeImageHelper$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .registers 6

    .line 311
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 315
    :cond_16
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$300(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/mobileads/VastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->getVastVideo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    const/4 v3, 0x0

    .line 318
    invoke-static {v2}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$200(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Landroid/content/Context;

    move-result-object v4

    .line 315
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 326
    :cond_9
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 327
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 326
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$2;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$400(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
