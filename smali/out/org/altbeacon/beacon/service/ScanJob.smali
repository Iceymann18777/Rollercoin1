.class public Lorg/altbeacon/beacon/service/ScanJob;
.super Landroid/app/job/JobService;
.source "ScanJob.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sOverrideImmediateScanJobId:I

.field private static sOverridePeriodicScanJobId:I


# instance fields
.field private mInitialized:Z

.field private mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

.field private mScanState:Lorg/altbeacon/beacon/service/ScanState;

.field private mStopHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lorg/altbeacon/beacon/service/ScanJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 47
    sput v0, Lorg/altbeacon/beacon/service/ScanJob;->sOverrideImmediateScanJobId:I

    .line 48
    sput v0, Lorg/altbeacon/beacon/service/ScanJob;->sOverridePeriodicScanJobId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mInitialized:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/service/ScanJob;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->stopScanning()V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/service/ScanJob;)Lorg/altbeacon/beacon/service/ScanState;
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    return-object p0
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/service/ScanJob;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->scheduleNextScan()V

    return-void
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/service/ScanJob;)Landroid/os/Handler;
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getImmediateScanJobId(Landroid/content/Context;)I
    .registers 3

    .line 277
    sget v0, Lorg/altbeacon/beacon/service/ScanJob;->sOverrideImmediateScanJobId:I

    if-ltz v0, :cond_22

    .line 278
    sget-object p0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using ImmediateScanJobId from static override: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/altbeacon/beacon/service/ScanJob;->sOverrideImmediateScanJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    sget p0, Lorg/altbeacon/beacon/service/ScanJob;->sOverrideImmediateScanJobId:I

    return p0

    :cond_22
    const-string v0, "immediateScanJobId"

    .line 282
    invoke-static {p0, v0}, Lorg/altbeacon/beacon/service/ScanJob;->getJobIdFromManifest(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getJobIdFromManifest(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 303
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/altbeacon/beacon/service/ScanJob;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x80

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_49

    .line 306
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 307
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 308
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from manifest: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 312
    :cond_49
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get job id from manifest.  Make sure that the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is configured in the manifest for the ScanJob."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPeriodicScanJobId(Landroid/content/Context;)I
    .registers 3

    .line 292
    sget v0, Lorg/altbeacon/beacon/service/ScanJob;->sOverrideImmediateScanJobId:I

    if-ltz v0, :cond_22

    .line 293
    sget-object p0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using PeriodicScanJobId from static override: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/altbeacon/beacon/service/ScanJob;->sOverridePeriodicScanJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    sget p0, Lorg/altbeacon/beacon/service/ScanJob;->sOverridePeriodicScanJobId:I

    return p0

    :cond_22
    const-string v0, "periodicScanJobId"

    .line 297
    invoke-static {p0, v0}, Lorg/altbeacon/beacon/service/ScanJob;->getJobIdFromManifest(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initialzeScanHelper()V
    .registers 4

    .line 172
    new-instance v0, Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/ScanHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    .line 173
    invoke-static {p0}, Lorg/altbeacon/beacon/service/ScanState;->restore(Landroid/content/Context;)Lorg/altbeacon/beacon/service/ScanState;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/service/ScanState;->setLastScanStartTimeMillis(J)V

    .line 175
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->setMonitoringStatus(Lorg/altbeacon/beacon/service/MonitoringStatus;)V

    .line 176
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->setRangedRegionState(Ljava/util/Map;)V

    .line 177
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getBeaconParsers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->setBeaconParsers(Ljava/util/Set;)V

    .line 178
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getExtraBeaconDataTracker()Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->setExtraDataBeaconTracker(Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;)V

    .line 179
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    if-nez v0, :cond_58

    .line 180
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->createCycledLeScanner(ZLorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    :cond_58
    return-void
.end method

.method private restartScanning()Z
    .registers 10

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 187
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->stopAndroidOBackgroundScan()V

    .line 189
    :cond_b
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getForegroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 190
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundBetweenScanPeriod()Ljava/lang/Long;

    move-result-object v0

    goto :goto_41

    :cond_3b
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getForegroundBetweenScanPeriod()Ljava/lang/Long;

    move-result-object v0

    :goto_41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 191
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    .line 193
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-wide v2, v7

    .line 191
    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setScanPeriods(JJZ)V

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mInitialized:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, v7, v1

    if-gtz v4, :cond_76

    .line 196
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Starting scan with scan period of zero.  Exiting ScanJob."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    return v3

    .line 201
    :cond_76
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_9d

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_93

    goto :goto_9d

    .line 206
    :cond_93
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    return v3

    .line 202
    :cond_9d
    :goto_9d
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    return v0
.end method

.method private scheduleNextScan()V
    .registers 4

    .line 114
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 116
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "In foreground mode, schedule next scan"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->forceScheduleNextScan(Landroid/content/Context;)V

    goto :goto_21

    .line 119
    :cond_1e
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->startPassiveScanIfNeeded()V

    :goto_21
    return-void
.end method

.method private startPassiveScanIfNeeded()V
    .registers 6

    .line 124
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Checking to see if we need to start a passive scan"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/ScanState;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/Region;

    .line 129
    iget-object v4, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/ScanState;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stateOf(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 130
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1e

    :cond_3e
    if-eqz v2, :cond_4a

    .line 136
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "We are inside a beacon region.  We will not scan between cycles."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    .line 139
    :cond_4a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_5c

    .line 140
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanState;->getBeaconParsers()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->startAndroidOBackgroundScan(Ljava/util/Set;)V

    goto :goto_65

    .line 143
    :cond_5c
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "This is not Android O.  No scanning between cycles when using ScanJob"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_65
    return-void
.end method

.method private startScanning()Z
    .registers 6

    .line 213
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setScannerInSameProcess(Z)V

    .line 215
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->isMainProcess()Z

    move-result v0

    const-string v2, "2.13.1"

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 216
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "scanJob version %s is starting up on the main process"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_59

    .line 219
    :cond_21
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "beaconScanJob library version %s is starting up on a separate process"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v0, Lorg/altbeacon/beacon/utils/ProcessUtils;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/utils/ProcessUtils;-><init>(Landroid/content/Context;)V

    .line 221
    sget-object v1, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beaconScanJob PID is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with process name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :goto_59
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-static {v0}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    .line 225
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->restartScanning()Z

    move-result v0

    return v0
.end method

.method private stopScanning()V
    .registers 4

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mInitialized:Z

    .line 166
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 167
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->destroy()V

    .line 168
    sget-object v1, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Scanning stopped"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 9

    .line 57
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->initialzeScanHelper()V

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {p0}, Lorg/altbeacon/beacon/service/ScanJob;->getImmediateScanJobId(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 59
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running immediate scan job: instance is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    .line 62
    :cond_27
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running periodic scan job: instance is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_3f
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->dumpBackgroundScanResultQueue()Ljava/util/List;

    move-result-object v0

    .line 66
    sget-object v1, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "Processing %d queued scan resuilts"

    invoke-static {v1, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5f
    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 68
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 70
    iget-object v5, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v6, v1, v4}, Lorg/altbeacon/beacon/service/ScanHelper;->processScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V

    goto :goto_5f

    .line 73
    :cond_83
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Done processing queued scan resuilts"

    invoke-static {v0, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mInitialized:Z

    if-eqz v0, :cond_9e

    .line 77
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Scanning already started.  Resetting for current parameters"

    invoke-static {v0, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->restartScanning()Z

    move-result v0

    goto :goto_a2

    .line 81
    :cond_9e
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->startScanning()Z

    move-result v0

    .line 83
    :goto_a2
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mStopHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_df

    .line 86
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan job running for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobRuntimeMillis()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " millis"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJob;->mStopHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/beacon/service/ScanJob$1;

    invoke-direct {v1, p0, p1}, Lorg/altbeacon/beacon/service/ScanJob$1;-><init>(Lorg/altbeacon/beacon/service/ScanJob;Landroid/app/job/JobParameters;)V

    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mScanState:Lorg/altbeacon/beacon/service/ScanState;

    .line 104
    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobRuntimeMillis()I

    move-result p1

    int-to-long v4, p1

    .line 87
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_eb

    .line 107
    :cond_df
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "Scanning not started so Scan job is complete."

    invoke-static {v0, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p1, v2}, Lorg/altbeacon/beacon/service/ScanJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_eb
    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .line 150
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p0}, Lorg/altbeacon/beacon/service/ScanJob;->getPeriodicScanJobId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_24

    .line 151
    sget-object p1, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob called for periodic scan "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3c

    .line 154
    :cond_24
    sget-object p1, Lorg/altbeacon/beacon/service/ScanJob;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopJob called for immediate scan "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_3c
    iget-object p1, p0, Lorg/altbeacon/beacon/service/ScanJob;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->stopScanning()V

    .line 159
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanJob;->startPassiveScanIfNeeded()V

    return v1
.end method
