.class final Lcom/appnext/ads/interstitial/InterstitialActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bN:Ljava/lang/String;

.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    .registers 3

    .line 392
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    iput-object p2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->bN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 396
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$11;->bN:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_23
    return-void
.end method
