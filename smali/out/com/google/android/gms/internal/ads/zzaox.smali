.class final Lcom/google/android/gms/internal/ads/zzaox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcxf:Lcom/google/android/gms/internal/ads/zzaov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaov;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzapf;->zzsv()V

    :cond_11
    return-void
.end method
