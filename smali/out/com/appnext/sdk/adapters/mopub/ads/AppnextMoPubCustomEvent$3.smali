.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClicked;


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

    .line 114
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$3;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent$3;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;

    invoke-static {v0}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;->access$000(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEvent;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    return-void
.end method
