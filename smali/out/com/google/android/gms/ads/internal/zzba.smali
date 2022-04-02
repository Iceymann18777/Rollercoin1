.class final synthetic Lcom/google/android/gms/ads/internal/zzba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzxi:Ljava/lang/Runnable;

.field private final zzzx:Lcom/google/android/gms/ads/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzay;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzzx:Lcom/google/android/gms/ads/internal/zzay;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzba;->zzxi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzba;->zzzx:Lcom/google/android/gms/ads/internal/zzay;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzba;->zzxi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzay;->zza(Ljava/lang/Runnable;)V

    return-void
.end method
