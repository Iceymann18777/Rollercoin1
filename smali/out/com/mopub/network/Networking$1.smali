.class final Lcom/mopub/network/Networking$1;
.super Landroidx/collection/LruCache;
.source "Networking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 118
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/network/Networking$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 3

    if-eqz p2, :cond_d

    .line 122
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1

    .line 125
    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
