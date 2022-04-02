.class final Lcom/appnext/ads/interstitial/InterstitialActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->e(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 197
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->f(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    :cond_12
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->g(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    .line 199
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->h(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialAd;

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v2}, Lcom/appnext/ads/interstitial/InterstitialActivity;->i(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "marketUrl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->b(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 189
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->c(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    :cond_1c
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$4;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    return-void
.end method
