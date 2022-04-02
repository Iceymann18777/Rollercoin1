.class public final Lcom/google/android/gms/internal/ads/zzahi;
.super Lcom/google/android/gms/dynamic/RemoteCreator;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzahc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

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
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahc;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahc;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzxn;)Lcom/google/android/gms/internal/ads/zzagz;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahi;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahc;

    const v2, 0xbdfcb8

    invoke-interface {p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzahc;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzxn;I)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_15

    return-object v0

    :cond_15
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v1, p2, Lcom/google/android/gms/internal/ads/zzagz;

    if-eqz v1, :cond_22

    check-cast p2, Lcom/google/android/gms/internal/ads/zzagz;

    return-object p2

    :cond_22
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzahb;-><init>(Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2a
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_27} :catch_28

    return-object p2

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    const-string p2, "Could not get remote RewardedVideoAd."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
