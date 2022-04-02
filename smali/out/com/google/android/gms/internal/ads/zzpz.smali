.class public final Lcom/google/android/gms/internal/ads/zzpz;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mUri:Landroid/net/Uri;

.field private final zzbhv:D

.field private final zzbkm:Lcom/google/android/gms/internal/ads/zzpw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpw;)V
    .registers 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbkm:Lcom/google/android/gms/internal/ads/zzpw;

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpw;->zzjy()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object p1, v1

    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->mDrawable:Landroid/graphics/drawable/Drawable;

    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbkm:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpw;->getUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->mUri:Landroid/net/Uri;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :try_start_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbkm:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpw;->getScale()D

    move-result-wide v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbhv:D

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getScale()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzbhv:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->mUri:Landroid/net/Uri;

    return-object v0
.end method
