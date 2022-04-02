.class public final Lcom/google/android/gms/internal/ads/zzamd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzctr:Lcom/google/android/gms/internal/ads/zzamf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzame;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzame;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamd;->zzctr:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method public static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object p1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    return-object p1
.end method
