.class final Lcom/google/android/gms/ads/internal/zzan;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahu;


# instance fields
.field private final synthetic zzza:Lcom/google/android/gms/ads/internal/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzal;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedVideoAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzd;->zzcb()V

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->zzbo()V

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzd;->zzcc()V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzdl()V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzal;->zzdk()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaig;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzal;->zzb(Lcom/google/android/gms/internal/ads/zzaig;)V

    return-void
.end method

.method public final zzdm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzan;->zzza:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    return-void
.end method
