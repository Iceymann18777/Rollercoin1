.class final Lcom/appnext/banners/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g$a;->openStore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dn:Lcom/appnext/banners/g$a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g$a;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 255
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getWebview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 256
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    return-void

    .line 260
    :cond_1c
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "b"

    const-string v2, "a"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_d0

    .line 261
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v7, v7, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v7}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_cpiActiveFlow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v7, v7, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v7}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_cpiActiveFlow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    packed-switch v6, :pswitch_data_144

    goto :goto_a8

    :pswitch_85
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/4 v3, 0x3

    goto :goto_a8

    :pswitch_8f
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/4 v3, 0x2

    goto :goto_a8

    :pswitch_99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/4 v3, 0x1

    goto :goto_a8

    :pswitch_a1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/4 v3, 0x0

    :cond_a8
    :goto_a8
    if-eqz v3, :cond_c7

    if-eq v3, v5, :cond_b8

    if-eq v3, v7, :cond_af

    goto :goto_bf

    .line 272
    :cond_af
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v4}, Lcom/appnext/banners/g;->access$200(Lcom/appnext/banners/g;Z)V

    goto/16 :goto_142

    .line 268
    :cond_b8
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v5}, Lcom/appnext/banners/g;->access$302(Lcom/appnext/banners/g;Z)Z

    .line 276
    :goto_bf
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    return-void

    .line 265
    :cond_c7
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v5}, Lcom/appnext/banners/g;->access$200(Lcom/appnext/banners/g;Z)V

    goto/16 :goto_142

    .line 280
    :cond_d0
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v7, v7, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v7}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_cpcActiveFlow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v7, v7, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v7}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_cpcActiveFlow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_12a

    const/16 v2, 0x62

    if-eq v6, v2, :cond_122

    goto :goto_131

    :cond_122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    const/4 v3, 0x1

    goto :goto_131

    :cond_12a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    const/4 v3, 0x0

    :cond_131
    :goto_131
    if-eqz v3, :cond_134

    goto :goto_13b

    .line 284
    :cond_134
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v5}, Lcom/appnext/banners/g;->access$302(Lcom/appnext/banners/g;Z)Z

    .line 289
    :goto_13b
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    :goto_142
    return-void

    nop

    :pswitch_data_144
    .packed-switch 0x61
        :pswitch_a1
        :pswitch_99
        :pswitch_8f
        :pswitch_85
    .end packed-switch
.end method
