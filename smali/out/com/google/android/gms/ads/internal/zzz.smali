.class final synthetic Lcom/google/android/gms/ads/internal/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasg;


# instance fields
.field private final zzxh:Lcom/google/android/gms/internal/ads/zzajh;

.field private final zzxi:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajh;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzz;->zzxh:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzz;->zzxi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final zzda()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzz;->zzxh:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzz;->zzxi:Ljava/lang/Runnable;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoc:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzd(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
