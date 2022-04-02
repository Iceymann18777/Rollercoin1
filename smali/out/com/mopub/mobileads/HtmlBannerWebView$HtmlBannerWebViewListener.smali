.class Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;
.super Ljava/lang/Object;
.source "HtmlBannerWebView.java"

# interfaces
.implements Lcom/mopub/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HtmlBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlBannerWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-void
.end method


# virtual methods
.method public onClicked()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    return-void
.end method

.method public onCollapsed()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    return-void
.end method

.method public onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    return-void
.end method
