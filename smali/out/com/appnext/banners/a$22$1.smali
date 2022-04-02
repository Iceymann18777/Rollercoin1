.class final Lcom/appnext/banners/a$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/a$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aW:Landroid/graphics/Bitmap;

.field final synthetic dd:Lcom/appnext/banners/a$22;


# direct methods
.method constructor <init>(Lcom/appnext/banners/a$22;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 322
    iput-object p1, p0, Lcom/appnext/banners/a$22$1;->dd:Lcom/appnext/banners/a$22;

    iput-object p2, p0, Lcom/appnext/banners/a$22$1;->aW:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/appnext/banners/a$22$1;->dd:Lcom/appnext/banners/a$22;

    iget-object v0, v0, Lcom/appnext/banners/a$22;->bj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appnext/banners/a$22$1;->aW:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
