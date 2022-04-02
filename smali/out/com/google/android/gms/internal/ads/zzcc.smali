.class public Lcom/google/android/gms/internal/ads/zzcc;
.super Ljava/lang/Object;


# static fields
.field private static final zzpt:Landroid/os/ConditionVariable;

.field protected static volatile zzpu:Lcom/google/android/gms/internal/ads/zzhx;

.field private static volatile zzpw:Ljava/util/Random;


# instance fields
.field private zzps:Lcom/google/android/gms/internal/ads/zzcz;

.field protected volatile zzpv:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpt:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpu:Lcom/google/android/gms/internal/ads/zzhx;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpw:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcc;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcz;->zzab()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(Lcom/google/android/gms/internal/ads/zzcc;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzcz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcc;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    return-object p0
.end method

.method public static zzx()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcc;->zzy()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    :catch_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcc;->zzy()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private static zzy()Ljava/util/Random;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpw:Ljava/util/Random;

    if-nez v0, :cond_17

    const-class v0, Lcom/google/android/gms/internal/ads/zzcc;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcc;->zzpw:Ljava/util/Random;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzcc;->zzpw:Ljava/util/Random;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpw:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic zzz()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpt:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public final zza(IIJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpt:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcc;->zzpv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zzpu:Lcom/google/android/gms/internal/ads/zzhx;

    if-eqz v0, :cond_39

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaw;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcc;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcz;->zzrt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaw;->zzco:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lcom/google/android/gms/internal/ads/zzaw;->zzcp:Ljava/lang/Long;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcc;->zzpu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhx;->zzd([B)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzhz;->zzr(I)Lcom/google/android/gms/internal/ads/zzhz;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzhz;->zzs(I)Lcom/google/android/gms/internal/ads/zzhz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhz;->zzbd()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    return-void
.end method
