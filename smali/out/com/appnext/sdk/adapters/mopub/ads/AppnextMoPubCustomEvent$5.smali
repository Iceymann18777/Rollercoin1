.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adError(Ljava/lang/String;)V
    .registers 7

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_86

    goto :goto_3e

    :sswitch_c
    const-string v0, "Too Slow Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x1

    goto :goto_3f

    :sswitch_16
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x2

    goto :goto_3f

    :sswitch_20
    const-string v0, "Ad Not Ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    goto :goto_3f

    :sswitch_2a
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x3

    goto :goto_3f

    :sswitch_34
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x4

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p1, -0x1

    :goto_3f
    if-eqz p1, :cond_79

    if-eq p1, v4, :cond_6d

    if-eq p1, v3, :cond_6d

    if-eq p1, v2, :cond_61

    if-eq p1, v1, :cond_55

    .line 149
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 146
    :cond_55
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 143
    :cond_61
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 140
    :cond_6d
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 136
    :cond_79
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$5;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        -0x74ba422f -> :sswitch_34
        -0x580965ba -> :sswitch_2a
        0x11bc1239 -> :sswitch_20
        0x14e7e541 -> :sswitch_16
        0x32510371 -> :sswitch_c
    .end sparse-switch
.end method
