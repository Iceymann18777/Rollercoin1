.class public abstract Lcom/google/android/gms/internal/ads/zzaaq;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaap;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaap;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaap;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaar;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_72

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_6d

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzaaq;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6d

    :pswitch_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->zznj()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_70

    :pswitch_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onBackPressed()V

    goto :goto_6d

    :pswitch_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->zzax()V

    goto :goto_6d

    :pswitch_38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onDestroy()V

    goto :goto_6d

    :pswitch_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onStop()V

    goto :goto_6d

    :pswitch_40
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_70

    :pswitch_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onPause()V

    goto :goto_6d

    :pswitch_56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onResume()V

    goto :goto_6d

    :pswitch_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onStart()V

    goto :goto_6d

    :pswitch_5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaaq;->onRestart()V

    goto :goto_6d

    :pswitch_62
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaaq;->onCreate(Landroid/os/Bundle;)V

    :goto_6d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_70
    const/4 p1, 0x1

    return p1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_25
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
