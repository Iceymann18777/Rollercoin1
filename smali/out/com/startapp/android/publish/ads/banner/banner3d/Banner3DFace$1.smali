.class final Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;
    .registers 3

    .line 213
    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;
    .registers 2

    .line 217
    new-array p1, p1, [Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace$1;->a(Landroid/os/Parcel;)Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace$1;->a(I)[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    move-result-object p1

    return-object p1
.end method
