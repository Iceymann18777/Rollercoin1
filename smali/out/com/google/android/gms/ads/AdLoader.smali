.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzuk:Lcom/google/android/gms/internal/ads/zzjm;

.field private final zzul:Lcom/google/android/gms/internal/ads/zzkk;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkk;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzara:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkk;Lcom/google/android/gms/internal/ads/zzjm;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzkk;Lcom/google/android/gms/internal/ads/zzjm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzul:Lcom/google/android/gms/internal/ads/zzkk;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zzuk:Lcom/google/android/gms/internal/ads/zzjm;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzlw;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzul:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlw;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzkk;->zzd(Lcom/google/android/gms/internal/ads/zzjj;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzul:Lcom/google/android/gms/internal/ads/zzkk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkk;->zzck()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzul:Lcom/google/android/gms/internal/ads/zzkk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkk;->isLoading()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public loadAds(Lcom/google/android/gms/ads/AdRequest;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzul:Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlw;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkk;->zza(Lcom/google/android/gms/internal/ads/zzjj;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "Failed to load ads."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
