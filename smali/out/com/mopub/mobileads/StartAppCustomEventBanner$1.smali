.class Lcom/mopub/mobileads/StartAppCustomEventBanner$1;
.super Ljava/lang/Object;
.source "StartAppCustomEventBanner.java"

# interfaces
.implements Lcom/startapp/android/publish/ads/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/StartAppCustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/StartAppCustomEventBanner;

.field final synthetic val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/StartAppCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->this$0:Lcom/mopub/mobileads/StartAppCustomEventBanner;

    iput-object p2, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 43
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 44
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .registers 3

    .line 38
    iget-object p1, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/StartAppCustomEventBanner$1;->val$listener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    return-void
.end method
