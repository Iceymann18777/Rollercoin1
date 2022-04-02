.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# static fields
.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$CacheUtil$uQzD0N2Max0h6DuMDYcCbN2peIo;->INSTANCE:Lcom/google/android/exoplayer2/upstream/cache/-$$Lambda$CacheUtil$uQzD0N2Max0h6DuMDYcCbN2peIo;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .registers 2

    :goto_0
    if-eqz p0, :cond_14

    .line 378
    instance-of v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_f

    .line 379
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_f

    const/4 p0, 0x1

    return p0

    .line 384
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method
