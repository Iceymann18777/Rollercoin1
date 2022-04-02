.class public Lorg/altbeacon/beacon/AltBeacon;
.super Lorg/altbeacon/beacon/Beacon;
.source "AltBeacon.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/altbeacon/beacon/AltBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lorg/altbeacon/beacon/AltBeacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/AltBeacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/AltBeacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/Beacon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 109
    invoke-super {p0, p1, p2}, Lorg/altbeacon/beacon/Beacon;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
