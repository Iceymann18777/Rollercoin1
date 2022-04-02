.class final Lcom/google/android/gms/internal/ads/zztn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzts;


# instance fields
.field private final synthetic zzboa:Lcom/google/android/gms/internal/ads/zzagu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzagu;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztn;->zzboa:Lcom/google/android/gms/internal/ads/zzagu;

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

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztt;->zzboh:Lcom/google/android/gms/internal/ads/zzahe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztn;->zzboa:Lcom/google/android/gms/internal/ads/zzagu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzahe;->zza(Lcom/google/android/gms/internal/ads/zzagu;)V

    :cond_b
    return-void
.end method
