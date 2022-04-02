.class final Lcom/appnext/ads/interstitial/InterstitialActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

.field ch:Lcom/appnext/core/AppnextAd;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    .registers 4

    .line 694
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->ch:Lcom/appnext/core/AppnextAd;

    .line 696
    check-cast v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/appnext/ads/interstitial/InterstitialAd;->setImpressionURL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->y(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/q;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 703
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->z(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->ch:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0, v1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/AppnextAd;)V

    .line 704
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$a;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    const-string v1, "impression_event"

    invoke-static {v0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->d(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    return-void
.end method
