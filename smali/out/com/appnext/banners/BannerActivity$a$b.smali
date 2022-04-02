.class public final Lcom/appnext/banners/BannerActivity$a$b;
.super Lcom/appnext/banners/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/BannerActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic cN:Lcom/appnext/banners/BannerActivity$a;


# direct methods
.method public constructor <init>(Lcom/appnext/banners/BannerActivity$a;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-direct {p0, p1}, Lcom/appnext/banners/g$a;-><init>(Lcom/appnext/banners/g;)V

    return-void
.end method


# virtual methods
.method public final adClicked(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 205
    iget-object p2, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p2, p2, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    new-instance v0, Lcom/appnext/banners/BannerAdData;

    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    invoke-static {p1}, Lcom/appnext/banners/b;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    invoke-direct {v0, p1}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v0, p2, Lcom/appnext/banners/BannerActivity;->cF:Lcom/appnext/banners/BannerAdData;

    .line 206
    iget-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity;->userAction:Lcom/appnext/core/q;

    iget-object p2, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p2, p2, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object p2, p2, Lcom/appnext/banners/BannerActivity;->cF:Lcom/appnext/banners/BannerAdData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity;->cF:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tem_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerActivity$a;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v2}, Lcom/appnext/banners/BannerActivity$a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appnext/banners/BannerAd;->getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerActivity$a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appnext/banners/BannerActivity$a$b$1;

    invoke-direct {v2, p0}, Lcom/appnext/banners/BannerActivity$a$b$1;-><init>(Lcom/appnext/banners/BannerActivity$a$b;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method public final impression(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 222
    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    invoke-static {p1}, Lcom/appnext/banners/b;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    .line 223
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object v0, v0, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v0, v0, Lcom/appnext/banners/BannerActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v0, p1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/AppnextAd;)V

    return-void
.end method

.method public final openLink(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    iget-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    invoke-virtual {p1, v0}, Lcom/appnext/banners/BannerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final postView(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 228
    new-instance v0, Lcom/appnext/banners/BannerAdData;

    invoke-static {}, Lcom/appnext/banners/b;->R()Lcom/appnext/banners/b;

    invoke-static {p1}, Lcom/appnext/banners/b;->parseAd(Ljava/lang/String;)Lcom/appnext/core/g;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    invoke-direct {v0, p1}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 229
    iget-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity;->userAction:Lcom/appnext/core/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&tem_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v2}, Lcom/appnext/banners/BannerActivity$a;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v3}, Lcom/appnext/banners/BannerActivity$a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/banners/BannerAd;->getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method
