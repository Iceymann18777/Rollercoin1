.class public abstract Lcom/google/android/gms/internal/ads/zzlp;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlo;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zze(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzlo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzlo;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzlo;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzlq;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_7a

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->isClickToExpandEnabled()Z

    move-result p1

    goto :goto_5e

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->zzio()Lcom/google/android/gms/internal/ads/zzlr;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_77

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->isCustomControlsEnabled()Z

    move-result p1

    goto :goto_5e

    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->getAspectRatio()F

    move-result p1

    goto :goto_48

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_27

    const/4 p1, 0x0

    goto :goto_3b

    :cond_27
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzlr;

    if-eqz p4, :cond_35

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlr;

    goto :goto_3b

    :cond_35
    new-instance p2, Lcom/google/android/gms/internal/ads/zzlt;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzlt;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_3b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlp;->zza(Lcom/google/android/gms/internal/ads/zzlr;)V

    goto :goto_74

    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->zzin()F

    move-result p1

    goto :goto_48

    :pswitch_44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->zzim()F

    move-result p1

    :goto_48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_77

    :pswitch_4f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->getPlaybackState()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_77

    :pswitch_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->isMuted()Z

    move-result p1

    :goto_5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_77

    :pswitch_65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzlp;->mute(Z)V

    goto :goto_74

    :pswitch_6d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->pause()V

    goto :goto_74

    :pswitch_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlp;->play()V

    :goto_74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_77
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_6d
        :pswitch_65
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_3f
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
