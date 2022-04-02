.class public final Lcom/google/android/gms/internal/ads/zzaan;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzbxg:Z

.field private static zzsh:Z


# instance fields
.field private zzbxh:Lcom/google/android/gms/internal/ads/zzatn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxg:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzj(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_37

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzbxg:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_39

    if-nez v1, :cond_37

    const/4 v1, 0x1

    :try_start_1a
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzbxg:Z

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads.omid.DynamiteOmid"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzato;->zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzatn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;
    :try_end_30
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1a .. :try_end_30} :catch_31
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    goto :goto_37

    :catch_31
    move-exception p1

    :try_start_32
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw p1
.end method


# virtual methods
.method public final getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaan;->zzj(Landroid/content/Context;)V

    const-string p1, "a."

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatn;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_33} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    if-nez v1, :cond_1b

    goto :goto_34

    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_36

    :try_start_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzatn;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p1

    goto :goto_2e

    :catch_2d
    move-exception p1

    :goto_2e
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v0

    return-object v2

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    if-nez v1, :cond_1a

    goto :goto_2e

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatn;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    goto :goto_28

    :catch_27
    move-exception p1

    :goto_28
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final zzi(Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    monitor-exit v0

    return v2

    :cond_18
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    if-eqz v1, :cond_1f

    const/4 p1, 0x1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3a

    return p1

    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaan;->zzj(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzatn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    sput-boolean p1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_2e} :catch_30
    .catchall {:try_start_1f .. :try_end_2e} :catchall_3a

    :try_start_2e
    monitor-exit v0

    return p1

    :catch_30
    move-exception p1

    goto :goto_33

    :catch_32
    move-exception p1

    :goto_33
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatn;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaan;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbet:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaan;->zzsh:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzbxh:Lcom/google/android/gms/internal/ads/zzatn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatn;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method
