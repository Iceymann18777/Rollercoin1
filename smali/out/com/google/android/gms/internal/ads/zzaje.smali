.class public final Lcom/google/android/gms/internal/ads/zzaje;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajg;


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
.method public final zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzanz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzanz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object p1

    return-object p1
.end method

.method public final zzae(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzanz<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzbh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajf;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(Lcom/google/android/gms/internal/ads/zzaje;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaoj;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaki;->zzb(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzanz;

    :cond_16
    return-object v0
.end method
