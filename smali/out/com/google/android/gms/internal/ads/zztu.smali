.class final Lcom/google/android/gms/internal/ads/zztu;
.super Lcom/google/android/gms/internal/ads/zzki;


# instance fields
.field private final zzboi:Lcom/google/android/gms/internal/ads/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzkh;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzki;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzud;->zzlv()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzazg:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzazh:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v0, :cond_40

    if-gez v1, :cond_2b

    goto :goto_40

    :cond_2b
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    sget-object v3, Lcom/google/android/gms/internal/ads/zztv;->zzboj:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_47

    :cond_40
    :goto_40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzex()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztw;->zzld()V

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdImpression()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdImpression()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdLoaded()V

    return-void
.end method

.method public final onAdOpened()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzboi:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdOpened()V

    return-void
.end method
