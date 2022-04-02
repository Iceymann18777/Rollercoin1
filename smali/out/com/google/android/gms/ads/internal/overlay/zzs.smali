.class public final Lcom/google/android/gms/ads/internal/overlay/zzs;
.super Lcom/google/android/gms/internal/ads/zzaaq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzbzb:Z

.field private zzbzc:Z

.field private zztk:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzc:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized zznr()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzc:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcb()V

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzc:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onBackPressed()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v1, :cond_13

    :goto_d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_13
    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    if-nez p1, :cond_47

    iget-object p1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcc()V

    :cond_47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeh()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyt:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5f
    return-void
.end method

.method public final onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zznr()V

    :cond_b
    return-void
.end method

.method public final onPause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onPause()V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zznr()V

    :cond_18
    return-void
.end method

.method public final onRestart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onResume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzb:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbza:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onResume()V

    :cond_1a
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzbzb:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onStop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zztk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zznr()V

    :cond_b
    return-void
.end method

.method public final zzax()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zznj()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
