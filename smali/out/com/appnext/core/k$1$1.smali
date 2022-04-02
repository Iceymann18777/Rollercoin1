.class final Lcom/appnext/core/k$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/k$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ht:Landroid/graphics/Bitmap;

.field final synthetic hu:Lcom/appnext/core/k$1;


# direct methods
.method constructor <init>(Lcom/appnext/core/k$1;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 18
    iput-object p1, p0, Lcom/appnext/core/k$1$1;->hu:Lcom/appnext/core/k$1;

    iput-object p2, p0, Lcom/appnext/core/k$1$1;->ht:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/k$1$1;->ht:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 23
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/appnext/core/k$1$1;->hu:Lcom/appnext/core/k$1;

    iget-object v1, v1, Lcom/appnext/core/k$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/k$1$1;->ht:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 24
    iget-object v1, p0, Lcom/appnext/core/k$1$1;->hu:Lcom/appnext/core/k$1;

    iget-object v1, v1, Lcom/appnext/core/k$1;->hs:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    .line 26
    :cond_1b
    iget-object v0, p0, Lcom/appnext/core/k$1$1;->hu:Lcom/appnext/core/k$1;

    iget-object v0, v0, Lcom/appnext/core/k$1;->hs:Landroid/widget/ImageView;

    sget v1, Lcom/appnext/core/R$drawable;->apnxt_adchoices:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_24

    :catchall_24
    :goto_24
    return-void
.end method
