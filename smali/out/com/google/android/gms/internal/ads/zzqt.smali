.class public abstract Lcom/google/android/gms/internal/ads/zzqt;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqs;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzqs;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqs;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqs;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_6a

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_52

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_67

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->zzkh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_52

    :pswitch_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->destroy()V

    goto :goto_36

    :pswitch_26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    goto :goto_52

    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->recordImpression()V

    goto :goto_36

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqt;->performClick(Ljava/lang/String;)V

    :goto_36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_67

    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqt;->getAvailableAssetNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_67

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p1

    :goto_52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_67

    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_67
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4a
        :pswitch_3f
        :pswitch_3a
        :pswitch_2f
        :pswitch_2b
        :pswitch_26
        :pswitch_22
        :pswitch_1d
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
