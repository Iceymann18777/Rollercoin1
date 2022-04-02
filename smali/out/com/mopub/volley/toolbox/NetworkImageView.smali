.class public Lcom/mopub/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field mDefaultImageBitmap:Landroid/graphics/Bitmap;

.field private mDefaultImageId:I

.field private mErrorImageBitmap:Landroid/graphics/Bitmap;

.field private mErrorImageId:I

.field private mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return p0
.end method

.method static synthetic access$100(Lcom/mopub/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return p0
.end method

.method private setDefaultImageOrNull()V
    .registers 2

    .line 246
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_8

    .line 247
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_14

    .line 248
    :cond_8
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 249
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14

    :cond_10
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_14
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 276
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 277
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method loadImageIfNecessary(Z)V
    .registers 10

    .line 149
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 154
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    .line 155
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 156
    :goto_20
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    if-eqz v2, :cond_31

    if-eqz v5, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v3, :cond_39

    return-void

    .line 168
    :cond_39
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 169
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_4b

    .line 170
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 173
    :cond_4b
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    return-void

    .line 178
    :cond_4f
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v3, :cond_70

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 179
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    return-void

    .line 184
    :cond_68
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 185
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    :cond_70
    if-eqz v2, :cond_73

    const/4 v0, 0x0

    :cond_73
    if-eqz v5, :cond_77

    const/4 v6, 0x0

    goto :goto_78

    :cond_77
    move v6, v1

    .line 197
    :goto_78
    iget-object v2, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v4, Lcom/mopub/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$1;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    .line 198
    invoke-virtual/range {v2 .. v7}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_d

    .line 266
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 271
    :cond_d
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 258
    invoke-virtual {p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 118
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 3

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageBitmap:Landroid/graphics/Bitmap;

    .line 107
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 140
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 3

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageBitmap:Landroid/graphics/Bitmap;

    .line 129
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader;)V
    .registers 3

    .line 92
    invoke-static {}, Lcom/mopub/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 93
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
