.class final Lcom/appnext/banners/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g;->activateAutoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic di:Lcom/appnext/banners/g;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 385
    :try_start_0
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    iget-object v1, v1, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v2}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v3}, Lcom/appnext/banners/g;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v4}, Lcom/appnext/banners/g;->getAdRequest()Lcom/appnext/banners/BannerAdRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-static {v5}, Lcom/appnext/banners/g;->access$600(Lcom/appnext/banners/g;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/appnext/core/AppnextAd;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 389
    iget-object v1, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    new-instance v2, Lcom/appnext/banners/BannerAdData;

    invoke-direct {v2, v0}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v1, v2}, Lcom/appnext/banners/g;->setSelectedAd(Lcom/appnext/banners/BannerAdData;)V

    .line 390
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    const-string v1, "impOne"

    invoke-virtual {v0, v1}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 391
    iget-object v0, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appnext/banners/g;->setReportedImpression(Z)V

    .line 392
    iget-object v0, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->impression()V

    goto :goto_7f

    .line 394
    :cond_50
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    const-string v1, "pview"

    invoke-virtual {v0, v1}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 395
    iget-object v0, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$700(Lcom/appnext/banners/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appnext/banners/g$5$1;

    invoke-direct {v1, p0}, Lcom/appnext/banners/g$5$1;-><init>(Lcom/appnext/banners/g$5;)V

    .line 400
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v2

    const-string v3, "postpone_vta_sec"

    invoke-virtual {v2, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 395
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$400(Lcom/appnext/banners/g;)V
    :try_end_84
    .catchall {:try_start_0 .. :try_end_84} :catchall_84

    :catchall_84
    :cond_84
    return-void
.end method
