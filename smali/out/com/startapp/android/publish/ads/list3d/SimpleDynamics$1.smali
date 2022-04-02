.class final Lcom/startapp/android/publish/ads/list3d/SimpleDynamics$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;
    .registers 3

    .line 67
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;
    .registers 2

    .line 71
    new-array p1, p1, [Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/list3d/SimpleDynamics$1;->a(Landroid/os/Parcel;)Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/list3d/SimpleDynamics$1;->a(I)[Lcom/startapp/android/publish/ads/list3d/SimpleDynamics;

    move-result-object p1

    return-object p1
.end method
