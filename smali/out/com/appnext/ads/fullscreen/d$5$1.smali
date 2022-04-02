.class final Lcom/appnext/ads/fullscreen/d$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/d$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aW:Landroid/graphics/Bitmap;

.field final synthetic ba:Lcom/appnext/ads/fullscreen/d$5;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/d$5;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/d$5$1;->ba:Lcom/appnext/ads/fullscreen/d$5;

    iput-object p2, p0, Lcom/appnext/ads/fullscreen/d$5$1;->aW:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/d$5$1;->ba:Lcom/appnext/ads/fullscreen/d$5;

    iget-object v0, v0, Lcom/appnext/ads/fullscreen/d$5;->aZ:Landroid/widget/RelativeLayout;

    sget v1, Lcom/appnext/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appnext/ads/fullscreen/d$5$1;->aW:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
