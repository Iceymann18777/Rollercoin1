.class final Lcom/appnext/banners/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a;->impression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cU:Lcom/appnext/banners/a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/appnext/banners/a$5;->cU:Lcom/appnext/banners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/appnext/banners/a$5;->cU:Lcom/appnext/banners/a;

    invoke-static {v0}, Lcom/appnext/banners/a;->access$900(Lcom/appnext/banners/a;)Lcom/appnext/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/a$5;->cU:Lcom/appnext/banners/a;

    invoke-virtual {v1}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/q;->e(Lcom/appnext/core/AppnextAd;)V

    return-void
.end method
