.class public abstract Lcom/google/android/gms/internal/ads/zzls;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlr;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzls;->onVideoMute(Z)V

    goto :goto_28

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzls;->onVideoEnd()V

    goto :goto_28

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzls;->onVideoPause()V

    goto :goto_28

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzls;->onVideoPlay()V

    goto :goto_28

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzls;->onVideoStart()V

    :goto_28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
