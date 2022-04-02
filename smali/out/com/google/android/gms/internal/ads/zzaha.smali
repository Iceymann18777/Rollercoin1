.class public abstract Lcom/google/android/gms/internal/ads/zzaha;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzagz;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzagz;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagz;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzahb;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_c5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_9b

    packed-switch p1, :pswitch_data_d4

    const/4 p1, 0x0

    return p1

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_2d

    :cond_1a
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzagx;

    if-eqz v0, :cond_28

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagx;

    goto :goto_2d

    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Landroid/os/IBinder;)V

    :goto_2d
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zza(Lcom/google/android/gms/internal/ads/zzagx;)V

    goto/16 :goto_d0

    :pswitch_32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->zzba()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d3

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzky;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzkx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zza(Lcom/google/android/gms/internal/ads/zzkx;)V

    goto/16 :goto_d0

    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->setUserId(Ljava/lang/String;)V

    goto/16 :goto_d0

    :pswitch_54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_d3

    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_d0

    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_d0

    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_d0

    :pswitch_84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->destroy()V

    goto :goto_d0

    :pswitch_88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->resume()V

    goto :goto_d0

    :pswitch_8c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->pause()V

    goto :goto_d0

    :pswitch_90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->isLoaded()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_d3

    :cond_9b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->setImmersiveMode(Z)V

    goto :goto_d0

    :cond_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_aa

    goto :goto_bd

    :cond_aa
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzahe;

    if-eqz v0, :cond_b8

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahe;

    goto :goto_bd

    :cond_b8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Landroid/os/IBinder;)V

    :goto_bd
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zza(Lcom/google/android/gms/internal/ads/zzahe;)V

    goto :goto_d0

    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaha;->show()V

    goto :goto_d0

    :cond_c5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzahk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zza(Lcom/google/android/gms/internal/ads/zzahk;)V

    :goto_d0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_d3
    return p4

    :pswitch_data_d4
    .packed-switch 0x5
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_78
        :pswitch_6c
        :pswitch_60
        :pswitch_54
        :pswitch_4b
        :pswitch_3e
        :pswitch_32
        :pswitch_13
    .end packed-switch
.end method
