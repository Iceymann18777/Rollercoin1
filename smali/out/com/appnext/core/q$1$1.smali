.class final Lcom/appnext/core/q$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/q$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hN:Lcom/appnext/core/q$1;


# direct methods
.method constructor <init>(Lcom/appnext/core/q$1;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vta - failed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v1, v1, Lcom/appnext/core/q$1;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v1, v1, Lcom/appnext/core/q$1;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    invoke-static {v0, v1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    invoke-static {v0, v1}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hL:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_46

    .line 83
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hL:Lcom/appnext/core/e$a;

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vta - success - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v1, v1, Lcom/appnext/core/q$1;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v1, v1, Lcom/appnext/core/q$1;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    invoke-static {v0, p1}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    const-string v1, "admin.appnext.com"

    const-string v2, "applink"

    invoke-static {v1, v2}, Lcom/appnext/core/f;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/core/q;->b(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hM:Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v1, v1, Lcom/appnext/core/q$1;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/core/q;->c(Lcom/appnext/core/q;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hL:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_54

    .line 73
    iget-object v0, p0, Lcom/appnext/core/q$1$1;->hN:Lcom/appnext/core/q$1;

    iget-object v0, v0, Lcom/appnext/core/q$1;->hL:Lcom/appnext/core/e$a;

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_54
    return-void
.end method
