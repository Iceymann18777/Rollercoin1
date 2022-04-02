.class Lcom/mopub/mraid/MraidBanner$2;
.super Ljava/lang/Object;
.source "MraidBanner.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBanner;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBanner;Landroid/content/Context;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    iput-object p2, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .registers 5

    .line 141
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    iget-object p2, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_23

    .line 147
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    new-instance v1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/mraid/MraidBanner;->access$102(Lcom/mopub/mraid/MraidBanner;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 149
    iget-object p2, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {p2}, Lcom/mopub/mraid/MraidBanner;->access$100(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p2

    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    :cond_23
    return-void
.end method
