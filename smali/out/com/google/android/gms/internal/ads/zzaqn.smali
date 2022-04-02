.class public final Lcom/google/android/gms/internal/ads/zzaqn;
.super Lcom/google/android/gms/internal/ads/zzaqh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzdbg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdbh:Ljava/text/DecimalFormat;


# instance fields
.field private zzdbi:Ljava/io/File;

.field private zzdbj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbh:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapw;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqh;-><init>(Lcom/google/android/gms/internal/ads/zzapw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Context.getCacheDir() returned null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4c

    const-string p1, "Could not create preload cache directory at "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_40
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    return-void

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_60

    :cond_5f
    return-void

    :cond_60
    :goto_60
    const-string p1, "Could not set cache file permissions at "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7d

    :cond_77
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_7d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    return-void
.end method

.method private final zzc(Ljava/io/File;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbj:Z

    return-void
.end method

.method public final zzdp(Ljava/lang/String;)Z
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_10

    const-string v0, "noCacheDir"

    :goto_c
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    if-nez v0, :cond_16

    const/4 v3, 0x0

    goto :goto_32

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v2, v1, :cond_32

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_32
    :goto_32
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaux:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_93

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    if-nez v0, :cond_4a

    :cond_48
    const/4 v0, 0x0

    goto :goto_88

    :cond_4a
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object v5, v10

    const/4 v4, 0x0

    :goto_56
    if-ge v4, v3, :cond_73

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_70

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v1

    if-gez v7, :cond_70

    move-object v5, v6

    move-wide v1, v12

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    :cond_73
    if-eqz v5, :cond_48

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzaqn;->zzc(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_88
    :goto_88
    if-nez v0, :cond_10

    const-string v0, "Unable to expire stream cache"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    goto/16 :goto_c

    :cond_93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzaqn;->zzc(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_d9

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "Stream cache hit at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c8

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ce

    :cond_c8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_ce
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    :cond_d9
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbi:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_f9

    :cond_f3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    :goto_f9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    monitor-enter v1

    :try_start_fc
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_129

    const-string v0, "Stream cache already in progress at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_115

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11b

    :cond_115
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_11b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v8, v9, v0, v2, v10}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v11

    :cond_129
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_12f
    .catchall {:try_start_fc .. :try_end_12f} :catchall_5c0

    const-string v15, "error"

    :try_start_131
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzew()Lcom/google/android/gms/internal/ads/zzaok;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzavc:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_14a
    add-int/2addr v3, v13

    const/16 v4, 0x14

    if-gt v3, v4, :cond_512

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v6, v5, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_507

    check-cast v5, Ljava/net/HttpURLConnection;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzamy;-><init>()V

    invoke-virtual {v6, v5, v10}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;I)V

    div-int/lit8 v7, v7, 0x64
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_173} :catch_525
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_173} :catch_523

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1ed

    :try_start_176
    const-string v4, "Location"

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1de

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d6

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b6

    const-string v7, "https"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported scheme: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b2

    :cond_1ac
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1b2
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b6
    const-string v2, "Redirecting to "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1c7

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1cd

    :cond_1c7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_1cd
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v6

    goto/16 :goto_14a

    :cond_1d6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1de
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_1e6} :catch_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_176 .. :try_end_1e6} :catch_1e6

    :catch_1e6
    move-exception v0

    goto :goto_1e9

    :catch_1e8
    move-exception v0

    :goto_1e9
    move-object v2, v10

    :goto_1ea
    move-object v1, v14

    goto/16 :goto_52b

    :cond_1ed
    :try_start_1ed
    instance-of v1, v5, Ljava/net/HttpURLConnection;
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1ef} :catch_525
    .catch Ljava/lang/RuntimeException; {:try_start_1ed .. :try_end_1ef} :catch_523

    if-eqz v1, :cond_246

    :try_start_1f1
    move-object v1, v5

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_246

    const-string v15, "badUrl"

    const-string v0, "HTTP request failed. Code: "

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_214

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_219

    :cond_214
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_219} :catch_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_1f1 .. :try_end_219} :catch_1e6

    :goto_219
    :try_start_219
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_242} :catch_244
    .catch Ljava/lang/RuntimeException; {:try_start_219 .. :try_end_242} :catch_242

    :catch_242
    move-exception v0

    goto :goto_1ea

    :catch_244
    move-exception v0

    goto :goto_1ea

    :cond_246
    :try_start_246
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_246 .. :try_end_24a} :catch_525
    .catch Ljava/lang/RuntimeException; {:try_start_246 .. :try_end_24a} :catch_523

    if-gez v7, :cond_275

    :try_start_24c
    const-string v0, "Stream cache aborted, missing content-length header at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_263

    :cond_25d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_263
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_274} :catch_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_24c .. :try_end_274} :catch_1e6

    return v11

    :cond_275
    :try_start_275
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbh:Ljava/text/DecimalFormat;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzauy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_28c
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_28c} :catch_525
    .catch Ljava/lang/RuntimeException; {:try_start_275 .. :try_end_28c} :catch_523

    if-le v7, v3, :cond_2e3

    :try_start_28e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const-string v0, "File too big for full file cache. Size: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2ce

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d4

    :cond_2ce
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2d4
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e2
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_2e2} :catch_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_28e .. :try_end_2e2} :catch_1e6

    return v11

    :cond_2e3
    :try_start_2e3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caching "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_2e3 .. :try_end_31e} :catch_525
    .catch Ljava/lang/RuntimeException; {:try_start_2e3 .. :try_end_31e} :catch_523

    :try_start_31e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    sget-object v6, Lcom/google/android/gms/internal/ads/zznk;->zzavb:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;
    :try_end_33c
    .catch Ljava/io/IOException; {:try_start_31e .. :try_end_33c} :catch_4fd
    .catch Ljava/lang/RuntimeException; {:try_start_31e .. :try_end_33c} :catch_4fb

    move-object v10, v14

    :try_start_33d
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamj;

    invoke-direct {v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(J)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zznk;->zzava:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :goto_356
    invoke-interface {v5, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_33d .. :try_end_35a} :catch_4f6
    .catch Ljava/lang/RuntimeException; {:try_start_33d .. :try_end_35a} :catch_4f4

    if-ltz v20, :cond_472

    add-int v11, v11, v20

    if-le v11, v3, :cond_393

    :try_start_360
    const-string v15, "sizeExceeded"

    const-string v0, "File too big for full file cache. Size: "

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_378

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_37d

    :cond_378
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_37d
    .catch Ljava/io/IOException; {:try_start_360 .. :try_end_37d} :catch_38d
    .catch Ljava/lang/RuntimeException; {:try_start_360 .. :try_end_37d} :catch_38b

    :goto_37d
    :try_start_37d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream cache file size limit exceeded"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_385
    .catch Ljava/io/IOException; {:try_start_37d .. :try_end_385} :catch_387
    .catch Ljava/lang/RuntimeException; {:try_start_37d .. :try_end_385} :catch_385

    :catch_385
    move-exception v0

    goto :goto_388

    :catch_387
    move-exception v0

    :goto_388
    move-object v2, v1

    move-object v1, v10

    goto :goto_390

    :catch_38b
    move-exception v0

    goto :goto_38e

    :catch_38d
    move-exception v0

    :goto_38e
    move-object v1, v10

    const/4 v2, 0x0

    :goto_390
    move-object v10, v4

    goto/16 :goto_52b

    :cond_393
    :try_start_393
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_396
    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_396

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    cmp-long v24, v20, v22

    if-gtz v24, :cond_426

    move-object/from16 v20, v1

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbj:Z

    if-nez v1, :cond_416

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamj;->tryAcquire()Z

    move-result v1

    if-eqz v1, :cond_3f0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;
    :try_end_3bf
    .catch Ljava/io/IOException; {:try_start_393 .. :try_end_3bf} :catch_46a
    .catch Ljava/lang/RuntimeException; {:try_start_393 .. :try_end_3bf} :catch_468

    move-object/from16 v22, v15

    :try_start_3c1
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaqi;
    :try_end_3c3
    .catch Ljava/io/IOException; {:try_start_3c1 .. :try_end_3c3} :catch_3ea
    .catch Ljava/lang/RuntimeException; {:try_start_3c1 .. :try_end_3c3} :catch_3e8

    const/16 v23, 0x0

    move-object/from16 v24, v10

    move-object v10, v1

    move-object v1, v15

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move v5, v11

    move-object/from16 v19, v6

    const/16 v28, 0x3

    move v6, v7

    move/from16 v29, v7

    move/from16 v7, v23

    :try_start_3e1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzaqh;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v10, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_402

    :catch_3e8
    move-exception v0

    goto :goto_3eb

    :catch_3ea
    move-exception v0

    :goto_3eb
    move-object/from16 v27, v4

    move-object v1, v10

    goto/16 :goto_4f1

    :cond_3f0
    move-object/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move/from16 v29, v7

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :goto_402
    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v10, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v7, v29

    goto/16 :goto_356

    :cond_416
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const-string v15, "externalAbort"
    :try_end_41e
    .catch Ljava/io/IOException; {:try_start_3e1 .. :try_end_41e} :catch_4bc
    .catch Ljava/lang/RuntimeException; {:try_start_3e1 .. :try_end_41e} :catch_4ba

    :try_start_41e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_426
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_426} :catch_466
    .catch Ljava/lang/RuntimeException; {:try_start_41e .. :try_end_426} :catch_464

    :cond_426
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    :try_start_42c
    const-string v15, "downloadTimeout"
    :try_end_42e
    .catch Ljava/io/IOException; {:try_start_42c .. :try_end_42e} :catch_4bc
    .catch Ljava/lang/RuntimeException; {:try_start_42c .. :try_end_42e} :catch_4ba

    :try_start_42e
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_452
    .catch Ljava/io/IOException; {:try_start_42e .. :try_end_452} :catch_466
    .catch Ljava/lang/RuntimeException; {:try_start_42e .. :try_end_452} :catch_464

    :try_start_452
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45a
    .catch Ljava/io/IOException; {:try_start_452 .. :try_end_45a} :catch_45c
    .catch Ljava/lang/RuntimeException; {:try_start_452 .. :try_end_45a} :catch_45a

    :catch_45a
    move-exception v0

    goto :goto_45d

    :catch_45c
    move-exception v0

    :goto_45d
    move-object v2, v10

    move-object/from16 v1, v24

    move-object/from16 v10, v27

    goto/16 :goto_52b

    :catch_464
    move-exception v0

    goto :goto_4bf

    :catch_466
    move-exception v0

    goto :goto_4bf

    :catch_468
    move-exception v0

    goto :goto_46b

    :catch_46a
    move-exception v0

    :goto_46b
    move-object/from16 v27, v4

    move-object/from16 v22, v15

    move-object v1, v10

    goto/16 :goto_503

    :cond_472
    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :try_start_47a
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V

    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzakb;->isLoggable(I)Z

    move-result v1
    :try_end_481
    .catch Ljava/io/IOException; {:try_start_47a .. :try_end_481} :catch_4ee
    .catch Ljava/lang/RuntimeException; {:try_start_47a .. :try_end_481} :catch_4ec

    if-eqz v1, :cond_4c2

    :try_start_483
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbh:Ljava/text/DecimalFormat;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preloaded "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V
    :try_end_4b9
    .catch Ljava/io/IOException; {:try_start_483 .. :try_end_4b9} :catch_4bc
    .catch Ljava/lang/RuntimeException; {:try_start_483 .. :try_end_4b9} :catch_4ba

    goto :goto_4c2

    :catch_4ba
    move-exception v0

    goto :goto_4bd

    :catch_4bc
    move-exception v0

    :goto_4bd
    move-object/from16 v15, v22

    :goto_4bf
    move-object/from16 v1, v24

    goto :goto_503

    :cond_4c2
    :goto_4c2
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4c4
    invoke-virtual {v12, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_4cb
    .catch Ljava/io/IOException; {:try_start_4c4 .. :try_end_4cb} :catch_4ee
    .catch Ljava/lang/RuntimeException; {:try_start_4c4 .. :try_end_4cb} :catch_4ec

    if-eqz v1, :cond_4d5

    :try_start_4cd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4d4
    .catch Ljava/io/IOException; {:try_start_4cd .. :try_end_4d4} :catch_4bc
    .catch Ljava/lang/RuntimeException; {:try_start_4cd .. :try_end_4d4} :catch_4ba

    goto :goto_4d8

    :cond_4d5
    :try_start_4d5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4d8
    .catch Ljava/io/IOException; {:try_start_4d5 .. :try_end_4d8} :catch_4d8
    .catch Ljava/lang/RuntimeException; {:try_start_4d5 .. :try_end_4d8} :catch_4ba

    :catch_4d8
    :goto_4d8
    :try_start_4d8
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v11}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;
    :try_end_4e1
    .catch Ljava/io/IOException; {:try_start_4d8 .. :try_end_4e1} :catch_4ee
    .catch Ljava/lang/RuntimeException; {:try_start_4d8 .. :try_end_4e1} :catch_4ec

    move-object/from16 v1, v24

    :try_start_4e3
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4e6
    .catch Ljava/io/IOException; {:try_start_4e3 .. :try_end_4e6} :catch_4ea
    .catch Ljava/lang/RuntimeException; {:try_start_4e3 .. :try_end_4e6} :catch_4e8

    const/4 v0, 0x1

    return v0

    :catch_4e8
    move-exception v0

    goto :goto_4f1

    :catch_4ea
    move-exception v0

    goto :goto_4f1

    :catch_4ec
    move-exception v0

    goto :goto_4ef

    :catch_4ee
    move-exception v0

    :goto_4ef
    move-object/from16 v1, v24

    :goto_4f1
    move-object/from16 v15, v22

    goto :goto_503

    :catch_4f4
    move-exception v0

    goto :goto_4f7

    :catch_4f6
    move-exception v0

    :goto_4f7
    move-object/from16 v27, v4

    move-object v1, v10

    goto :goto_501

    :catch_4fb
    move-exception v0

    goto :goto_4fe

    :catch_4fd
    move-exception v0

    :goto_4fe
    move-object/from16 v27, v4

    move-object v1, v14

    :goto_501
    move-object/from16 v22, v15

    :goto_503
    move-object/from16 v10, v27

    const/4 v2, 0x0

    goto :goto_52b

    :cond_507
    move-object v1, v14

    move-object/from16 v22, v15

    :try_start_50a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid protocol."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_512
    move-object v1, v14

    move-object/from16 v22, v15

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many redirects (20)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51d
    .catch Ljava/io/IOException; {:try_start_50a .. :try_end_51d} :catch_51f
    .catch Ljava/lang/RuntimeException; {:try_start_50a .. :try_end_51d} :catch_51d

    :catch_51d
    move-exception v0

    goto :goto_520

    :catch_51f
    move-exception v0

    :goto_520
    move-object/from16 v15, v22

    goto :goto_529

    :catch_523
    move-exception v0

    goto :goto_526

    :catch_525
    move-exception v0

    :goto_526
    move-object v1, v14

    move-object/from16 v22, v15

    :goto_529
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_52b
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_538

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v3

    const-string v4, "VideoStreamFullFileCache.preload"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_538
    :try_start_538
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_53b
    .catch Ljava/io/IOException; {:try_start_538 .. :try_end_53b} :catch_53c
    .catch Ljava/lang/NullPointerException; {:try_start_538 .. :try_end_53b} :catch_53c

    goto :goto_53d

    :catch_53c
    nop

    :goto_53d
    iget-boolean v3, v8, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbj:Z

    if-eqz v3, :cond_565

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    goto :goto_588

    :cond_565
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preload failed for URL \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_588
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b2

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5b2

    const-string v0, "Could not delete partial cache file at "

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5a9

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5af

    :cond_5a9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_5af
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_5b2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdbg:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_5c0
    move-exception v0

    :try_start_5c1
    monitor-exit v1
    :try_end_5c2
    .catchall {:try_start_5c1 .. :try_end_5c2} :catchall_5c0

    goto :goto_5c4

    :goto_5c3
    throw v0

    :goto_5c4
    goto :goto_5c3
.end method
