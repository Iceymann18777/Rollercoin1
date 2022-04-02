.class final Lcom/appnext/ads/interstitial/InterstitialActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


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

    .line 203
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$5;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lcom/appnext/core/Ad;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$5;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$5;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->i(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/appnext/core/p;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$5;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
