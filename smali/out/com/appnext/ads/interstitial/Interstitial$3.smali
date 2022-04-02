.class final Lcom/appnext/ads/interstitial/Interstitial$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/Interstitial;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bL:Lcom/appnext/ads/interstitial/Interstitial;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/Interstitial;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "No Ads"

    .line 211
    :try_start_2
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {v2}, Lcom/appnext/ads/interstitial/Interstitial;->access$500(Lcom/appnext/ads/interstitial/Interstitial;)Landroid/content/Context;

    move-result-object v2

    check-cast p1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-static {v3}, Lcom/appnext/ads/interstitial/Interstitial;->access$600(Lcom/appnext/ads/interstitial/Interstitial;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/appnext/ads/interstitial/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1b

    goto :goto_2e

    :catchall_1b
    nop

    .line 213
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 214
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_4a

    .line 217
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 218
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdLoadedCallback()Lcom/appnext/core/callbacks/OnAdLoaded;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/appnext/core/callbacks/OnAdLoaded;->adLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V

    return-void

    .line 220
    :cond_4a
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 221
    iget-object p1, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 230
    iget-object v0, p0, Lcom/appnext/ads/interstitial/Interstitial$3;->bL:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getOnAdErrorCallback()Lcom/appnext/core/callbacks/OnAdError;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/callbacks/OnAdError;->adError(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
