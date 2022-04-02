.class Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/mopub/volley/VolleyError;

.field private final mRequest:Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Request;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    .line 439
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/mopub/volley/Request;

    .line 440
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addContainer(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/mopub/volley/VolleyError;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/mopub/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    iget-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 471
    iget-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/mopub/volley/Request;

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public setError(Lcom/mopub/volley/VolleyError;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/mopub/volley/VolleyError;

    return-void
.end method
