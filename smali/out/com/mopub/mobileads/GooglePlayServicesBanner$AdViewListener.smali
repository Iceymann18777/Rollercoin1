.class Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayServicesBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;Lcom/mopub/mobileads/GooglePlayServicesBanner$1;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;-><init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;)V

    return-void
.end method

.method private getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .registers 3

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 171
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 168
    :cond_e
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 165
    :cond_11
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 162
    :cond_14
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_19

    .line 159
    :cond_17
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_19
    return-object p1
.end method


# virtual methods
.method public onAdClosed()V
    .registers 1

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad failed to load."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1c
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad loaded successfully. Showing ad..."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$200(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    const-string v0, "MoPub"

    const-string v1, "Google Play Services banner ad clicked."

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$AdViewListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->access$100(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    :cond_18
    return-void
.end method
