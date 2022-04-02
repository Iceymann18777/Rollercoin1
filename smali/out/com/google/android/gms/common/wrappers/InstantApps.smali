.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# static fields
.field private static zza:Landroid/content/Context;

.field private static zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    if-ne v2, v1, :cond_1b

    .line 4
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_55

    monitor-exit v0

    return p0

    :cond_1b
    const/4 v2, 0x0

    .line 5
    :try_start_1c
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_55

    goto :goto_4b

    .line 9
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 p0, 0x1

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_43} :catch_44
    .catchall {:try_start_33 .. :try_end_43} :catchall_55

    goto :goto_4b

    :catch_44
    const/4 p0, 0x0

    .line 14
    :try_start_45
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    .line 15
    :goto_4b
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    .line 16
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_55

    monitor-exit v0

    return p0

    :catchall_55
    move-exception p0

    monitor-exit v0

    throw p0
.end method
