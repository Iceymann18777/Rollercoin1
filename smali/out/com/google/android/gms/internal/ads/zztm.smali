.class final Lcom/google/android/gms/internal/ads/zztm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzti;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zztt;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztt;->zzboh:Lcom/google/android/gms/internal/ads/zzahe;

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztt;->zzboh:Lcom/google/android/gms/internal/ads/zzahe;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzahe;->onRewardedVideoAdClosed()V

    :cond_9
    return-void
.end method
