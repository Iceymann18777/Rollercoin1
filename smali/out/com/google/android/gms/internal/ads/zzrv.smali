.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzqd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqd;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqd;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzqa;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrv;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqd;

    const v2, 0xbdfcb8

    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzqd;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    return-object v0

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzqa;

    if-eqz p3, :cond_2a

    check-cast p2, Lcom/google/android/gms/internal/ads/zzqa;

    return-object p2

    :cond_2a
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqc;-><init>(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_32
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_2f} :catch_30

    return-object p2

    :catch_30
    move-exception p1

    goto :goto_33

    :catch_32
    move-exception p1

    :goto_33
    const-string p2, "Could not create remote NativeAdViewDelegate."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
