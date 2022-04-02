.class public final Lcom/google/android/gms/internal/ads/zzajl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcpe:J

.field private final zzcpf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcpg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzwy;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpi:Ljava/lang/String;

.field private zzcpj:Ljava/lang/String;

.field private zzcpk:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpf:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpg:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcph:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpj:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpe:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c7

    :try_start_25
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3c

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpk:Z

    const-string p1, "App settings could not be fetched successfully."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_3c
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpk:Z

    const-string p1, "app_id"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpi:Ljava/lang/String;

    const-string p1, "ad_unit_id_settings"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9d

    const/4 p3, 0x0

    :goto_4f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_9d

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_unit_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    goto :goto_9a

    :cond_72
    const-string v4, "interstitial"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpg:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_80
    const-string v4, "rewarded"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "mediation_config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9a

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcph:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    :goto_9a
    add-int/lit8 p3, p3, 0x1

    goto :goto_4f

    :cond_9d
    const-string p1, "persistable_banner_ad_unit_ids"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_b7

    :goto_a5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_b7

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpf:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_b4} :catch_b8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_b7
    return-void

    :catch_b8
    move-exception p1

    const-string p2, "Exception occurred while processing app setting json"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p2

    const-string p3, "AppSettings.parseAppSettingsJson"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_c7
    return-void
.end method


# virtual methods
.method public final zzps()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpe:J

    return-wide v0
.end method

.method public final zzpt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpk:Z

    return v0
.end method

.method public final zzpu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcpi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpw()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzwy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzcph:Ljava/util/Map;

    return-object v0
.end method
