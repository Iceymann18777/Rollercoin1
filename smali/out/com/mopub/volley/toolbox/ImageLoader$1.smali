.class final Lcom/mopub/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultImageResId:I

.field final synthetic val$errorImageResId:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    .line 100
    iput p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 3

    .line 103
    iget p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    if-eqz p1, :cond_9

    .line 104
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 3

    .line 110
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 111
    iget-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_19

    .line 112
    :cond_10
    iget p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    if-eqz p1, :cond_19

    .line 113
    iget-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    :goto_19
    return-void
.end method
