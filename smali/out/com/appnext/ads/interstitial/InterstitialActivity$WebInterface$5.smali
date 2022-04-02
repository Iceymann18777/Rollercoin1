.class final Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/result/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->openResultPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 3

    .line 642
    invoke-static {}, Lcom/appnext/ads/interstitial/a;->G()Lcom/appnext/ads/interstitial/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/ads/interstitial/a;->l(Lcom/appnext/core/Ad;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->x(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/appnext/core/p;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/appnext/core/Ad;
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v0

    return-object v0
.end method

.method public final E()Lcom/appnext/core/result/a;
    .registers 2

    .line 662
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5$1;

    invoke-direct {v0, p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5$1;-><init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;)V

    return-object v0
.end method

.method public final getConfigParams()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 605
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "vid"

    const-string v2, "2.5.1.472"

    .line 606
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1a

    move-object v1, v2

    goto :goto_26

    :cond_1a
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getTID()Ljava/lang/String;

    move-result-object v1

    :goto_26
    const-string v3, "tid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 608
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_42

    :cond_36
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->j(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/Interstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/Interstitial;->getAUID()Ljava/lang/String;

    move-result-object v2

    :goto_42
    const-string v1, "auid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osid"

    const-string v2, "100"

    .line 609
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tem_id"

    const-string v2, "1601"

    .line 610
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCategories()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cat"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v1

    const-string v2, "pview"

    invoke-virtual {v1, v2}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object v1

    const-string v2, "devn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "dosv"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dds"

    const-string v2, "0"

    .line 617
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ads_type"

    const-string v2, "banner"

    .line 618
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    iget-object v1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v1, v1, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v1}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v2, v2, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-virtual {v2}, Lcom/appnext/ads/interstitial/InterstitialActivity;->getConfig()Lcom/appnext/core/p;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result v1

    const-string v2, "gdpr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 632
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->w(Lcom/appnext/ads/interstitial/InterstitialActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedAd()Lcom/appnext/core/AppnextAd;
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->ci:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;

    iget-object v0, v0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface;->cf:Lcom/appnext/ads/interstitial/InterstitialActivity;

    invoke-static {v0}, Lcom/appnext/ads/interstitial/InterstitialActivity;->m(Lcom/appnext/ads/interstitial/InterstitialActivity;)Lcom/appnext/ads/interstitial/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    const-string v0, "160"

    return-object v0
.end method
