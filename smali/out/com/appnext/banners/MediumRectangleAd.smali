.class public Lcom/appnext/banners/MediumRectangleAd;
.super Lcom/appnext/banners/BannerAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/appnext/banners/BannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/appnext/core/Ad;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/appnext/banners/BannerAd;-><init>(Lcom/appnext/core/Ad;)V

    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .registers 2

    const-string v0, "1020"

    return-object v0
.end method

.method public bridge synthetic getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 2

    .line 7
    invoke-super {p0, p1}, Lcom/appnext/banners/BannerAd;->getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V

    return-void
.end method

.method public bridge synthetic getTID()Ljava/lang/String;
    .registers 2

    .line 7
    invoke-super {p0}, Lcom/appnext/banners/BannerAd;->getTID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;
    .registers 9

    .line 22
    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdData;->getRevenueType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "b"

    const-string v2, "a"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz p1, :cond_60

    .line 23
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    const-string v5, "MEDIUM_RECTANGLE_cpiActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_94

    goto :goto_4d

    :pswitch_2a
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 v0, 0x3

    goto :goto_4e

    :pswitch_34
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 v0, 0x2

    goto :goto_4e

    :pswitch_3e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :pswitch_46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v0, -0x1

    :goto_4e
    if-eqz v0, :cond_5d

    if-eq v0, v4, :cond_5a

    if-eq v0, v6, :cond_57

    const-string p1, "111"

    return-object p1

    :cond_57
    const-string p1, "108"

    return-object p1

    :cond_5a
    const-string p1, "105"

    return-object p1

    :cond_5d
    const-string p1, "102"

    return-object p1

    .line 35
    :cond_60
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    const-string v5, "MEDIUM_RECTANGLE_cpcActiveFlow"

    invoke-virtual {p1, v5}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_83

    const/16 v0, 0x62

    if-eq v5, v0, :cond_7b

    goto :goto_8a

    :cond_7b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    const/4 v0, 0x1

    goto :goto_8b

    :cond_83
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    goto :goto_8b

    :cond_8a
    :goto_8a
    const/4 v0, -0x1

    :goto_8b
    if-eqz v0, :cond_90

    const-string p1, "205"

    return-object p1

    :cond_90
    const-string p1, "202"

    return-object p1

    nop

    :pswitch_data_94
    .packed-switch 0x61
        :pswitch_46
        :pswitch_3e
        :pswitch_34
        :pswitch_2a
    .end packed-switch
.end method

.method public bridge synthetic getVID()Ljava/lang/String;
    .registers 2

    .line 7
    invoke-super {p0}, Lcom/appnext/banners/BannerAd;->getVID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAdLoaded()Z
    .registers 2

    .line 7
    invoke-super {p0}, Lcom/appnext/banners/BannerAd;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic loadAd()V
    .registers 1

    .line 7
    invoke-super {p0}, Lcom/appnext/banners/BannerAd;->loadAd()V

    return-void
.end method

.method public bridge synthetic showAd()V
    .registers 1

    .line 7
    invoke-super {p0}, Lcom/appnext/banners/BannerAd;->showAd()V

    return-void
.end method
