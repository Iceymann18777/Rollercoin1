.class public final Lcom/google/android/gms/internal/ads/zzacp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzacd<",
        "Lcom/google/android/gms/internal/ads/zzos;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzcbk:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzcbk:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzabv;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzpb;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    new-instance v4, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzabv;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzabv;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v2

    const-string v3, "custom_assets"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_79

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "name"

    if-eqz v9, :cond_44

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string_value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_44
    const-string v9, "image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzcbk:Z

    const-string v10, "image_value"

    invoke-virtual {p1, v7, v10, v9}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_5c
    const-string v7, "Unknown custom asset type: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6d

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_73

    :cond_6d
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_73
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :goto_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_79
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabv;->zzc(Lcom/google/android/gms/internal/ads/zzanz;)Lcom/google/android/gms/internal/ads/zzaqw;

    move-result-object p1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzos;

    const-string v2, "custom_template_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v3}, Landroidx/collection/SimpleArrayMap;-><init>()V

    :goto_8a
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result p2

    if-ge v5, p2, :cond_a4

    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_a4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzoj;

    const/4 p2, 0x0

    if-eqz p1, :cond_b4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    move-object v6, v0

    goto :goto_b5

    :cond_b4
    move-object v6, p2

    :goto_b5
    if-eqz p1, :cond_bd

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    goto :goto_be

    :cond_bd
    move-object v7, p2

    :goto_be
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/lang/String;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;)V

    return-object v8
.end method
