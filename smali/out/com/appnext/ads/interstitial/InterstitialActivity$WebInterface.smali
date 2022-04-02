.class public Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;
.super Lcom/appnext/core/webview/WebAppInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebInterface"
.end annotation


# instance fields
.field final synthetic cf:Lcom/appnext/ads/interstitial/InterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    .line 445
    invoke-direct {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "c_close"

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 452
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->a(Lcom/appnext/ads/interstitial/InterstitialActivity;Z)Z

    .line 453
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$1;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_19
    const-string v0, "close"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 467
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$2;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$2;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 475
    :cond_2c
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$3;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$3;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;)V

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public filterAds(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-object p1
.end method

.method public gotoAppWall()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public jsError(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Internal error"

    if-eqz v0, :cond_3e

    const-string v0, "is not a function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "has no method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 585
    :cond_18
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->u(Lcom/appnext/ads/interstitial/InterstitialActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_33

    .line 586
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->k(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->v(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 588
    :cond_33
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void

    .line 594
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "jsError "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->onError(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->finish()V

    return-void
.end method

.method public loadAds()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public logSTP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v2}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/appnext/core/f;->a(Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/p;)V

    return-void
.end method

.method public notifyImpression(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 487
    invoke-super {p0, p1}, Lcom/appnext/core/webview/WebAppInterface;->notifyImpression(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 489
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;->setImpressionURL(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->o(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$a;

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {v1, v2, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity$a;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object p1

    const-string v2, "postpone_impression_sec"

    invoke-virtual {p1, v2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_38
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->p(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->p(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 494
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->play()V

    :cond_4f
    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 565
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 567
    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1, v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openResultPage(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 602
    invoke-static {}, Lcom/appnext/core/result/d;->br()Lcom/appnext/core/result/d;

    move-result-object p1

    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;)V

    invoke-virtual {p1, v0}, Lcom/appnext/core/result/d;->a(Lcom/appnext/core/result/c;)V

    .line 685
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    const-class v1, Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "shouldClose"

    const/4 v1, 0x0

    .line 686
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 687
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 688
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openStore(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$4;

    invoke-direct {v1, p0, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$4;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->s(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->t(Lcom/appnext/ads/interstitial/InterstitialActivity;)V

    return-void
.end method

.method public postView(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->q(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "false"

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    const-string v1, "pview"

    invoke-static {v0, v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->c(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 501
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->r(Lcom/appnext/ads/interstitial/InterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appnext/ads/interstitial/InterstitialActivity$b;

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-direct {v1, v2, p1}, Lcom/appnext/ads/interstitial/InterstitialActivity$b;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object p1

    const-string v2, "postpone_vta_sec"

    invoke-virtual {p1, v2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    return-void
.end method

.method public videoPlayed()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
