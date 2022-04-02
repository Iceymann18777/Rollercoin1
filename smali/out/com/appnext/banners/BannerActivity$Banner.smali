.class Lcom/appnext/banners/BannerActivity$Banner;
.super Lcom/appnext/banners/BannerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/BannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Banner"
.end annotation


# instance fields
.field final synthetic cM:Lcom/appnext/banners/BannerActivity;


# direct methods
.method public constructor <init>(Lcom/appnext/banners/BannerActivity;Landroid/content/Context;)V
    .registers 3

    .line 280
    iput-object p1, p0, Lcom/appnext/banners/BannerActivity$Banner;->cM:Lcom/appnext/banners/BannerActivity;

    .line 281
    invoke-direct {p0, p2}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getBannerAdapter()Lcom/appnext/banners/e;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity$Banner;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v0, v0, Lcom/appnext/banners/BannerActivity;->cK:Lcom/appnext/banners/e;

    return-object v0
.end method
