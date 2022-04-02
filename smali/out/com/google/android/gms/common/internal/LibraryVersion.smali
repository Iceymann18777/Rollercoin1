.class public Lcom/google/android/gms/common/internal/LibraryVersion;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzb:Lcom/google/android/gms/common/internal/LibraryVersion;


# instance fields
.field private zzc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "LibraryVersion"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 33
    new-instance v0, Lcom/google/android/gms/common/internal/LibraryVersion;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/LibraryVersion;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-object v0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "Failed to get app version for libraryName: "

    const-string v1, "LibraryVersion"

    const-string v2, "Please provide a valid libraryName"

    .line 5
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_1a
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v3, 0x0

    :try_start_20
    const-string v4, "/%s.properties"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 11
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    const-class v5, Lcom/google/android/gms/common/internal/LibraryVersion;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_32} :catch_93
    .catchall {:try_start_20 .. :try_end_32} :catchall_91

    if-eqz v4, :cond_6a

    .line 14
    :try_start_34
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "version"

    .line 15
    invoke-virtual {v2, v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    sget-object v2, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version is "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    .line 17
    :cond_6a
    sget-object v2, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_80

    :cond_7b
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_80
    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_83} :catch_8c
    .catchall {:try_start_34 .. :try_end_83} :catchall_89

    :goto_83
    if-eqz v4, :cond_b5

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_b5

    :catchall_89
    move-exception p1

    move-object v3, v4

    goto :goto_c6

    :catch_8c
    move-exception v2

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_95

    :catchall_91
    move-exception p1

    goto :goto_c6

    :catch_93
    move-exception v2

    move-object v4, v3

    .line 21
    :goto_95
    :try_start_95
    sget-object v5, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_a6

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ac

    :cond_a6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    :goto_ac
    invoke-virtual {v5, v1, v0, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_91

    if-eqz v3, :cond_b4

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b4
    move-object v3, v4

    :cond_b5
    :goto_b5
    if-nez v3, :cond_c0

    .line 29
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "UNKNOWN"

    .line 30
    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :goto_c6
    if-eqz v3, :cond_cb

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    :cond_cb
    throw p1
.end method
