.class public Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 6

    .line 364
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 366
    iput-object p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 367
    iput-object p4, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 368
    iput-object p5, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$400(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .registers 3

    .line 378
    invoke-static {}, Lcom/mopub/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 380
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_8

    return-void

    .line 384
    :cond_8
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->access$100(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2a

    .line 386
    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 388
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->access$100(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 392
    :cond_2a
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_52

    .line 394
    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 395
    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_52

    .line 396
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/ImageLoader;->access$200(Lcom/mopub/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    :goto_52
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
