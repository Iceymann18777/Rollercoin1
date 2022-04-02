.class final Lcom/appnext/ads/interstitial/InterstitialActivity$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

.field ch:Lcom/appnext/core/AppnextAd;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V
    .registers 3

    .line 714
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$b;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    :try_start_5
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    invoke-static {p2}, Lcom/appnext/ads/interstitial/a;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$b;->ch:Lcom/appnext/core/AppnextAd;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$b;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$b;->ch:Lcom/appnext/core/AppnextAd;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appnext/ads/interstitial/InterstitialActivity;->a(Lcom/appnext/ads/interstitial/InterstitialActivity;Lcom/appnext/core/AppnextAd;Lcom/appnext/core/e$a;)V

    return-void
.end method
