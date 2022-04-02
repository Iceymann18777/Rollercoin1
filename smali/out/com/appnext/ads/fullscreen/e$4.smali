.class final Lcom/appnext/ads/fullscreen/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/e;->a(Landroid/view/ViewGroup;Lcom/appnext/core/AppnextAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aY:Lcom/appnext/core/AppnextAd;

.field final synthetic bg:Lcom/appnext/ads/fullscreen/e;

.field final synthetic bi:Landroid/widget/ImageView;

.field final synthetic bj:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/e;Landroid/widget/ImageView;Lcom/appnext/core/AppnextAd;Landroid/widget/ImageView;)V
    .registers 5

    .line 135
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/e$4;->bg:Lcom/appnext/ads/fullscreen/e;

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/e$4;->bi:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/appnext/ads/fullscreen/e$4;->aY:Lcom/appnext/core/AppnextAd;

    iput-object p4, p0, Lcom/appnext/ads/fullscreen/e$4;->bj:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e$4;->bi:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 140
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/e$4;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 142
    :goto_10
    iget-object v1, p0, Lcom/appnext/ads/fullscreen/e$4;->aY:Lcom/appnext/core/AppnextAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/appnext/ads/fullscreen/e$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/appnext/ads/fullscreen/e$4$1;-><init>(Lcom/appnext/ads/fullscreen/e$4;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
