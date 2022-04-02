.class Lcom/mopub/nativeads/MoPubCache;
.super Ljava/lang/Object;
.source "MoPubCache.java"


# static fields
.field private static final NATIVE_CACHE_NAME:Ljava/lang/String; = "mopub-native-cache"

.field private static volatile sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCacheInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 5

    .line 28
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_4d

    .line 32
    const-class v1, Lcom/mopub/nativeads/MoPubCache;

    monitor-enter v1

    .line 33
    :try_start_a
    sget-object v0, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_48

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 38
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mopub-native-cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 42
    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 43
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    invoke-direct {v2, v0, p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    .line 44
    sput-object v2, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object v0, v2

    .line 47
    :cond_48
    monitor-exit v1

    goto :goto_4d

    :catchall_4a
    move-exception p0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4a

    throw p0

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method static resetInstance()V
    .registers 1

    .line 55
    sget-object v0, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_c

    .line 56
    sget-object v0, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->release()V

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/mopub/nativeads/MoPubCache;->sInstance:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    :cond_c
    return-void
.end method
