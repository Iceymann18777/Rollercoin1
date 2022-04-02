.class Lcom/mopub/nativeads/NativeVideoController$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoController;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$1;->this$0:Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .registers 4

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    const-string v1, "exo_demo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V

    .line 424
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController$1;->this$0:Lcom/mopub/nativeads/NativeVideoController;

    invoke-static {v1}, Lcom/mopub/nativeads/NativeVideoController;->access$000(Lcom/mopub/nativeads/NativeVideoController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubCache;->getCacheInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 427
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    move-object v0, v2

    :cond_1a
    return-object v0
.end method
