.class Lcom/mopub/nativeads/MoPubNative$3;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;->onAdLoad(Lcom/mopub/network/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubNative;

.field final synthetic val$response:Lcom/mopub/network/AdResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .registers 3

    .line 217
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative$3;->val$response:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .registers 6

    .line 248
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->access$102(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/CustomEventNativeAdapter;)Lcom/mopub/nativeads/CustomEventNativeAdapter;

    .line 250
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/MoPubNative;->requestNativeAd(Ljava/lang/String;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .registers 10

    .line 220
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->access$102(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/CustomEventNativeAdapter;)Lcom/mopub/nativeads/CustomEventNativeAdapter;

    .line 223
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->getContextOrDestroy()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_17

    return-void

    .line 228
    :cond_17
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForAd(Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v6

    if-nez v6, :cond_27

    .line 230
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubNative$3;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 234
    :cond_27
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->access$200(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 235
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->access$200(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/network/AdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    .line 238
    :cond_38
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->access$400(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v0

    new-instance v7, Lcom/mopub/nativeads/NativeAd;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative$3;->val$response:Lcom/mopub/network/AdResponse;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative$3;->this$0:Lcom/mopub/nativeads/MoPubNative;

    .line 240
    invoke-static {v1}, Lcom/mopub/nativeads/MoPubNative;->access$300(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Lcom/mopub/network/AdResponse;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 238
    invoke-interface {v0, v7}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V

    return-void
.end method
