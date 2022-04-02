.class final Lcom/google/android/gms/ads/internal/gmsg/zzq;
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

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuq()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzox;->zzki()V

    :cond_b
    return-void
.end method
