.class public Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;
.super Ljava/lang/Object;
.source "HtmlBannerWebViewFactory.java"


# static fields
.field protected static instance:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlBannerWebView;
    .registers 5

    .line 24
    sget-object v0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->internalCreate(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlBannerWebView;

    move-result-object p0

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    sput-object p0, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->instance:Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;

    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlBannerWebView;
    .registers 6

    .line 32
    new-instance v0, Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/HtmlBannerWebView;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V

    .line 33
    invoke-virtual {p2}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p4, p1}, Lcom/mopub/mobileads/HtmlBannerWebView;->init(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
