.class final Lcom/appnext/banners/a$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a;->inflateView(ILcom/appnext/core/AppnextAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aY:Lcom/appnext/core/AppnextAd;

.field final synthetic bj:Landroid/widget/ImageView;

.field final synthetic cU:Lcom/appnext/banners/a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a;Lcom/appnext/core/AppnextAd;Landroid/widget/ImageView;)V
    .registers 4

    .line 318
    iput-object p1, p0, Lcom/appnext/banners/a$22;->cU:Lcom/appnext/banners/a;

    iput-object p2, p0, Lcom/appnext/banners/a$22;->aY:Lcom/appnext/core/AppnextAd;

    iput-object p3, p0, Lcom/appnext/banners/a$22;->bj:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/appnext/banners/a$22;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/appnext/banners/a$22$1;

    invoke-direct {v2, p0, v0}, Lcom/appnext/banners/a$22$1;-><init>(Lcom/appnext/banners/a$22;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
