.class public final Lcom/google/android/gms/ads/internal/gmsg/zzah;
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
.field private final zzbng:Lcom/google/android/gms/ads/internal/gmsg/zzai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/zzai;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzah;->zzbng:Lcom/google/android/gms/ads/internal/gmsg/zzai;

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

    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 p1, 0x0

    :try_start_11
    const-string v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaig;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(Ljava/lang/String;I)V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_30} :catch_32

    move-object p1, v1

    goto :goto_38

    :catch_32
    move-exception p2

    const-string v0, "Unable to parse reward amount."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzah;->zzbng:Lcom/google/android/gms/ads/internal/gmsg/zzai;

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzai;->zzb(Lcom/google/android/gms/internal/ads/zzaig;)V

    return-void

    :cond_3e
    const-string p2, "video_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzah;->zzbng:Lcom/google/android/gms/ads/internal/gmsg/zzai;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/gmsg/zzai;->zzdk()V

    return-void

    :cond_4c
    const-string p2, "video_complete"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzaxv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7d

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzaxv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzah;->zzbng:Lcom/google/android/gms/ads/internal/gmsg/zzai;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/gmsg/zzai;->zzdl()V

    :cond_7d
    return-void
.end method
