.class final Lcom/google/android/gms/internal/ads/zzor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbin:Lcom/google/android/gms/internal/ads/zzoq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzoq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoq;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoq;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoq;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoq;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzcs()V

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzbin:Lcom/google/android/gms/internal/ads/zzoq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Lcom/google/android/gms/internal/ads/zzoq;Lcom/google/android/gms/internal/ads/zzoz;)Lcom/google/android/gms/internal/ads/zzoz;

    return-void
.end method
