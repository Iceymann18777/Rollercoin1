.class public abstract Lcom/google/android/gms/signin/internal/zaf;
.super Lcom/google/android/gms/internal/base/zaa;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/signin/internal/zac;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_62

    :pswitch_3
    const/4 p1, 0x0

    return p1

    .line 21
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/signin/internal/zag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/internal/zag;

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zaf;->zaa(Lcom/google/android/gms/signin/internal/zag;)V

    goto :goto_5c

    .line 18
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/signin/internal/zam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/internal/zam;

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zaf;->zaa(Lcom/google/android/gms/signin/internal/zam;)V

    goto :goto_5c

    .line 14
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 15
    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zaf;->zaa(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_5c

    .line 11
    :pswitch_31
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zaf;->zab(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_5c

    .line 8
    :pswitch_3d
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zaf;->zaa(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_5c

    .line 4
    :pswitch_49
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    sget-object p4, Lcom/google/android/gms/signin/internal/zab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/base/zad;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/signin/internal/zab;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zaf;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/zab;)V

    .line 25
    :goto_5c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_62
    .packed-switch 0x3
        :pswitch_49
        :pswitch_3d
        :pswitch_3
        :pswitch_31
        :pswitch_1d
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
