.class public Lorg/altbeacon/beacon/BeaconManager;
.super Ljava/lang/Object;
.source "BeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;
    }
.end annotation


# static fields
.field private static final SINGLETON_LOCK:Ljava/lang/Object;

.field protected static beaconSimulator:Lorg/altbeacon/beacon/simulator/BeaconSimulator; = null

.field protected static distanceModelUpdateUrl:Ljava/lang/String; = null

.field protected static rssiFilterImplClass:Ljava/lang/Class; = null

.field private static sAndroidLScanningDisabled:Z = false

.field private static sExitRegionPeriod:J = 0x0L

.field protected static volatile sInstance:Lorg/altbeacon/beacon/BeaconManager; = null

.field private static sManifestCheckingDisabled:Z = false


# instance fields
.field private backgroundBetweenScanPeriod:J

.field private backgroundScanPeriod:J

.field private final beaconParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private final consumers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

.field private foregroundBetweenScanPeriod:J

.field private foregroundScanPeriod:J

.field private mBackgroundMode:Z

.field private mBackgroundModeUninitialized:Z

.field private final mContext:Landroid/content/Context;

.field private mMainProcess:Z

.field private mNonBeaconLeScanCallback:Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

.field private mRegionStatePersistenceEnabled:Z

.field private mScannerInSameProcess:Ljava/lang/Boolean;

.field private mScheduledScanJobsEnabled:Z

.field protected final monitorNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/MonitorNotifier;",
            ">;"
        }
    .end annotation
.end field

.field protected final rangeNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/RangeNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final rangedRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->SINGLETON_LOCK:Ljava/lang/Object;

    const-wide/16 v0, 0x2710

    .line 212
    sput-wide v0, Lorg/altbeacon/beacon/BeaconManager;->sExitRegionPeriod:J

    const-string v0, "http://data.altbeacon.org/android-distance.json"

    .line 1104
    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->distanceModelUpdateUrl:Ljava/lang/String;

    .line 1118
    const-class v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->rssiFilterImplClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    .line 138
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangeNotifiers:Ljava/util/Set;

    .line 141
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 144
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->monitorNotifiers:Ljava/util/Set;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    .line 150
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/List;

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mRegionStatePersistenceEnabled:Z

    const/4 v2, 0x0

    .line 157
    iput-boolean v2, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    .line 158
    iput-boolean v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundModeUninitialized:Z

    .line 159
    iput-boolean v2, p0, Lorg/altbeacon/beacon/BeaconManager;->mMainProcess:Z

    .line 160
    iput-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mScannerInSameProcess:Ljava/lang/Boolean;

    .line 162
    iput-boolean v2, p0, Lorg/altbeacon/beacon/BeaconManager;->mScheduledScanJobsEnabled:Z

    const-wide/16 v3, 0x44c

    .line 214
    iput-wide v3, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    const-wide/16 v3, 0x0

    .line 215
    iput-wide v3, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    const-wide/16 v3, 0x2710

    .line 216
    iput-wide v3, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    const-wide/32 v3, 0x493e0

    .line 217
    iput-wide v3, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->checkIfMainProcess()V

    .line 320
    sget-boolean p1, Lorg/altbeacon/beacon/BeaconManager;->sManifestCheckingDisabled:Z

    if-nez p1, :cond_5a

    .line 321
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->verifyServiceDeclaration()V

    .line 323
    :cond_5a
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/List;

    new-instance v0, Lorg/altbeacon/beacon/AltBeaconParser;

    invoke-direct {v0}, Lorg/altbeacon/beacon/AltBeaconParser;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    iput-boolean v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mScheduledScanJobsEnabled:Z

    return-void
.end method

.method private applyChangesToServices(ILorg/altbeacon/beacon/Region;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mScheduledScanJobsEnabled:Z

    if-eqz v0, :cond_e

    .line 962
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;

    move-result-object p1

    iget-object p2, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->applySettingsToScheduledJob(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconManager;)V

    return-void

    .line 965
    :cond_e
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 968
    invoke-static {v0, p1, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_33

    .line 970
    new-instance p1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v5

    iget-boolean v7, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(JJZ)V

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/StartRMData;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_65

    :cond_33
    const/4 v1, 0x7

    if-ne p1, v1, :cond_49

    .line 973
    new-instance p1, Lorg/altbeacon/beacon/service/SettingsData;

    invoke-direct {p1}, Lorg/altbeacon/beacon/service/SettingsData;-><init>()V

    iget-object p2, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lorg/altbeacon/beacon/service/SettingsData;->collect(Landroid/content/Context;)Lorg/altbeacon/beacon/service/SettingsData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/SettingsData;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_65

    .line 976
    :cond_49
    new-instance p1, Lorg/altbeacon/beacon/service/StartRMData;

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->callbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getScanPeriod()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->getBetweenScanPeriod()J

    move-result-wide v6

    iget-boolean v8, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lorg/altbeacon/beacon/service/StartRMData;-><init>(Lorg/altbeacon/beacon/Region;Ljava/lang/String;JJZ)V

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/StartRMData;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 978
    :goto_65
    iget-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 966
    :cond_6b
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private callbackPackageName()Ljava/lang/String;
    .registers 5

    .line 982
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "BeaconManager"

    const-string v3, "callback packageName: %s"

    .line 983
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private determineIfCalledFromSeparateScannerProcess()Z
    .registers 4

    .line 1321
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->isScannerInDifferentProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_18

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BeaconManager"

    const-string v2, "Ranging/Monitoring may not be controlled from a separate BeaconScanner process.  To remove this warning, please wrap this call in: if (beaconManager.isMainProcess())"

    .line 1322
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_18
    return v1
.end method

.method public static getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;
    .registers 1

    .line 1156
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->beaconSimulator:Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    return-object v0
.end method

.method private getBetweenScanPeriod()J
    .registers 3

    .line 1199
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    if-eqz v0, :cond_7

    .line 1200
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    return-wide v0

    .line 1202
    :cond_7
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    return-wide v0
.end method

.method public static getDistanceModelUpdateUrl()Ljava/lang/String;
    .registers 1

    .line 1107
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->distanceModelUpdateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;
    .registers 3

    .line 305
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->sInstance:Lorg/altbeacon/beacon/BeaconManager;

    if-nez v0, :cond_17

    .line 307
    sget-object v1, Lorg/altbeacon/beacon/BeaconManager;->SINGLETON_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_7
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->sInstance:Lorg/altbeacon/beacon/BeaconManager;

    if-nez v0, :cond_12

    .line 310
    new-instance v0, Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/altbeacon/beacon/BeaconManager;->sInstance:Lorg/altbeacon/beacon/BeaconManager;

    .line 312
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static getRegionExitPeriod()J
    .registers 2

    .line 283
    sget-wide v0, Lorg/altbeacon/beacon/BeaconManager;->sExitRegionPeriod:J

    return-wide v0
.end method

.method public static getRssiFilterImplClass()Ljava/lang/Class;
    .registers 1

    .line 1126
    sget-object v0, Lorg/altbeacon/beacon/BeaconManager;->rssiFilterImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method private getScanPeriod()J
    .registers 3

    .line 1191
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    if-eqz v0, :cond_7

    .line 1192
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    return-wide v0

    .line 1194
    :cond_7
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    return-wide v0
.end method

.method public static isAndroidLScanningDisabled()Z
    .registers 1

    .line 1275
    sget-boolean v0, Lorg/altbeacon/beacon/BeaconManager;->sAndroidLScanningDisabled:Z

    return v0
.end method

.method public static setAndroidLScanningDisabled(Z)V
    .registers 1

    .line 1286
    sput-boolean p0, Lorg/altbeacon/beacon/BeaconManager;->sAndroidLScanningDisabled:Z

    .line 1287
    sget-object p0, Lorg/altbeacon/beacon/BeaconManager;->sInstance:Lorg/altbeacon/beacon/BeaconManager;

    if-eqz p0, :cond_9

    .line 1289
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->applySettings()V

    :cond_9
    return-void
.end method

.method public static setRegionExitPeriod(J)V
    .registers 2

    .line 270
    sput-wide p0, Lorg/altbeacon/beacon/BeaconManager;->sExitRegionPeriod:J

    .line 271
    sget-object p0, Lorg/altbeacon/beacon/BeaconManager;->sInstance:Lorg/altbeacon/beacon/BeaconManager;

    if-eqz p0, :cond_9

    .line 273
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->applySettings()V

    :cond_9
    return-void
.end method

.method private verifyServiceDeclaration()V
    .registers 5

    .line 1207
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1208
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    const-class v3, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000

    .line 1210
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_24

    .line 1213
    :cond_1e
    new-instance v0, Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/BeaconManager$ServiceNotDeclaredException;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    throw v0

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public applySettings()V
    .registers 4

    .line 854
    invoke-direct {p0}, Lorg/altbeacon/beacon/BeaconManager;->determineIfCalledFromSeparateScannerProcess()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 857
    :cond_7
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->isAnyConsumerBound()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BeaconManager"

    if-nez v0, :cond_18

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Not synchronizing settings to service, as it has not started up yet"

    .line 858
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    .line 859
    :cond_18
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->isScannerInDifferentProcess()Z

    move-result v0

    if-eqz v0, :cond_29

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Synchronizing settings to service"

    .line 860
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconManager;->syncSettingsToService()V

    goto :goto_30

    :cond_29
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Not synchronizing settings to service, as it is in the same process"

    .line 863
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method protected checkIfMainProcess()V
    .registers 6

    .line 360
    new-instance v0, Lorg/altbeacon/beacon/utils/ProcessUtils;

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/utils/ProcessUtils;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getPid()I

    move-result v3

    .line 364
    invoke-virtual {v0}, Lorg/altbeacon/beacon/utils/ProcessUtils;->isMainProcess()Z

    move-result v0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mMainProcess:Z

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeaconManager started up on pid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " named \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for application package \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'.  isMainProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mMainProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconManager"

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBackgroundBetweenScanPeriod()J
    .registers 3

    .line 577
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundBetweenScanPeriod:J

    return-wide v0
.end method

.method public getBackgroundMode()Z
    .registers 2

    .line 571
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mBackgroundMode:Z

    return v0
.end method

.method public getBackgroundScanPeriod()J
    .registers 3

    .line 574
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->backgroundScanPeriod:J

    return-wide v0
.end method

.method public getBeaconParsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->beaconParsers:Ljava/util/List;

    return-object v0
.end method

.method protected getDataRequestNotifier()Lorg/altbeacon/beacon/RangeNotifier;
    .registers 2

    .line 1166
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->dataRequestNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    return-object v0
.end method

.method public getForegroundBetweenScanPeriod()J
    .registers 3

    .line 583
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundBetweenScanPeriod:J

    return-wide v0
.end method

.method public getForegroundScanPeriod()J
    .registers 3

    .line 580
    iget-wide v0, p0, Lorg/altbeacon/beacon/BeaconManager;->foregroundScanPeriod:J

    return-wide v0
.end method

.method public getMonitoredRegions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoringNotifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/MonitorNotifier;",
            ">;"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->monitorNotifiers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNonBeaconLeScanCallback()Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;
    .registers 2

    .line 1171
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mNonBeaconLeScanCallback:Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

    return-object v0
.end method

.method public getRangedRegions()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1069
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager;->rangedRegions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 1070
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getRangingNotifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/RangeNotifier;",
            ">;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->rangeNotifiers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledScanJobsEnabled()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mScheduledScanJobsEnabled:Z

    return v0
.end method

.method public isAnyConsumerBound()Z
    .registers 3

    .line 497
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->consumers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    .line 499
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public isMainProcess()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mMainProcess:Z

    return v0
.end method

.method public isRegionStatePersistenceEnabled()Z
    .registers 2

    .line 766
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mRegionStatePersistenceEnabled:Z

    return v0
.end method

.method public isScannerInDifferentProcess()Z
    .registers 2

    .line 348
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mScannerInSameProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setScannerInSameProcess(Z)V
    .registers 2

    .line 356
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager;->mScannerInSameProcess:Ljava/lang/Boolean;

    return-void
.end method

.method protected syncSettingsToService()V
    .registers 4

    .line 868
    iget-boolean v0, p0, Lorg/altbeacon/beacon/BeaconManager;->mScheduledScanJobsEnabled:Z

    if-eqz v0, :cond_e

    .line 869
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/BeaconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->applySettingsToScheduledJob(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconManager;)V

    return-void

    :cond_e
    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 873
    :try_start_10
    invoke-direct {p0, v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->applyChangesToServices(ILorg/altbeacon/beacon/Region;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_22

    :catch_14
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "BeaconManager"

    const-string v2, "Failed to sync settings to service"

    .line 875
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    return-void
.end method
