.class final Lcom/google/android/gms/internal/ads/zztb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsu;)V
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

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztt;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztt;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkh;->onAdClicked()V

    :cond_9
    return-void
.end method