.class final Lcom/appnext/banners/BannerActivity$a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/BannerActivity$a$b;->adClicked(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cR:Lcom/appnext/banners/BannerActivity$a$b;


# direct methods
.method constructor <init>(Lcom/appnext/banners/BannerActivity$a$b;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b$1;->cR:Lcom/appnext/banners/BannerActivity$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 2

    .line 209
    iget-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b$1;->cR:Lcom/appnext/banners/BannerActivity$a$b;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-boolean p1, p1, Lcom/appnext/banners/BannerActivity;->cd:Z

    if-eqz p1, :cond_13

    .line 210
    iget-object p1, p0, Lcom/appnext/banners/BannerActivity$a$b$1;->cR:Lcom/appnext/banners/BannerActivity$a$b;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a$b;->cN:Lcom/appnext/banners/BannerActivity$a;

    iget-object p1, p1, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerActivity;->finish()V

    :cond_13
    return-void
.end method
