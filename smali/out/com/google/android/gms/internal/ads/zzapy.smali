.class final Lcom/google/android/gms/internal/ads/zzapy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzahs:Z

.field private zzdap:Lcom/google/android/gms/internal/ads/zzapi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzahs:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzdap:Lcom/google/android/gms/internal/ads/zzapi;

    return-void
.end method

.method private final zztv()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzahs:Z

    return-void
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzahs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapy;->zztv()V

    return-void
.end method

.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzahs:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapy;->zzdap:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapi;->zzte()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapy;->zztv()V

    :cond_c
    return-void
.end method
