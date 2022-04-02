.class public Lcom/mopub/mobileads/HtmlBannerWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "HtmlBannerWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 21
    invoke-super {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->init()V

    .line 23
    new-instance v0, Lcom/mopub/mobileads/HtmlWebViewClient;

    new-instance v1, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/HtmlBannerWebView$HtmlBannerWebViewListener;-><init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/mopub/mobileads/HtmlWebViewClient;-><init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlBannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
