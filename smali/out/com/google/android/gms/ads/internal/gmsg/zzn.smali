.class final Lcom/google/android/gms/ads/internal/gmsg/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    return-void

    :cond_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    return-void

    :cond_16
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void
.end method
