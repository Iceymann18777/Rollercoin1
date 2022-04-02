.class final Lcom/mopub/network/Networking$2;
.super Ljava/lang/Object;
.source "Networking.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageCache:Landroidx/collection/LruCache;


# direct methods
.method constructor <init>(Landroidx/collection/LruCache;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/mopub/network/Networking$2;->val$imageCache:Landroidx/collection/LruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/mopub/network/Networking$2;->val$imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/mopub/network/Networking$2;->val$imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
