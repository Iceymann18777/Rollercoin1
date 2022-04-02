.class public abstract Lcom/google/android/gms/internal/ads/zzahf;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahe;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzahe;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahe;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahe;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Landroid/os/IBinder;)V

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

    packed-switch p1, :pswitch_data_4a

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoCompleted()V

    goto :goto_44

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_44

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoAdLeftApplication()V

    goto :goto_44

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_31

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzagu;

    if-eqz p4, :cond_2b

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagu;

    goto :goto_31

    :cond_2b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahf;->zza(Lcom/google/android/gms/internal/ads/zzagu;)V

    goto :goto_44

    :pswitch_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoAdClosed()V

    goto :goto_44

    :pswitch_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoStarted()V

    goto :goto_44

    :pswitch_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoAdOpened()V

    goto :goto_44

    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahf;->onRewardedVideoAdLoaded()V

    :goto_44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_15
        :pswitch_11
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
