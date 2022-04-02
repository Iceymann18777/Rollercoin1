.class public final Lcom/google/android/gms/ads/internal/gmsg/zza;
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
.field private final zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zza;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    return-void
.end method

.method private static zzar(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_32

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_32
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_40

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_12

    :cond_40
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4e

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12

    :cond_4e
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5c

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_12

    :cond_5c
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_66

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_66
    const-string v4, "Unsupported type for key:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7c

    :cond_77
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7f} :catch_81

    goto :goto_12

    :cond_80
    return-object v2

    :catch_81
    move-exception p0

    const-string v1, "Failed to convert ad metadata to JSON."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
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

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zza;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const-string p1, "name"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_16

    const-string p1, "Ad metadata with no name parameter."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    const-string p1, ""

    :cond_16
    const-string v0, "info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zza;->zzar(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2a

    const-string p1, "Failed to convert ad metadata to Bundle."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zza;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
