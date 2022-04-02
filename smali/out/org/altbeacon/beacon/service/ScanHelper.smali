.class Lorg/altbeacon/beacon/service/ScanHelper;
.super Ljava/lang/Object;
.source "ScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;,
        Lorg/altbeacon/beacon/service/ScanHelper$ScanData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mBeaconParsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

.field private mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

.field private mDistinctPacketDetector:Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

.field private mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

.field private final mRangedRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field

.field private mSimulatedScanData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-class v0, Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    .line 67
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mDistinctPacketDetector:Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

    .line 69
    new-instance v0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconParsers:Ljava/util/Set;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mSimulatedScanData:Ljava/util/List;

    .line 209
    new-instance v0, Lorg/altbeacon/beacon/service/ScanHelper$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/ScanHelper$1;-><init>(Lorg/altbeacon/beacon/service/ScanHelper;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    .line 77
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 79
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mDistinctPacketDetector:Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

    return-object p0
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/MonitoringStatus;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-object p0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/service/ScanHelper;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/ScanHelper;->processRangeData()V

    return-void
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/service/ScanHelper;)Ljava/util/List;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mSimulatedScanData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/service/ScanHelper;)Landroid/content/Context;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/Beacon;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ScanHelper;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method static synthetic access$700(Lorg/altbeacon/beacon/service/ScanHelper;)Ljava/util/Set;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconParsers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
    .registers 1

    .line 60
    iget-object p0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    return-object p0
.end method

.method private matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 403
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 404
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 406
    :cond_1f
    sget-object v2, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const-string v1, "This region (%s) does not match beacon: %s"

    invoke-static {v2, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_30
    return-object v0
.end method

.method private processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    .registers 10

    .line 286
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/Stats;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 287
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/Stats;->log(Lorg/altbeacon/beacon/Beacon;)V

    .line 289
    :cond_11
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 290
    sget-object v0, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v3, "beacon detected : %s"

    new-array v4, v1, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 290
    invoke-static {v0, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_28
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->track(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object p1

    if-nez p1, :cond_40

    .line 298
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 299
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v0, "not processing detections for GATT extra data beacon"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_85

    .line 304
    :cond_40
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateNewlyInsideInRegionsContaining(Lorg/altbeacon/beacon/Beacon;)V

    .line 308
    sget-object v0, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v3, "looking for ranging region matches for this beacon"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 310
    :try_start_51
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 311
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 312
    :cond_5f
    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/Region;

    .line 314
    sget-object v5, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v6, "matches ranging region: %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v5, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/service/RangeState;

    if-eqz v4, :cond_5f

    .line 317
    invoke-virtual {v4, p1}, Lorg/altbeacon/beacon/service/RangeState;->addBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_5f

    .line 320
    :cond_84
    monitor-exit v0

    :cond_85
    :goto_85
    return-void

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_51 .. :try_end_88} :catchall_86

    goto :goto_8a

    :goto_89
    throw p1

    :goto_8a
    goto :goto_89
.end method

.method private processRangeData()V
    .registers 9

    .line 268
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 270
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/service/RangeState;

    .line 271
    sget-object v4, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v5, "Calling ranging callback"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangeState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    iget-object v5, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    const-string v6, "rangingData"

    new-instance v7, Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/RangeState;->finalizeBeacons()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v7, v3, v2}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v7}, Lorg/altbeacon/beacon/service/RangingData;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_d

    .line 274
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    goto :goto_4a

    :goto_49
    throw v1

    :goto_4a
    goto :goto_49
.end method


# virtual methods
.method createCycledLeScanner(ZLorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .registers 11

    .line 119
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    const-wide/16 v1, 0x44c

    const-wide/16 v3, 0x0

    move v5, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->createScanner(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    return-void
.end method

.method getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    return-object v0
.end method

.method getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-object v0
.end method

.method getRangedRegionState()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    return-object v0
.end method

.method getScanCallbackIntent()Landroid/app/PendingIntent;
    .registers 5

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    const-class v2, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "o-scan"

    const/4 v2, 0x1

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method processScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 9

    .line 126
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconManager;->getNonBeaconLeScanCallback()Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    :try_start_7
    new-instance v2, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;

    invoke-direct {v2, p0, v0}, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;)V

    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/altbeacon/beacon/service/ScanHelper$ScanData;

    new-instance v4, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;

    invoke-direct {v4, p0, p1, p2, p3}, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;-><init>(Lorg/altbeacon/beacon/service/ScanHelper;Landroid/bluetooth/BluetoothDevice;I[B)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Lorg/altbeacon/beacon/service/ScanHelper$ScanProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_25

    .line 133
    :catch_1c
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Ignoring scan result because we cannot keep up."

    invoke-static {p1, p3, p2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method reloadParsers()V
    .registers 6

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/BeaconParser;

    .line 143
    invoke-virtual {v3}, Lorg/altbeacon/beacon/BeaconParser;->getExtraDataParsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_19

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v3}, Lorg/altbeacon/beacon/BeaconParser;->getExtraDataParsers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 148
    :cond_38
    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconParsers:Ljava/util/Set;

    .line 150
    new-instance v0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v0, v2}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>(Z)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    return-void
.end method

.method setBeaconParsers(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mBeaconParsers:Ljava/util/Set;

    return-void
.end method

.method setExtraDataBeaconTracker(Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    return-void
.end method

.method setMonitoringStatus(Lorg/altbeacon/beacon/service/MonitoringStatus;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-void
.end method

.method setRangedRegionState(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 101
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method setSimulatedScanData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mSimulatedScanData:Ljava/util/List;

    return-void
.end method

.method startAndroidOBackgroundScan(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 156
    new-instance v2, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;

    invoke-direct {v2}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;->createScanFiltersForBeaconParsers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 159
    :try_start_1c
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 161
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 163
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to construct a BluetoothAdapter"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    .line 164
    :cond_3a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 165
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start background scan on Android O: BluetoothAdapter is not enabled"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    .line 167
    :cond_4a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanHelper;->getScanCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I

    move-result p1

    if-eqz p1, :cond_71

    .line 169
    sget-object v0, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start background scan on Android O.  Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    .line 172
    :cond_71
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v0, "Started passive beacon scan"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_7a} :catch_7b

    goto :goto_84

    .line 177
    :catch_7b
    sget-object p1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SecurityException making Android O background scanner"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_84
    return-void
.end method

.method stopAndroidOBackgroundScan()V
    .registers 5

    const/4 v0, 0x0

    .line 184
    :try_start_1
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanHelper;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 186
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 188
    sget-object v1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to construct a BluetoothAdapter"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 189
    :cond_1f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 190
    sget-object v1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothAdapter is not enabled"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 192
    :cond_2f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 194
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanHelper;->getScanCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/app/PendingIntent;)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_46

    .line 198
    :catch_3d
    sget-object v1, Lorg/altbeacon/beacon/service/ScanHelper;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "SecurityException stopping Android O background scanner"

    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method
