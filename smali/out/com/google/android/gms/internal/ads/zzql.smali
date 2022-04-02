.class public abstract Lcom/google/android/gms/internal/ads/zzql;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqk;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd"

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

    packed-switch p1, :pswitch_data_a0

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8d

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_98

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    goto/16 :goto_98

    :pswitch_17
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzql;->reportTouchEvent(Landroid/os/Bundle;)V

    goto :goto_4b

    :pswitch_23
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzql;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto/16 :goto_9e

    :pswitch_37
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzql;->performClick(Landroid/os/Bundle;)V

    goto :goto_4b

    :pswitch_43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    goto :goto_98

    :pswitch_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->destroy()V

    :goto_4b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9e

    :pswitch_4f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_9e

    :pswitch_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_5f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_9e

    :pswitch_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p1

    goto :goto_98

    :pswitch_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_7e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_9e

    :pswitch_89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_8d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9e

    :pswitch_94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_9e
    const/4 p1, 0x1

    return p1

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_4f
        :pswitch_48
        :pswitch_43
        :pswitch_37
        :pswitch_23
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method
