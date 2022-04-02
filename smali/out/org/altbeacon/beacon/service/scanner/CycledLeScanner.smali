.class public abstract Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.super Ljava/lang/Object;
.source "CycledLeScanner.java"


# instance fields
.field protected mBackgroundFlag:Z

.field protected mBetweenScanPeriod:J

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentScanStartTime:J

.field protected final mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

.field private volatile mDistinctPacketsDetectedPerScan:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mLastScanCycleEndTime:J

.field private mLastScanCycleStartTime:J

.field private mLongScanForcingEnabled:Z

.field protected mNextScanCycleStartTime:J

.field protected mRestartNeeded:Z

.field private mScanCycleStopTime:J

.field private mScanCyclerStarted:Z

.field protected final mScanHandler:Landroid/os/Handler;

.field private mScanPeriod:J

.field private final mScanThread:Landroid/os/HandlerThread;

.field private mScanning:Z

.field private mScanningEnabled:Z

.field private mScanningLeftOn:Z

.field protected mScanningPaused:Z

.field private mWakeUpOperation:Landroid/app/PendingIntent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .registers 12

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    .line 36
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    .line 37
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 38
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    .line 41
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCurrentScanStartTime:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLongScanForcingEnabled:Z

    .line 47
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 48
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 54
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z

    .line 67
    new-instance v1, Landroid/os/Handler;

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 88
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 105
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mDistinctPacketsDetectedPerScan:Z

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    .line 109
    iput-wide p2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    .line 110
    iput-wide p4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    .line 111
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    .line 112
    iput-object p7, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    .line 113
    iput-object p8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 114
    iput-boolean p6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CycledLeScannerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanThread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)Landroid/os/HandlerThread;
    .registers 1

    .line 30
    iget-object p0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private checkLocationPermission()Z
    .registers 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 535
    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .registers 5

    .line 539
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public static createScanner(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
    .registers 22

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "CycledLeScanner"

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-ge v0, v3, :cond_12

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Not supported prior to API 18."

    .line 125
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-ge v0, v3, :cond_22

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "This is pre Android 5.0.  We are using old scanning APIs"

    .line 130
    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    const/4 v4, 0x0

    goto :goto_47

    .line 134
    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_3e

    .line 135
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->isAndroidLScanningDisabled()Z

    move-result v0

    if-eqz v0, :cond_36

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "This is Android 5.0, but L scanning is disabled. We are using old scanning APIs"

    .line 136
    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_36
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "This is Android 5.0.  We are using new scanning APIs"

    .line 139
    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47

    :cond_3e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Using Android O scanner"

    .line 144
    invoke-static {v1, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_20

    :goto_47
    if-eqz v2, :cond_5a

    .line 149
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForAndroidO;

    move-object v5, v0

    move-object v6, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForAndroidO;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    return-object v0

    :cond_5a
    if-eqz v4, :cond_6d

    .line 152
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    return-object v0

    .line 154
    :cond_6d
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    return-object v0
.end method

.method private finishScanCycle()V
    .registers 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CycledLeScanner"

    const-string v3, "Done with scan cycle"

    .line 386
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :try_start_a
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-interface {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onCycleEnd()V

    .line 389
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    if-eqz v1, :cond_b6

    .line 390
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a5

    .line 391
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 401
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mDistinctPacketsDetectedPerScan:Z

    if-eqz v1, :cond_41

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_41

    .line 403
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mustStopScanToPreventAndroidNScanTimeout()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_41

    :cond_37
    const-string v1, "Not stopping scanning.  Device capable of multiple indistinct detections per scan."

    new-array v4, v0, [Ljava/lang/Object;

    .line 428
    invoke-static {v2, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z

    goto :goto_95

    .line 404
    :cond_41
    :goto_41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 405
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v1, v6, :cond_80

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    iget-wide v8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1770

    cmp-long v1, v6, v8

    if-gez v1, :cond_80

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    sub-long v6, v4, v6

    cmp-long v1, v6, v8

    if-gez v1, :cond_80

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not stopping scan because this is Android N and we keep scanning for a minimum of 6 seconds at a time. We will stop in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millisconds."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_7f} :catch_c7

    goto :goto_95

    :cond_80
    :try_start_80
    const-string v1, "stopping bluetooth le scan"

    new-array v4, v0, [Ljava/lang/Object;

    .line 419
    invoke-static {v2, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScan()V

    .line 421
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8c} :catch_8d
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_8c} :catch_c7

    goto :goto_95

    :catch_8d
    move-exception v1

    :try_start_8e
    const-string v4, "Internal Android exception scanning for beacons"

    new-array v5, v0, [Ljava/lang/Object;

    .line 423
    invoke-static {v1, v2, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :goto_95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    goto :goto_a5

    :cond_9c
    const-string v1, "Bluetooth is disabled.  Cannot scan for beacons."

    new-array v4, v0, [Ljava/lang/Object;

    .line 434
    invoke-static {v2, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 438
    :cond_a5
    :goto_a5
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getNextScanStartTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 439
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz v1, :cond_b6

    .line 440
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 443
    :cond_b6
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-nez v1, :cond_ce

    const-string v1, "Scanning disabled. "

    new-array v3, v0, [Ljava/lang/Object;

    .line 444
    invoke-static {v2, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 446
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->cancelWakeUpAlarm()V
    :try_end_c6
    .catch Ljava/lang/SecurityException; {:try_start_8e .. :try_end_c6} :catch_c7

    goto :goto_ce

    :catch_c7
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SecurityException working accessing bluetooth."

    .line 450
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method private getNextScanStartTime()J
    .registers 7

    .line 523
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    .line 526
    :cond_d
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    add-long/2addr v2, v0

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    rem-long/2addr v4, v2

    sub-long/2addr v0, v4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 528
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 529
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CycledLeScanner"

    const-string v4, "Normalizing between scan period from %s to %s"

    .line 528
    invoke-static {v3, v4, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private mustStopScanToPreventAndroidNScanTimeout()Z
    .registers 10

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    add-long/2addr v0, v2

    .line 555
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-lt v2, v5, :cond_24

    iget-wide v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCurrentScanStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_24

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v2, v0, v5

    if-lez v2, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_43

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "CycledLeScanner"

    const-string v2, "The next scan cycle would go over the Android N max duration."

    .line 560
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLongScanForcingEnabled:Z

    if-eqz v0, :cond_3c

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "Stopping scan to prevent Android N scan timeout."

    .line 562
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3c
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "Allowing a long running scan to be stopped by the OS.  To prevent this, set longScanForcingEnabled in the AndroidBeaconLibrary."

    .line 566
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    return v4
.end method


# virtual methods
.method protected cancelWakeUpAlarm()V
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 503
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CycledLeScanner"

    const-string v4, "cancel wakeup alarm: %s"

    invoke-static {v2, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 509
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getWakeUpOperation()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x2

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-array v1, v5, [Ljava/lang/Object;

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getWakeUpOperation()Landroid/app/PendingIntent;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Set a wakeup alarm to go off in %s ms: %s"

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract deferScanIfNeeded()Z
.end method

.method public destroy()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CycledLeScanner"

    const-string v2, "Destroying"

    .line 259
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract finishScan()V
.end method

.method protected getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 5

    const-string v0, "CycledLeScanner"

    const/4 v1, 0x0

    .line 456
    :try_start_3
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2c

    .line 458
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    .line 459
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 460
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2c

    const-string v2, "Failed to construct a BluetoothAdapter"

    new-array v3, v1, [Ljava/lang/Object;

    .line 462
    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_2c

    :catch_25
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot consruct bluetooth adapter.  Security Exception"

    .line 468
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getDistinctPacketsDetectedPerScan()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mDistinctPacketsDetectedPerScan:Z

    return v0
.end method

.method protected getWakeUpOperation()Landroid/app/PendingIntent;
    .registers 5

    .line 494
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    if-nez v0, :cond_1e

    .line 495
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-class v2, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "wakeup"

    .line 496
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    .line 499
    :cond_1e
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mWakeUpOperation:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected scanLeDevice(Ljava/lang/Boolean;)V
    .registers 9

    const-string v0, "CycledLeScanner"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    :try_start_4
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 288
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_13

    const-string v3, "No Bluetooth adapter.  beaconService cannot scan."

    new-array v4, v2, [Ljava/lang/Object;

    .line 289
    invoke-static {v0, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_13
    iget-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz v3, :cond_ee

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_ee

    .line 292
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->deferScanIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_24

    return-void

    :cond_24
    const-string p1, "starting a new scan cycle"

    new-array v3, v2, [Ljava/lang/Object;

    .line 295
    invoke-static {v0, p1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    if-eqz p1, :cond_5c

    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningPaused:Z

    if-nez p1, :cond_5c

    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    if-eqz p1, :cond_38

    goto :goto_5c

    .line 333
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We are already scanning and have been for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCurrentScanStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 333
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_da

    .line 297
    :cond_5c
    :goto_5c
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    .line 298
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningPaused:Z
    :try_end_60
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_60} :catch_110

    .line 300
    :try_start_60
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_da

    .line 301
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 302
    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    if-eqz p1, :cond_84

    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->isRecoveryInProgress()Z

    move-result p1

    if-eqz p1, :cond_84

    const-string p1, "Skipping scan because crash recovery is in progress."

    new-array v1, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c3

    .line 305
    :cond_84
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz p1, :cond_bc

    .line 306
    iget-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    if-eqz p1, :cond_96

    .line 307
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    const-string p1, "restarting a bluetooth le scan"

    new-array v1, v2, [Ljava/lang/Object;

    .line 308
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9d

    :cond_96
    const-string p1, "starting a new bluetooth le scan"

    new-array v1, v2, [Ljava/lang/Object;

    .line 310
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_9d} :catch_d2
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_9d} :catch_110

    .line 313
    :goto_9d
    :try_start_9d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_a9

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->checkLocationPermission()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 314
    :cond_a9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCurrentScanStartTime:J

    .line 315
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->startScan()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b2} :catch_b3
    .catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_b2} :catch_110

    goto :goto_c3

    :catch_b3
    move-exception p1

    :try_start_b4
    const-string v1, "Internal Android exception scanning for beacons"

    new-array v3, v2, [Ljava/lang/Object;

    .line 318
    invoke-static {p1, v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c3

    :cond_bc
    const-string p1, "Scanning unnecessary - no monitoring or ranging active."

    new-array v1, v2, [Ljava/lang/Object;

    .line 321
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_c3
    :goto_c3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    goto :goto_da

    :cond_ca
    const-string p1, "Bluetooth is disabled.  Cannot scan for beacons."

    new-array v1, v2, [Ljava/lang/Object;

    .line 326
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d1} :catch_d2
    .catch Ljava/lang/SecurityException; {:try_start_b4 .. :try_end_d1} :catch_110

    goto :goto_da

    :catch_d2
    move-exception p1

    :try_start_d3
    const-string v1, "Exception starting Bluetooth scan.  Perhaps Bluetooth is disabled or unavailable?"

    new-array v3, v2, [Ljava/lang/Object;

    .line 330
    invoke-static {p1, v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_da
    :goto_da
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    .line 338
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scheduleScanCycleStop()V

    const-string p1, "Scan started"

    new-array v1, v2, [Ljava/lang/Object;

    .line 340
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_117

    :cond_ee
    const-string p1, "disabling scan"

    new-array v1, v2, [Ljava/lang/Object;

    .line 342
    invoke-static {v0, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanning:Z

    .line 344
    iput-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    .line 345
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stopScan()V

    const-wide/16 v3, 0x0

    .line 346
    iput-wide v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mCurrentScanStartTime:J

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    .line 351
    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScanCycle()V
    :try_end_10f
    .catch Ljava/lang/SecurityException; {:try_start_d3 .. :try_end_10f} :catch_110

    goto :goto_117

    :catch_110
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "SecurityException working accessing bluetooth."

    .line 356
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_117
    return-void
.end method

.method protected scheduleScanCycleStop()V
    .registers 8

    .line 363
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 364
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    if-eqz v2, :cond_3b

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CycledLeScanner"

    const-string v4, "Waiting to stop scan cycle for another %s milliseconds"

    .line 365
    invoke-static {v3, v4, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    if-eqz v2, :cond_29

    .line 368
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setWakeUpAlarm()V

    .line 370
    :cond_29
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$2;

    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner$2;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;)V

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-lez v6, :cond_37

    move-wide v0, v4

    :cond_37
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    .line 378
    :cond_3b
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScanCycle()V

    :goto_3e
    return-void
.end method

.method public setDistinctPacketsDetectedPerScan(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mDistinctPacketsDetectedPerScan:Z

    return-void
.end method

.method public setLongScanForcingEnabled(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLongScanForcingEnabled:Z

    return-void
.end method

.method public setScanPeriods(JJZ)V
    .registers 16

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "CycledLeScanner"

    const-string v4, "Set scan periods called with %s, %s Background mode must have changed."

    .line 175
    invoke-static {v1, v4, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    if-eq v0, p5, :cond_1e

    .line 178
    iput-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mRestartNeeded:Z

    .line 180
    :cond_1e
    iput-boolean p5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBackgroundFlag:Z

    .line 181
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    .line 182
    iput-wide p3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    if-eqz p5, :cond_31

    new-array p5, v2, [Ljava/lang/Object;

    const-string v0, "We are in the background.  Setting wakeup alarm"

    .line 184
    invoke-static {v1, v0, p5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setWakeUpAlarm()V

    goto :goto_3b

    :cond_31
    new-array p5, v2, [Ljava/lang/Object;

    const-string v0, "We are not in the background.  Cancelling wakeup alarm"

    .line 187
    invoke-static {v1, v0, p5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->cancelWakeUpAlarm()V

    .line 190
    :goto_3b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 191
    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    cmp-long p5, v6, v4

    if-lez p5, :cond_68

    .line 195
    iget-wide v8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleEndTime:J

    add-long/2addr v8, p3

    cmp-long p3, v8, v6

    if-gez p3, :cond_68

    .line 197
    iput-wide v8, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    new-array p3, v3, [Ljava/lang/Object;

    .line 198
    new-instance p4, Ljava/util/Date;

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mNextScanCycleStartTime:J

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {p4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object p4, p3, v2

    const-string p4, "Adjusted nextScanStartTime to be %s"

    .line 198
    invoke-static {v1, p4, p3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_68
    iget-wide p3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    cmp-long p5, p3, v4

    if-lez p5, :cond_84

    .line 206
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mLastScanCycleStartTime:J

    add-long/2addr v4, p1

    cmp-long p1, v4, p3

    if-gez p1, :cond_84

    .line 208
    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCycleStopTime:J

    new-array p1, v3, [Ljava/lang/Object;

    .line 209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Adjusted scanStopTime to be %s"

    invoke-static {v1, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_84
    return-void
.end method

.method protected setWakeUpAlarm()V
    .registers 8

    .line 481
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mBetweenScanPeriod:J

    const-wide/32 v2, 0x493e0

    cmp-long v4, v2, v0

    if-gez v4, :cond_a

    goto :goto_b

    :cond_a
    move-wide v0, v2

    .line 484
    :goto_b
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanPeriod:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    move-wide v0, v2

    .line 488
    :cond_12
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getWakeUpOperation()Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 490
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->getWakeUpOperation()Landroid/app/PendingIntent;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "CycledLeScanner"

    const-string v1, "Set a wakeup alarm to go off in %s ms: %s"

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CycledLeScanner"

    const-string v3, "start called"

    .line 216
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 217
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 218
    iget-boolean v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    if-nez v3, :cond_19

    .line 219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    goto :goto_20

    :cond_19
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "scanning already started"

    .line 221
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    return-void
.end method

.method protected abstract startScan()V
.end method

.method public stop()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CycledLeScanner"

    const-string v3, "stop called"

    .line 227
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningEnabled:Z

    .line 229
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanCyclerStarted:Z

    if-eqz v1, :cond_38

    .line 230
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->scanLeDevice(Ljava/lang/Boolean;)V

    .line 232
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z

    if-eqz v1, :cond_3f

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "Stopping scanning previously left on."

    .line 233
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->mScanningLeftOn:Z

    :try_start_24
    const-string v1, "stopping bluetooth le scan"

    new-array v3, v0, [Ljava/lang/Object;

    .line 236
    invoke-static {v2, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->finishScan()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_3f

    :catch_2f
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Internal Android exception scanning for beacons"

    .line 239
    invoke-static {v1, v2, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_38
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "scanning already stopped"

    .line 243
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method protected abstract stopScan()V
.end method
