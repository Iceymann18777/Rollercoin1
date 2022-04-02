.class public final Lcom/google/android/gms/ads/internal/gmsg/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbmv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaoj<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5
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

    const-string p1, "request_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "fetched_ad"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "Received ad from the cache."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaoj;

    if-nez v0, :cond_25

    const-string p1, "Could not find the ad request for the corresponding ad response."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    return-void

    :cond_25
    :try_start_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2d} :catch_35
    .catchall {:try_start_25 .. :try_end_2d} :catchall_33

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_33
    move-exception p2

    goto :goto_45

    :catch_35
    move-exception p2

    :try_start_36
    const-string v1, "Failed constructing JSON object from value passed from javascript"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_33

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_45
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method

.method public final zzas(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzat(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaoj;

    if-nez v0, :cond_10

    const-string p1, "Could not find the ad request for the corresponding ad response."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->isDone()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->cancel(Z)Z

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzbmv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
