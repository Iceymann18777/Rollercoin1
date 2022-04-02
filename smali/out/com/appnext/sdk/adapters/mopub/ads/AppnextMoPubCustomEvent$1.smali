.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdLoaded;


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

    .line 98
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$1;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .registers 3

    .line 101
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$1;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {p1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method
