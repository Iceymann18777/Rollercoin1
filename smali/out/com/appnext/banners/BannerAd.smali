.class Lcom/appnext/banners/BannerAd;
.super Lcom/appnext/core/Ad;
.source "SourceFile"


# static fields
.field protected static final TID:Ljava/lang/String; = "301"

.field protected static final VID:Ljava/lang/String; = "2.5.1.472"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/appnext/core/Ad;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/appnext/core/Ad;-><init>(Lcom/appnext/core/Ad;)V

    return-void
.end method


# virtual methods
.method public getAUID()Ljava/lang/String;
    .registers 2

    const-string v0, "1000"

    return-object v0
.end method

.method protected getAdRequest()Lcom/appnext/core/c;
    .registers 2

    .line 68
    invoke-super {p0}, Lcom/appnext/core/Ad;->getAdRequest()Lcom/appnext/core/c;

    move-result-object v0

    return-object v0
.end method

.method public getECPM(Lcom/appnext/core/callbacks/OnECPMLoaded;)V
    .registers 2

    return-void
.end method

.method protected getSessionId()Ljava/lang/String;
    .registers 2

    .line 58
    invoke-super {p0}, Lcom/appnext/core/Ad;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "301"

    return-object v0
.end method

.method public getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;
    .registers 9

    .line 72
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

    .line 73
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    const-string v5, "BANNER_cpiActiveFlow"

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

    const-string p1, "109"

    return-object p1

    :cond_57
    const-string p1, "106"

    return-object p1

    :cond_5a
    const-string p1, "103"

    return-object p1

    :cond_5d
    const-string p1, "100"

    return-object p1

    .line 85
    :cond_60
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    const-string v5, "BANNER_cpcActiveFlow"

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

    const-string p1, "203"

    return-object p1

    :cond_90
    const-string p1, "200"

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

.method public getVID()Ljava/lang/String;
    .registers 2

    const-string v0, "2.5.1.472"

    return-object v0
.end method

.method public isAdLoaded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .registers 1

    return-void
.end method

.method protected setAdRequest(Lcom/appnext/core/c;)V
    .registers 2

    .line 63
    invoke-super {p0, p1}, Lcom/appnext/core/Ad;->setAdRequest(Lcom/appnext/core/c;)V

    return-void
.end method

.method public showAd()V
    .registers 1

    return-void
.end method
