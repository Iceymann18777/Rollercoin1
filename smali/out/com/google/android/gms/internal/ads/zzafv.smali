.class final Lcom/google/android/gms/internal/ads/zzafv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzchv:Lcom/google/android/gms/internal/ads/zzaft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaft;->zza(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzb(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/zzaoj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit p1

    return-void

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzc(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafz;->zzol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    monitor-exit p1

    return-void

    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafz;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string p2, "URL missing in loadAdUrl GMSG."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_3a
    const-string v2, "%40mediation_adapters%40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzd(Lcom/google/android/gms/internal/ads/zzaft;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "check_adapters"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaft;->zze(Lcom/google/android/gms/internal/ads/zzaft;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "%40mediation_adapters%40"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzafz;->setUrl(Ljava/lang/String;)V

    const-string v1, "Ad request URL modified to "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_79

    :cond_74
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_79
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :cond_7c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzchv:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzb(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/zzaoj;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_87
    move-exception p2

    monitor-exit p1
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_87

    throw p2
.end method
