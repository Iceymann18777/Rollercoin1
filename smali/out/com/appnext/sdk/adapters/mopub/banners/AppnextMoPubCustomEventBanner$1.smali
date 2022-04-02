.class Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;
.super Lcom/appnext/banners/BannerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-direct {p0}, Lcom/appnext/banners/BannerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    .line 195
    invoke-super {p0}, Lcom/appnext/banners/BannerListener;->onAdClicked()V

    .line 196
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 197
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .registers 3

    .line 189
    invoke-super {p0, p1, p2}, Lcom/appnext/banners/BannerListener;->onAdLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    .line 190
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    iget-object p2, p2, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->mBanner:Lcom/appnext/banners/BannerView;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onError(Lcom/appnext/core/AppnextError;)V
    .registers 6

    .line 202
    invoke-super {p0, p1}, Lcom/appnext/banners/BannerListener;->onError(Lcom/appnext/core/AppnextError;)V

    .line 203
    invoke-virtual {p1}, Lcom/appnext/core/AppnextError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_3a

    :sswitch_12
    const-string v0, "Timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :sswitch_1c
    const-string v0, "Ad Not Ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    goto :goto_3b

    :sswitch_26
    const-string v0, "Connection Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x2

    goto :goto_3b

    :sswitch_30
    const-string v0, "No Ads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x3

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p1, -0x1

    :goto_3b
    if-eqz p1, :cond_73

    if-eq p1, v3, :cond_67

    if-eq p1, v2, :cond_5b

    if-eq p1, v1, :cond_4f

    .line 217
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 214
    :cond_4f
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 211
    :cond_5b
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 208
    :cond_67
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 205
    :cond_73
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner$1;->this$0:Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;->access$000(Lcom/appnext/sdk/adapters/mopub/banners/AppnextMoPubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x74ba422f -> :sswitch_30
        -0x580965ba -> :sswitch_26
        0x11bc1239 -> :sswitch_1c
        0x14e7e541 -> :sswitch_12
    .end sparse-switch
.end method
