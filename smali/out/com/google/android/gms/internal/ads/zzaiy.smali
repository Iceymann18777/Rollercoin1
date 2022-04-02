.class public final Lcom/google/android/gms/internal/ads/zzaiy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcnp:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcnq:Ljava/lang/Object;

.field private zzcnr:Ljava/lang/String;

.field private final zzcns:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzcnu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcnv:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzcnw:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnp:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnq:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnr:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcns:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnv:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 6

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    const-string v0, "_aeid"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_e} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    const-string v1, "Invalid event ID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_23
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    if-eqz p2, :cond_33

    const/4 p1, 0x1

    const-string p2, "_r"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_33
    return-object p0
.end method

.method private final zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p2

    invoke-direct {p0, p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    :goto_23
    return-object v1
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_33

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzac(Landroid/content/Context;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "am"

    aput-object v4, v1, v3

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    const-string p2, "logEventInternal"

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    :cond_33
    :goto_33
    return-void
.end method

.method private final zza(Ljava/lang/Exception;Ljava/lang/String;Z)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcns:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invoke Firebase method "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    if-eqz p3, :cond_38

    const-string p1, "The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcns:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_38
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_2e

    :catch_29
    move-exception p1

    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return v1

    :cond_2e
    :goto_2e
    return v2
.end method

.method private final zzac(Landroid/content/Context;)Ljava/lang/reflect/Method;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "logEventInternal"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_33

    return-object p1

    :catch_33
    move-exception p1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzaiy;->zzh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invoke Firebase method "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ad Unit Id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p1

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method private final zzh(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "_ac"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "_ai"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "type"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "value"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "_ar"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Log a Firebase reward video event, reward type: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reward value: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaa(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxt:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    const-string v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnp:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzaxu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzaxu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v11, p0}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;)V

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1, v12}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(Lcom/google/android/gms/internal/ads/zzaiy;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_82

    return-object v0

    :catch_82
    move-exception v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    instance-of p1, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_8e

    const-string p1, "TIME_OUT"

    return-object p1

    :cond_8e
    return-object v1
.end method

.method public final zzab(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "generateEventId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v1
.end method

.method final synthetic zzad(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "beginAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "endAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnv:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    const-string v0, "setCurrentScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    :try_start_1e
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v3, 0x1

    aput-object p2, v5, v3

    const/4 p2, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p2

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_ac"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_ai"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_aq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzs(Landroid/content/Context;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxj:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcns:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_51

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_48

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzbe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzbh(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    const-string p1, "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_48

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v3, :cond_51

    return v3

    :cond_51
    :goto_51
    return v1
.end method

.method public final zzt(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxk:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzu(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxl:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzv(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxm:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzw(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzx(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final zzy(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "getCurrentScreenName"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_b

    return-object v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const-string v4, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-nez v1, :cond_17

    return-object v2

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_41

    const-string v3, "getCurrentScreenClass"

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzaiy;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_41} :catch_45

    :cond_41
    if-eqz v3, :cond_44

    return-object v3

    :cond_44
    return-object v2

    :catch_45
    move-exception p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public final zzz(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnr:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnr:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_13
    const-string v1, "getGmpAppId"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zza(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->zzcnr:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p1
.end method
