.class public Lcom/mopub/mobileads/WebViewCacheService$Config;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/WebViewCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final mController:Lcom/mopub/mraid/MraidController;

.field private final mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private final mWeakInterstitial:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Lcom/mopub/mobileads/BaseWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;Lcom/mopub/mraid/MraidController;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    .line 46
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    .line 47
    iput-object p3, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 48
    iput-object p4, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mController:Lcom/mopub/mraid/MraidController;

    return-void
.end method


# virtual methods
.method public getController()Lcom/mopub/mraid/MraidController;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mController:Lcom/mopub/mraid/MraidController;

    return-object v0
.end method

.method public getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object v0
.end method

.method public getWeakInterstitial()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method
