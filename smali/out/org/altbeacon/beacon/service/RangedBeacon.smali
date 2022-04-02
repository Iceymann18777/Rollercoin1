.class public Lorg/altbeacon/beacon/service/RangedBeacon;
.super Ljava/lang/Object;
.source "RangedBeacon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static maxTrackingAge:J = 0x1388L

.field private static sampleExpirationMilliseconds:J = 0x4e20L


# instance fields
.field protected lastTrackedTimeMillis:J

.field mBeacon:Lorg/altbeacon/beacon/Beacon;

.field protected transient mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

.field private mTracked:Z

.field private packetCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/Beacon;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    .line 27
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method private getFilter()Lorg/altbeacon/beacon/service/RssiFilter;
    .registers 4

    .line 96
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 99
    :try_start_5
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RssiFilter;

    iput-object v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_2e

    :catch_1a
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getRssiFilterImplClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "RangedBeacon"

    const-string v2, "Could not construct RssiFilterImplClass %s"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mFilter:Lorg/altbeacon/beacon/service/RssiFilter;

    return-object v0
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .registers 4

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    .line 69
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/altbeacon/beacon/service/RssiFilter;->addMeasurement(Ljava/lang/Integer;)V

    :cond_18
    return-void
.end method

.method public commitMeasurements()V
    .registers 7

    .line 50
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v0

    const-string v1, "RangedBeacon"

    const/4 v2, 0x0

    if-nez v0, :cond_36

    .line 51
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->calculateRssi()D

    move-result-wide v3

    .line 52
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {v0, v3, v4}, Lorg/altbeacon/beacon/Beacon;->setRunningAverageRssi(D)V

    .line 53
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v5

    invoke-interface {v5}, Lorg/altbeacon/beacon/service/RssiFilter;->getMeasurementCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/altbeacon/beacon/Beacon;->setRssiMeasurementCount(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "calculated new runningAverageRssi: %s"

    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_36
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "No measurements available to calculate running average"

    .line 57
    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_3d
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    iget v1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/Beacon;->setPacketCount(I)V

    .line 60
    iput v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    return-void
.end method

.method public getBeacon()Lorg/altbeacon/beacon/Beacon;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    return-object v0
.end method

.method public getTrackingAge()J
    .registers 5

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->lastTrackedTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isExpired()Z
    .registers 6

    .line 92
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getTrackingAge()J

    move-result-wide v0

    sget-wide v2, Lorg/altbeacon/beacon/service/RangedBeacon;->maxTrackingAge:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isTracked()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .registers 2

    .line 84
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RangedBeacon;->getFilter()Lorg/altbeacon/beacon/service/RssiFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/service/RssiFilter;->noMeasurementsAvailable()Z

    move-result v0

    return v0
.end method

.method public setTracked(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mTracked:Z

    return-void
.end method

.method public updateBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .registers 3

    .line 31
    iget v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->packetCount:I

    .line 32
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangedBeacon;->mBeacon:Lorg/altbeacon/beacon/Beacon;

    .line 33
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->addMeasurement(Ljava/lang/Integer;)V

    return-void
.end method
