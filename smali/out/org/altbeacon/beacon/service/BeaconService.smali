.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;
    }
.end annotation


# instance fields
.field private bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field private final handler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field private mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    .line 191
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private getRestartIntent()Landroid/app/PendingIntent;
    .registers 5

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BeaconService"

    const-string v1, "binding"

    .line 262
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 8

    const-string v0, "longScanForcingEnabled"

    .line 196
    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 197
    invoke-virtual {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->start()V

    .line 199
    new-instance v1, Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/ScanHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    .line 200
    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 201
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->createCycledLeScanner(ZLorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 203
    :cond_21
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->setMonitoringStatus(Lorg/altbeacon/beacon/service/MonitoringStatus;)V

    .line 204
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->setRangedRegionState(Ljava/util/Map;)V

    .line 205
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->setBeaconParsers(Ljava/util/Set;)V

    .line 206
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    new-instance v3, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v3}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>()V

    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/service/ScanHelper;->setExtraDataBeaconTracker(Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;)V

    .line 208
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    const/4 v3, 0x1

    .line 209
    invoke-virtual {v1, v3}, Lorg/altbeacon/beacon/BeaconManager;->setScannerInSameProcess(Z)V

    .line 210
    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->isMainProcess()Z

    move-result v1

    const-string v4, "2.13.1"

    const-string v5, "BeaconService"

    if-eqz v1, :cond_68

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v4, "beaconService version %s is starting up on the main process"

    .line 211
    invoke-static {v5, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9c

    :cond_68
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v4, "beaconService version %s is starting up on a separate process"

    .line 214
    invoke-static {v5, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v1, Lorg/altbeacon/beacon/utils/ProcessUtils;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/utils/ProcessUtils;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beaconService PID is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with process name "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :goto_9c
    :try_start_9c
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v4, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x80

    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_dd

    .line 221
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_dd

    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_dd

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 222
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string v0, "longScanForcingEnabled to keep scans going on Android N for > 30 minutes"

    new-array v1, v2, [Ljava/lang/Object;

    .line 223
    invoke-static {v5, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setLongScanForcingEnabled(Z)V
    :try_end_dd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_dd} :catch_dd

    .line 228
    :catch_dd
    :cond_dd
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->reloadParsers()V

    .line 230
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    :try_start_ee
    const-string v0, "org.altbeacon.beacon.SimulatedScanData"

    .line 235
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "beacons"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/altbeacon/beacon/service/ScanHelper;->setSimulatedScanData(Ljava/util/List;)V
    :try_end_106
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ee .. :try_end_106} :catch_110
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_106} :catch_107

    goto :goto_117

    :catch_107
    move-exception v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    .line 241
    invoke-static {v0, v5, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_117

    :catch_110
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "No org.altbeacon.beacon.SimulatedScanData class exists."

    .line 239
    invoke-static {v5, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_117
    return-void
.end method

.method public onDestroy()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "onDestroy()"

    .line 275
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v1, v3, :cond_18

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not supported prior to API 18."

    .line 277
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 280
    :cond_18
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->stop()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroy called.  stopping scanning"

    .line 281
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 284
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->destroy()V

    .line 285
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stopStatusPreservation()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    if-nez p1, :cond_5

    const-string v0, "starting with null intent"

    goto :goto_1a

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting with intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    .line 247
    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 8

    .line 290
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconService"

    const-string v2, "task removed"

    .line 291
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.2"

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.3"

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 295
    :cond_2b
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getRestartIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Setting a wakeup alarm to go off due to Android 4.4.2 service restarting bug."

    .line 297
    invoke-static {v1, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BeaconService"

    const-string v2, "unbinding"

    .line 268
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public reloadParsers()V
    .registers 2

    .line 360
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->reloadParsers()V

    return-void
.end method

.method public setScanPeriods(JJZ)V
    .registers 13

    .line 356
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setScanPeriods(JJZ)V

    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .registers 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "startMonitoring called"

    .line 338
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 340
    iget-object p2, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p2

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Currently monitoring %s regions."

    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    return-void
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .registers 8

    .line 311
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_7
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    const-string v1, "BeaconService"

    const-string v3, "Already ranging that region -- will replace existing region."

    new-array v4, v2, [Ljava/lang/Object;

    .line 313
    invoke-static {v1, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_26
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lorg/altbeacon/beacon/service/RangeState;

    invoke-direct {v3, p2}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BeaconService"

    const-string p2, "Currently ranging %s regions."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 317
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, p2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_59

    .line 319
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    return-void

    :catchall_59
    move-exception p1

    .line 318
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BeaconService"

    const-string v3, "stopMonitoring called"

    .line 346
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->removeRegion(Lorg/altbeacon/beacon/Region;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Currently monitoring %s regions."

    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_4c

    .line 350
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    :cond_4c
    return-void
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .registers 8

    .line 325
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 326
    :try_start_7
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string v1, "BeaconService"

    const-string v2, "Currently ranging %s regions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 328
    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/ScanHelper;->getRangedRegionState()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_4e

    if-nez p1, :cond_4d

    .line 331
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result p1

    if-nez p1, :cond_4d

    .line 332
    iget-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mScanHelper:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/ScanHelper;->getCycledScanner()Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    :cond_4d
    return-void

    :catchall_4e
    move-exception p1

    .line 329
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method
