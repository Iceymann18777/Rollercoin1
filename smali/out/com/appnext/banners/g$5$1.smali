.class final Lcom/appnext/banners/g$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dm:Lcom/appnext/banners/g$5;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g$5;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/appnext/banners/g$5$1;->dm:Lcom/appnext/banners/g$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/appnext/banners/g$5$1;->dm:Lcom/appnext/banners/g$5;

    iget-object v0, v0, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getUserAction()Lcom/appnext/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/g$5$1;->dm:Lcom/appnext/banners/g$5;

    iget-object v1, v1, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v1}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/banners/g$5$1;->dm:Lcom/appnext/banners/g$5;

    iget-object v2, v2, Lcom/appnext/banners/g$5;->di:Lcom/appnext/banners/g;

    invoke-virtual {v2}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerAdData;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method
