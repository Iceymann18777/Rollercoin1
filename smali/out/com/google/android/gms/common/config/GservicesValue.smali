.class public abstract Lcom/google/android/gms/common/config/GservicesValue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/config/GservicesValue$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzc:Ljava/lang/Object;

.field private static zzd:Lcom/google/android/gms/common/config/GservicesValue$zza;

.field private static zze:I

.field private static zzf:Landroid/content/Context;

.field private static zzg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final zza:Ljava/lang/String;

.field protected final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzd:Lcom/google/android/gms/common/config/GservicesValue$zza;

    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/google/android/gms/common/config/GservicesValue;->zze:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzh:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_4
    monitor-exit v0

    return v1

    :catchall_6
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/android/gms/common/config/zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzc;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/gms/common/config/zzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzd;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/gms/common/config/zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zza;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/android/gms/common/config/zze;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/android/gms/common/config/zzb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzb;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static zza()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_4
    monitor-exit v0

    return v1

    :catchall_6
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzh:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 21
    :cond_5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_3f

    .line 25
    sget-object v2, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    .line 26
    :try_start_11
    sput-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzg:Ljava/util/Set;

    .line 27
    sput-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzf:Landroid/content/Context;

    .line 28
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_3c

    .line 29
    :try_start_16
    iget-object v1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1c} :catch_22
    .catchall {:try_start_16 .. :try_end_1c} :catchall_20

    .line 30
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_20
    move-exception v1

    goto :goto_38

    .line 33
    :catch_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_20

    .line 34
    :try_start_26
    iget-object v3, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_33

    .line 35
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_20

    .line 36
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :catchall_33
    move-exception v3

    .line 38
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    throw v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_20

    .line 40
    :goto_38
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    throw v1

    :catchall_3c
    move-exception v0

    .line 28
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    :catchall_3f
    move-exception v0

    .line 23
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public final getBinderSafe()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/common/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public override(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "GservicesValue"

    const-string v1, "GservicesValue.override(): test should probably call initForTests() first"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzh:Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter p1

    .line 15
    :try_start_c
    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue;->zza()Z

    .line 16
    monitor-exit p1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v0
.end method

.method public resetOverride()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzh:Ljava/lang/Object;

    return-void
.end method

.method protected abstract zza(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
