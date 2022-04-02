.class public final Lcom/google/android/gms/internal/ads/zzaao;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzaas;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaas;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaas;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zze(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaap;
    .registers 6

    const-string v0, "Could not create remote AdOverlay."

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaao;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaas;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzaas;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_14

    return-object v1

    :cond_14
    const-string v2, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaap;

    return-object v2

    :cond_21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaar;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Landroid/os/IBinder;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_26} :catch_2c
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_3 .. :try_end_26} :catch_27

    return-object v2

    :catch_27
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_2c
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
