.class public Lcom/appnext/banners/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic di:Lcom/appnext/banners/g;


# direct methods
.method public constructor <init>(Lcom/appnext/banners/g;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public jsError(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public logSTP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v1}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/appnext/core/f;->a(Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/p;)V

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$100(Lcom/appnext/banners/g;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0, p1}, Lcom/appnext/banners/g;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method public openStore(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 249
    iget-object p1, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {p1}, Lcom/appnext/banners/g;->access$000(Lcom/appnext/banners/g;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {p1}, Lcom/appnext/banners/g;->access$100(Lcom/appnext/banners/g;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    .line 252
    :cond_13
    iget-object p1, p0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {p1}, Lcom/appnext/banners/g;->access$000(Lcom/appnext/banners/g;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/appnext/banners/g$a$1;

    invoke-direct {v0, p0}, Lcom/appnext/banners/g$a$1;-><init>(Lcom/appnext/banners/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
