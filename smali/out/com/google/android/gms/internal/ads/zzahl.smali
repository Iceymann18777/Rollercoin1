.class public final Lcom/google/android/gms/internal/ads/zzahl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzahk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2c

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1e

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_1e
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzjj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjj;

    goto :goto_6

    :cond_2c
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzahk;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzahk;

    return-object p1
.end method
