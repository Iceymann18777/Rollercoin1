.class final Lcom/google/android/gms/internal/ads/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzw:Lcom/google/android/gms/internal/ads/zzr;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzx;

.field private final zzy:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzi;Lcom/google/android/gms/internal/ads/zzr;Lcom/google/android/gms/internal/ads/zzx;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzk;->zzx:Lcom/google/android/gms/internal/ads/zzx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzk;->zzy:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzr;->isCanceled()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzx:Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzx;->zzbh:Lcom/google/android/gms/internal/ads/zzae;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzk;->zzx:Lcom/google/android/gms/internal/ads/zzx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzx;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzr;->zza(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzk;->zzx:Lcom/google/android/gms/internal/ads/zzx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzx;->zzbh:Lcom/google/android/gms/internal/ads/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Lcom/google/android/gms/internal/ads/zzae;)V

    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzx:Lcom/google/android/gms/internal/ads/zzx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzx;->zzbi:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Ljava/lang/String;)V

    goto :goto_38

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzw:Lcom/google/android/gms/internal/ads/zzr;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzr;->zzc(Ljava/lang/String;)V

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzk;->zzy:Ljava/lang/Runnable;

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3f
    return-void
.end method
