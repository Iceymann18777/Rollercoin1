.class public final Lcom/google/android/gms/internal/ads/zzaau;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaav;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzanz<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object p1

    return-object p1
.end method
