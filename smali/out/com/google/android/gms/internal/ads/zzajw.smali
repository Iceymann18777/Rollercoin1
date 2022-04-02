.class public final Lcom/google/android/gms/internal/ads/zzajw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzcqq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajw;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajw;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzajw;->zzcqq:Ljava/lang/String;

    if-nez v1, :cond_53

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_57

    if-nez v1, :cond_53

    const/4 v1, 0x3

    :try_start_e
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p2, "com.google.ads.mediation.MediationAdapter"

    const/4 v1, 0x0

    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_50

    :try_start_1d
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    :goto_2c
    array-length v5, p1

    if-ge v4, v5, :cond_41

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    aget-object v5, p1, v4

    invoke-static {p0, p2, v5}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_41
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "%X"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v1

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_4d
    sput-object p0, Lcom/google/android/gms/internal/ads/zzajw;->zzcqq:Ljava/lang/String;

    goto :goto_53

    :catchall_50
    const-string p0, "err"

    goto :goto_4d

    :cond_53
    :goto_53
    sget-object p0, Lcom/google/android/gms/internal/ads/zzajw;->zzcqq:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1d .. :try_end_59} :catchall_57

    goto :goto_5b

    :goto_5a
    throw p0

    :goto_5b
    goto :goto_5a
.end method

.method public static zzqn()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajw;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzajw;->zzcqq:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
