.class final Lcom/appnext/ads/interstitial/Interstitial$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/Interstitial$4;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bN:Ljava/lang/String;

.field final synthetic bO:Lcom/appnext/ads/interstitial/Interstitial$4;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/Interstitial$4;Ljava/lang/String;)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$4$1;->bO:Lcom/appnext/ads/interstitial/Interstitial$4;

    iput-object p2, p0, Lcom/appnext/ads/interstitial/Interstitial$4$1;->bN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$4$1;->bO:Lcom/appnext/ads/interstitial/Interstitial$4;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/Interstitial$4;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 283
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$4$1;->bO:Lcom/appnext/ads/interstitial/Interstitial$4;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/Interstitial$4;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/Interstitial$4$1;->bN:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
