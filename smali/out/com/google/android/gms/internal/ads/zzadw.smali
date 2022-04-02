.class final Lcom/google/android/gms/internal/ads/zzadw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzady;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadw;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzang;)Z
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadw;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbe(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbeq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzcvg:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzadw;->val$context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzcvg:Z

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzadv;->zzd(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    if-eqz v0, :cond_4e

    if-nez v1, :cond_4e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadw;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4d

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawa:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    return v3

    :cond_4e
    :goto_4e
    return v2
.end method
