.class public Lcom/mopub/nativeads/NativeImageHelper;
.super Ljava/lang/Object;
.source "NativeImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeImageHelper$ImageListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const-string v0, "Cannot load image into null ImageView"

    .line 104
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "Cannot load image with null url"

    .line 108
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    .line 109
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 113
    :cond_16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/mopub/nativeads/NativeImageHelper$2;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/NativeImageHelper$2;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method public static preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/NativeImageHelper$ImageListener;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    new-instance v2, Lcom/mopub/nativeads/NativeImageHelper$1;

    invoke-direct {v2, v0, v1, p2}, Lcom/mopub/nativeads/NativeImageHelper$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 p0, 0x1

    .line 89
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    sget-object p0, Lcom/mopub/nativeads/NativeErrorCode;->IMAGE_DOWNLOAD_FAILURE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p0}, Lcom/mopub/nativeads/NativeImageHelper$ImageListener;->onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 93
    :cond_38
    invoke-virtual {p0, v0, v2}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1c

    :cond_3c
    return-void
.end method
