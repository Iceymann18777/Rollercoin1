.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-basement@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    if-le p1, v0, :cond_a

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_a
    const-string p4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 7
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_18

    move-object v1, v0

    goto :goto_2a

    :cond_18
    const-string v1, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 11
    invoke-interface {p4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 12
    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    if-eqz v2, :cond_25

    .line 13
    check-cast v1, Lcom/google/android/gms/common/internal/IGmsCallbacks;

    goto :goto_2a

    .line 14
    :cond_25
    new-instance v1, Lcom/google/android/gms/common/internal/zzo;

    invoke-direct {v1, p4}, Lcom/google/android/gms/common/internal/zzo;-><init>(Landroid/os/IBinder;)V

    :goto_2a
    const/16 p4, 0x2e

    const/4 v2, 0x1

    if-ne p1, p4, :cond_45

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3e

    .line 19
    sget-object p1, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 20
    :cond_3e
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_45
    const/16 p3, 0x2f

    if-ne p1, p3, :cond_5d

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_57

    .line 24
    sget-object p1, Lcom/google/android/gms/common/internal/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzv;

    .line 25
    :cond_57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 26
    :cond_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    const/4 p3, 0x4

    if-eq p1, p3, :cond_66

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    :cond_66
    if-eq p1, v2, :cond_f3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x17

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x19

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x1b

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x1e

    if-eq p1, p3, :cond_cf

    const/16 p3, 0x22

    if-eq p1, p3, :cond_cb

    const/16 p3, 0x29

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x2b

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x25

    if-eq p1, p3, :cond_e4

    const/16 p3, 0x26

    if-eq p1, p3, :cond_e4

    packed-switch p1, :pswitch_data_110

    goto/16 :goto_10a

    .line 30
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10a

    .line 32
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_10a

    .line 49
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    goto :goto_10a

    .line 38
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10a

    .line 44
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_10a

    .line 52
    :cond_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_10a

    .line 45
    :cond_cf
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10a

    .line 48
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_10a

    .line 54
    :cond_e4
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10a

    .line 55
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_10a

    .line 33
    :cond_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10a

    .line 37
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 56
    :cond_10a
    :goto_10a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_110
    .packed-switch 0x5
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_ad
        :pswitch_a6
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_94
        :pswitch_cf
    .end packed-switch
.end method
