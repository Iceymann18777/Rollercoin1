.class final Lcom/appnext/banners/BannerActivity$a$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/BannerActivity$a$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cP:Ljava/lang/String;

.field final synthetic cQ:Lcom/appnext/banners/BannerActivity$a$a$1;


# direct methods
.method constructor <init>(Lcom/appnext/banners/BannerActivity$a$a$1;Ljava/lang/String;)V
    .registers 3

    .line 262
    iput-object p1, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iput-object p2, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "); } catch(err){ Appnext.jsError(err.message); }})()"

    .line 266
    :try_start_2
    iget-object v1, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:(function() { try { Appnext.setParams("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v3}, Lcom/appnext/banners/BannerActivity$a;->getConfigParams()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "did"

    iget-object v5, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cP:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appnext/banners/BannerActivity$a;->loadJS(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_32

    .line 269
    :catchall_32
    iget-object v1, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v1, v1, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:(function() { try { Appnext.load("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    invoke-virtual {v3}, Lcom/appnext/banners/BannerActivity$a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdData;->getAdJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v4, v4, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v4, v4, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object v4, v4, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v4, v4, Lcom/appnext/banners/BannerActivity;->cJ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appnext/banners/BannerActivity$a$a$1$1;->cQ:Lcom/appnext/banners/BannerActivity$a$a$1;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a$1;->cO:Lcom/appnext/banners/BannerActivity$a$a;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a$a;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v3, v3, Lcom/appnext/banners/BannerActivity;->cG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appnext/banners/BannerActivity$a;->loadJS(Ljava/lang/String;)V

    return-void
.end method
