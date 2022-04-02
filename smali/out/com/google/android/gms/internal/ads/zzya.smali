.class public abstract Lcom/google/android/gms/internal/ads/zzya;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxz;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_c6

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzya;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    goto :goto_a3

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_c4

    :pswitch_56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getOverrideClickHandling()Z

    move-result p1

    goto :goto_5f

    :pswitch_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getOverrideImpressionRecording()Z

    move-result p1

    :goto_5f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_c4

    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_7e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->recordImpression()V

    :goto_81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c4

    :pswitch_85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_8a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_8f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_c4

    :pswitch_9a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_9f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p1

    :goto_a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_c4

    :pswitch_aa
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_af
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_c4

    :pswitch_ba
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzya;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_c4
    const/4 p1, 0x1

    return p1

    :pswitch_data_c6
    .packed-switch 0x2
        :pswitch_ba
        :pswitch_af
        :pswitch_aa
        :pswitch_9f
        :pswitch_9a
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5b
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_5
    .end packed-switch
.end method
