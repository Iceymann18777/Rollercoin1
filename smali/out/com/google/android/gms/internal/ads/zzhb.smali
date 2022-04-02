.class public final Lcom/google/android/gms/internal/ads/zzhb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzgp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzha;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgp;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v1

    const/4 v2, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    return v2

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v1

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    return v3

    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    return v2

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    return v3

    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhe()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhd()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhe()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhc()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhd()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgp;->zzhb()F

    move-result p2

    sub-float/2addr v1, p2

    mul-float p1, p1, v1

    cmpl-float p2, v0, p1

    if-lez p2, :cond_67

    return v2

    :cond_67
    cmpg-float p1, v0, p1

    if-gez p1, :cond_6c

    return v3

    :cond_6c
    const/4 p1, 0x0

    return p1
.end method
