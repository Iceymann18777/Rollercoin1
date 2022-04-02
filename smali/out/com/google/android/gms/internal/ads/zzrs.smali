.class public abstract Lcom/google/android/gms/internal/ads/zzrs;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrr;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

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

    packed-switch p1, :pswitch_data_ca

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->cancelUnconfirmedClick()V

    goto/16 :goto_75

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_26

    :cond_12
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzro;

    if-eqz p4, :cond_20

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzro;

    goto :goto_26

    :cond_20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrq;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrs;->zza(Lcom/google/android/gms/internal/ads/zzro;)V

    goto :goto_75

    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_c7

    :pswitch_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a6

    :pswitch_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_a6

    :pswitch_41
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrs;->reportTouchEvent(Landroid/os/Bundle;)V

    goto :goto_75

    :pswitch_4d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrs;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto/16 :goto_c7

    :pswitch_61
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrs;->performClick(Landroid/os/Bundle;)V

    goto :goto_75

    :pswitch_6d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    goto :goto_a6

    :pswitch_72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->destroy()V

    :goto_75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c7

    :pswitch_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_7e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    goto :goto_a6

    :pswitch_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_8d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_c7

    :pswitch_98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_9d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_a2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p1

    :goto_a6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_c7

    :pswitch_ad
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :pswitch_b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_c7

    :pswitch_bd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrs;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_c1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_c7
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_ca
    .packed-switch 0x2
        :pswitch_bd
        :pswitch_b2
        :pswitch_ad
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_72
        :pswitch_6d
        :pswitch_61
        :pswitch_4d
        :pswitch_41
        :pswitch_3c
        :pswitch_36
        :pswitch_2a
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
