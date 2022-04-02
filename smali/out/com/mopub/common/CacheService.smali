.class public Lcom/mopub/common/CacheService;
.super Ljava/lang/Object;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/CacheService$DiskLruCachePutTask;,
        Lcom/mopub/common/CacheService$DiskLruCacheGetTask;,
        Lcom/mopub/common/CacheService$DiskLruCacheGetListener;
    }
.end annotation


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final DISK_CACHE_INDEX:I = 0x0

.field static final UNIQUE_CACHE_NAME:Ljava/lang/String; = "mopub-cache"

.field private static final VALUE_COUNT:I = 0x1

.field private static sDiskLruCache:Lcom/mopub/common/DiskLruCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAndNullCaches()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 253
    :try_start_5
    invoke-virtual {v0}, Lcom/mopub/common/DiskLruCache;->delete()V

    .line 254
    sput-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_d

    .line 256
    :catch_b
    sput-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    :cond_d
    :goto_d
    return-void
.end method

.method public static containsKeyDiskCache(Ljava/lang/String;)Z
    .registers 3

    .line 88
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 93
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mopub/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_11

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    :catch_11
    :cond_11
    return v1
.end method

.method public static createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mopub-cache"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDiskLruCache()Lcom/mopub/common/DiskLruCache;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    return-object v0
.end method

.method public static getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFromDiskCache(Ljava/lang/String;)[B
    .registers 8

    .line 116
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    .line 123
    :try_start_7
    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mopub/common/DiskLruCache;->get(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_45
    .catchall {:try_start_7 .. :try_end_f} :catchall_43

    if-nez p0, :cond_17

    if-eqz p0, :cond_16

    .line 142
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    :cond_16
    return-object v1

    .line 128
    :cond_17
    :try_start_17
    invoke-virtual {p0, v2}, Lcom/mopub/common/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 130
    invoke-virtual {p0, v2}, Lcom/mopub/common/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v3

    long-to-int v4, v3

    new-array v1, v4, [B

    .line 131
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_3e
    .catchall {:try_start_17 .. :try_end_29} :catchall_3b

    .line 133
    :try_start_29
    invoke-static {v3, v1}, Lcom/mopub/common/util/Streams;->readStream(Ljava/io/InputStream;[B)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_30

    .line 135
    :try_start_2c
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_35

    :catchall_30
    move-exception v0

    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_3e
    .catchall {:try_start_2c .. :try_end_35} :catchall_3b

    :cond_35
    :goto_35
    if-eqz p0, :cond_5c

    .line 142
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    goto :goto_5c

    :catchall_3b
    move-exception v0

    move-object v1, p0

    goto :goto_5d

    :catch_3e
    move-exception v0

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    goto :goto_47

    :catchall_43
    move-exception v0

    goto :goto_5d

    :catch_45
    move-exception v0

    move-object p0, v1

    .line 139
    :goto_47
    :try_start_47
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Unable to get from DiskLruCache"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_43

    if-eqz v1, :cond_5b

    .line 142
    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    :cond_5b
    move-object v1, p0

    :cond_5c
    :goto_5c
    return-object v1

    :goto_5d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/mopub/common/DiskLruCache$Snapshot;->close()V

    :cond_62
    throw v0
.end method

.method public static getFromDiskCacheAsync(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V
    .registers 3

    .line 150
    new-instance v0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;

    invoke-direct {v0, p0, p1}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;-><init>(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 1

    .line 69
    invoke-static {p0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    return-void
.end method

.method public static initializeDiskCache(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 46
    :cond_4
    sget-object v1, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 47
    invoke-static {p0}, Lcom/mopub/common/CacheService;->getDiskCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_10

    return v0

    .line 52
    :cond_10
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;)J

    move-result-wide v3

    .line 54
    :try_start_14
    invoke-static {p0, v2, v2, v3, v4}, Lcom/mopub/common/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/mopub/common/DiskLruCache;

    move-result-object p0

    sput-object p0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_1b

    goto :goto_2b

    :catch_1b
    move-exception p0

    .line 61
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to create DiskLruCache"

    aput-object v4, v3, v0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v0

    :cond_2b
    :goto_2b
    return v2
.end method

.method public static putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 7

    .line 158
    sget-object v0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 164
    :try_start_8
    invoke-static {p0}, Lcom/mopub/common/CacheService;->createValidDiskCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mopub/common/DiskLruCache;->edit(Ljava/lang/String;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_13

    return v1

    .line 171
    :cond_13
    new-instance p0, Ljava/io/BufferedOutputStream;

    .line 172
    invoke-virtual {v2, v1}, Lcom/mopub/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    invoke-static {p1, p0}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 174
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 175
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 177
    sget-object p0, Lcom/mopub/common/CacheService;->sDiskLruCache:Lcom/mopub/common/DiskLruCache;

    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache;->flush()V

    .line 178
    invoke-virtual {v2}, Lcom/mopub/common/DiskLruCache$Editor;->commit()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_2e

    return v3

    :catch_2e
    move-exception p0

    .line 180
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Unable to put to DiskLruCache"

    aput-object v4, v0, v1

    aput-object p0, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    if-eqz v2, :cond_42

    .line 183
    :try_start_3f
    invoke-virtual {v2}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    return v1
.end method

.method public static putToDiskCache(Ljava/lang/String;[B)Z
    .registers 3

    .line 154
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v0}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static putToDiskCacheAsync(Ljava/lang/String;[B)V
    .registers 3

    .line 194
    new-instance v0, Lcom/mopub/common/CacheService$DiskLruCachePutTask;

    invoke-direct {v0, p0, p1}, Lcom/mopub/common/CacheService$DiskLruCachePutTask;-><init>(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/mopub/common/CacheService$DiskLruCachePutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
