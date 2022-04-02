.class final Lcom/appnext/banners/g$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dl:Lcom/appnext/banners/g$4;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g$4;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v0, v0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    const-string v1, "javascript:(function() { try { Appnext.Layout.destroy(\'internal\'); } catch(err){ Appnext.jsError(err.message); }})()"

    invoke-virtual {v0, v1}, Lcom/appnext/banners/g;->loadJS(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v0, v0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() { try { Appnext.setParams("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v2, v2, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-virtual {v2}, Lcom/appnext/banners/g;->getConfigParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "); } catch(err){ Appnext.jsError(err.message); }})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/g;->loadJS(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v0, v0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() { try { Appnext.loadBanner("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v3, v3, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-virtual {v3}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdData;->getAdJSON()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v2, v2, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-virtual {v2}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'); } catch(err){ Appnext.jsError(err.message); }})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/g;->loadJS(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v0, v0, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-static {v0}, Lcom/appnext/banners/g;->access$600(Lcom/appnext/banners/g;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/g$4$1;->dl:Lcom/appnext/banners/g$4;

    iget-object v1, v1, Lcom/appnext/banners/g$4;->di:Lcom/appnext/banners/g;

    invoke-virtual {v1}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_0 .. :try_end_89} :catchall_89

    :catchall_89
    return-void
.end method
