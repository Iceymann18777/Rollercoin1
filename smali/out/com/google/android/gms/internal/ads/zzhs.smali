.class public final Lcom/google/android/gms/internal/ads/zzhs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzakc:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzakd:Lcom/google/android/gms/internal/ads/zzii;

.field private final zzake:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzake:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakc:Lcom/google/android/gms/internal/ads/zzhx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzii;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhs;->zzhn()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakc:Lcom/google/android/gms/internal/ads/zzhx;

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbeo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzake:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzii;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhs;->zzhn()V

    return-void
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhs;->zzho()[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakc:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd([B)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzhq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhz;->zzs(I)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhz;->zzbd()V

    const-string v0, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzhq()I

    move-result p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_56

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_56

    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_4f
    .catchall {:try_start_10 .. :try_end_16} :catchall_56

    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhs;->zzd(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_34
    .catchall {:try_start_16 .. :try_end_26} :catchall_32

    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_4f
    .catchall {:try_start_26 .. :try_end_29} :catchall_56

    monitor-exit p0

    return-void

    :catch_2b
    :try_start_2b
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_4f
    .catchall {:try_start_2b .. :try_end_30} :catchall_56

    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    goto :goto_45

    :catch_34
    :try_start_34
    const-string p1, "Could not write Clearcut to file."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_32

    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_4f
    .catchall {:try_start_39 .. :try_end_3c} :catchall_56

    monitor-exit p0

    return-void

    :catch_3e
    :try_start_3e
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_4f
    .catchall {:try_start_3e .. :try_end_43} :catchall_56

    monitor-exit p0

    return-void

    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_48} :catch_4f
    .catchall {:try_start_45 .. :try_end_48} :catchall_56

    goto :goto_4e

    :catch_49
    :try_start_49
    const-string v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :goto_4e
    throw p1
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4f} :catch_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_56

    :catch_4f
    :try_start_4f
    const-string p1, "Could not find file for Clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_56

    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "id=%s,timestamp=%s,event=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzhq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzhm()Lcom/google/android/gms/internal/ads/zzhs;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized zzhn()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzib;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzie;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzig;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzig;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzho()[J
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zznk;->zzjc()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_21
    if-ge v3, v4, :cond_d

    aget-object v5, v2, v3

    :try_start_25
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    const-string v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_42
    if-ge v3, v2, :cond_55

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_55
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzht;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzake:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzakd:Lcom/google/android/gms/internal/ads/zzii;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzht;->zza(Lcom/google/android/gms/internal/ads/zzii;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_18

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    :try_start_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    const-string v1, "AdMobClearcutLogger.modify"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhs;->zzake:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbep:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhs;->zzc(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhs;->zzb(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
