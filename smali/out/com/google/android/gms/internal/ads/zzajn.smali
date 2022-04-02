.class final synthetic Lcom/google/android/gms/internal/ads/zzajn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcpv:Lcom/google/android/gms/internal/ads/zzajm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzcpv:Lcom/google/android/gms/internal/ads/zzajm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzcpv:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqj()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
