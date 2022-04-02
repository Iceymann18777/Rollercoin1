.class public abstract Lcom/google/android/gms/internal/ads/zzabh;
.super Lcom/google/android/gms/internal/ads/zzajx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final zzbzd:Lcom/google/android/gms/internal/ads/zzabm;

.field protected final zzbze:Lcom/google/android/gms/internal/ads/zzaji;

.field protected zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

.field protected final zzbzh:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzabm;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzd:Lcom/google/android/gms/internal/ads/zzabm;

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method protected abstract zzaa(I)Lcom/google/android/gms/internal/ads/zzajh;
.end method

.method public final zzdn()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AdRendererBackgroundTask started."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->errorCode:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_60

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzabh;->zze(J)V
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzabk; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_60

    goto :goto_50

    :catch_14
    move-exception v1

    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->getErrorCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    goto :goto_28

    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_2f

    :cond_28
    :goto_28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabk;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    if-nez v1, :cond_3b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    :goto_38
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    goto :goto_45

    :cond_3b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(IJ)V

    goto :goto_38

    :goto_45
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzabi;-><init>(Lcom/google/android/gms/internal/ads/zzabh;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzabh;->zzaa(I)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabj;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_15 .. :try_end_62} :catchall_60

    goto :goto_64

    :goto_63
    throw v1

    :goto_64
    goto :goto_63
.end method

.method protected abstract zze(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabk;
        }
    .end annotation
.end method
