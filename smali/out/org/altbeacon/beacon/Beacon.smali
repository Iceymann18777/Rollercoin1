.class public Lorg/altbeacon/beacon/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNMODIFIABLE_LIST_OF_IDENTIFIER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected static beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

.field protected static sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field protected static sHardwareEqualityEnforced:Z


# instance fields
.field protected mBeaconTypeCode:I

.field protected mBluetoothAddress:Ljava/lang/String;

.field protected mBluetoothName:Ljava/lang/String;

.field protected mDataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDistance:Ljava/lang/Double;

.field protected mExtraDataFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Identifier;",
            ">;"
        }
    .end annotation
.end field

.field protected mManufacturer:I

.field protected mMultiFrameBeacon:Z

.field private mPacketCount:I

.field protected mParserIdentifier:Ljava/lang/String;

.field protected mRssi:I

.field private mRssiMeasurementCount:I

.field private mRunningAverageRssi:Ljava/lang/Double;

.field protected mServiceUuid:I

.field protected mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_IDENTIFIER:Ljava/util/List;

    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 133
    new-instance v0, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;

    invoke-direct {v0}, Lorg/altbeacon/beacon/client/NullBeaconDataFactory;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->beaconDataFactory:Lorg/altbeacon/beacon/client/BeaconDataFactory;

    .line 184
    new-instance v0, Lorg/altbeacon/beacon/Beacon$1;

    invoke-direct {v0}, Lorg/altbeacon/beacon/Beacon$1;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/Beacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssiMeasurementCount:I

    .line 123
    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mPacketCount:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    const/4 v1, -0x1

    .line 157
    iput v1, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 177
    iput-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssiMeasurementCount:I

    .line 123
    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mPacketCount:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    const/4 v2, -0x1

    .line 157
    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 177
    iput-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2e

    .line 235
    iget-object v4, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 237
    :cond_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v2, :cond_74

    .line 246
    iget-object v4, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 248
    :cond_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    const/4 v3, 0x0

    :goto_80
    if-ge v3, v2, :cond_92

    .line 251
    iget-object v4, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 253
    :cond_92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_ab

    const/4 v0, 0x1

    :cond_ab
    iput-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssiMeasurementCount:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mPacketCount:I

    return-void
.end method

.method protected static calculateDistance(ID)Ljava/lang/Double;
    .registers 4

    .line 660
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 661
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Beacon"

    const-string p2, "Distance calculator not set.  Distance will bet set to -1"

    .line 664
    invoke-static {p1, p2, p0}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 665
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .registers 1

    .line 207
    sget-object v0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object v0
.end method

.method public static getHardwareEqualityEnforced()Z
    .registers 1

    .line 222
    sget-boolean v0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    return v0
.end method

.method public static setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V
    .registers 1

    .line 200
    sput-object p0, Lorg/altbeacon/beacon/Beacon;->sDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-void
.end method

.method public static setHardwareEqualityEnforced(Z)V
    .registers 1

    .line 218
    sput-boolean p0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    return-void
.end method

.method private toStringBuilder()Ljava/lang/StringBuilder;
    .registers 7

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/Identifier;

    if-le v3, v2, :cond_20

    const-string v5, " "

    .line 586
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v5, "id"

    .line 588
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_32

    const-string v4, "null"

    goto :goto_36

    .line 591
    :cond_32
    invoke-virtual {v4}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 594
    :cond_3c
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_56

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 551
    instance-of v0, p1, Lorg/altbeacon/beacon/Beacon;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 554
    :cond_6
    check-cast p1, Lorg/altbeacon/beacon/Beacon;

    .line 555
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    iget-object v2, p1, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 558
    :cond_13
    sget-boolean v0, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    if-eqz v0, :cond_24

    .line 559
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x1

    :goto_25
    return p1
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 510
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDataFields()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 421
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    return-object v0

    .line 424
    :cond_11
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()D
    .registers 6

    .line 472
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    if-nez v0, :cond_22

    .line 473
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    int-to-double v0, v0

    .line 474
    iget-object v2, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    if-eqz v2, :cond_10

    .line 475
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1a

    :cond_10
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Beacon"

    const-string v4, "Not using running average RSSI because it is null"

    .line 478
    invoke-static {v3, v4, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :goto_1a
    iget v2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/Beacon;->calculateDistance(ID)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    .line 482
    :cond_22
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraDataFields()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/altbeacon/beacon/Beacon;->UNMODIFIABLE_LIST_OF_LONG:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 434
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    return-object v0

    .line 437
    :cond_11
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier(I)Lorg/altbeacon/beacon/Identifier;
    .registers 3

    .line 387
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/Identifier;

    return-object p1
.end method

.method public getRssi()I
    .registers 2

    .line 489
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    return v0
.end method

.method public getServiceUuid()I
    .registers 2

    .line 377
    iget v0, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 539
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    sget-boolean v1, Lorg/altbeacon/beacon/Beacon;->sHardwareEqualityEnforced:Z

    if-eqz v1, :cond_d

    .line 541
    iget-object v1, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExtraBeaconData()Z
    .registers 2

    .line 647
    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isMultiFrameBeacon()Z
    .registers 2

    .line 531
    iget-boolean v0, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    return v0
.end method

.method public setExtraDataFields(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    return-void
.end method

.method public setPacketCount(I)V
    .registers 2

    .line 316
    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mPacketCount:I

    return-void
.end method

.method public setRssi(I)V
    .registers 2

    .line 363
    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    return-void
.end method

.method public setRssiMeasurementCount(I)V
    .registers 2

    .line 301
    iput p1, p0, Lorg/altbeacon/beacon/Beacon;->mRssiMeasurementCount:I

    return-void
.end method

.method public setRunningAverageRssi(D)V
    .registers 3

    .line 332
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lorg/altbeacon/beacon/Beacon;->mDistance:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 578
    invoke-direct {p0}, Lorg/altbeacon/beacon/Beacon;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mIdentifiers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Identifier;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_23

    .line 616
    :cond_1f
    invoke-virtual {v0}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 618
    :cond_27
    invoke-virtual {p0}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 619
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mTxPower:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mBeaconTypeCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mServiceUuid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mDataFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_56
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 626
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_56

    .line 628
    :cond_6a
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mExtraDataFields:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_79
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 630
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_79

    .line 632
    :cond_8d
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mManufacturer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mBluetoothName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mParserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-boolean p2, p0, Lorg/altbeacon/beacon/Beacon;->mMultiFrameBeacon:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 636
    iget-object p2, p0, Lorg/altbeacon/beacon/Beacon;->mRunningAverageRssi:Ljava/lang/Double;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 637
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mRssiMeasurementCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget p2, p0, Lorg/altbeacon/beacon/Beacon;->mPacketCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
