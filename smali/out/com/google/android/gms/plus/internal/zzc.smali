.class public abstract Lcom/google/android/gms/plus/internal/zzc;
.super Lcom/google/android/gms/internal/plus/zzb;

# interfaces
.implements Lcom/google/android/gms/plus/internal/zzb;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/plus/zzb;-><init>(Ljava/lang/String;)V

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

    packed-switch p1, :pswitch_data_b6

    const/4 p1, 0x0

    return p1

    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zzc;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Lcom/google/android/gms/internal/plus/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/plus/zzr;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(ILcom/google/android/gms/internal/plus/zzr;)V

    goto/16 :goto_b0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zzc;->zzc(Ljava/lang/String;)V

    goto/16 :goto_b0

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(ILandroid/os/Bundle;)V

    goto/16 :goto_b0

    :pswitch_3d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(ILandroid/os/Bundle;Lcom/google/android/gms/common/server/response/SafeParcelResponse;)V

    goto :goto_b0

    :pswitch_69
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zzc;->zzb(Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_b0

    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/plus/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/plus/internal/zzc;->zza(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_b0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_99
        :pswitch_81
        :pswitch_79
        :pswitch_69
        :pswitch_51
        :pswitch_3d
        :pswitch_2c
        :pswitch_23
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
