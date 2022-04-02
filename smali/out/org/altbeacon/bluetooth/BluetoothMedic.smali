.class public Lorg/altbeacon/bluetooth/BluetoothMedic;
.super Ljava/lang/Object;
.source "BluetoothMedic.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastBluetoothPowerCycleTime:J

.field private mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mNotificationIcon:I

.field private mNotificationsEnabled:Z

.field private mScanTestResult:Ljava/lang/Boolean;

.field private mTestType:I

.field private mTransmitterTestResult:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTestType:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 91
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 93
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    .line 94
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 99
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 64
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z
    .registers 1

    .line 64
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetoothIfNotTooSoon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mBluetoothEventReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$602(Lorg/altbeacon/bluetooth/BluetoothMedic;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lorg/altbeacon/bluetooth/BluetoothMedic;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method private cycleBluetooth()V
    .registers 5

    .line 395
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Power cycling bluetooth"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Turning Bluetooth off."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_27

    .line 398
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 399
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothMedic$4;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothMedic$4;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 409
    :cond_27
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot cycle bluetooth.  Manager is null."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method private cycleBluetoothIfNotTooSoon()Z
    .registers 7

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/32 v3, 0xea60

    cmp-long v5, v0, v3

    if-gez v5, :cond_2d

    .line 382
    sget-object v3, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cycling bluetooth because we just did so "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds ago."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 386
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLastBluetoothPowerCycleTime:J

    .line 387
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Power cycling bluetooth"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothMedic;->cycleBluetooth()V

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;
    .registers 1

    .line 141
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-direct {v0}, Lorg/altbeacon/bluetooth/BluetoothMedic;-><init>()V

    sput-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    .line 144
    :cond_b
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->sInstance:Lorg/altbeacon/bluetooth/BluetoothMedic;

    return-object v0
.end method

.method private initializeWithContext(Landroid/content/Context;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_1e

    :cond_8
    const-string v0, "bluetooth"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_1f

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    :cond_1e
    return-void

    .line 155
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot get BluetoothManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 415
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    .line 416
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationsEnabled:Z

    if-eqz v0, :cond_61

    .line 417
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "err"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMedic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 419
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mNotificationIcon:I

    .line 420
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_62

    .line 421
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 422
    invoke-static {p1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p3

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NoOperation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 425
    invoke-virtual {p3, v0, v1}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p3

    .line 429
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "notification"

    .line 431
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_61

    const/4 p3, 0x1

    .line 433
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_61
    return-void

    :array_62
    .array-data 8
        0xc8
        0x64
        0xc8
    .end array-data
.end method


# virtual methods
.method public runScanTest(Landroid/content/Context;)Z
    .registers 11

    .line 214
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    .line 216
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Starting scan test"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 218
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5d

    .line 219
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 220
    new-instance v4, Lorg/altbeacon/bluetooth/BluetoothMedic$2;

    invoke-direct {v4, p0, v0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$2;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/content/Context;)V

    if-eqz v0, :cond_54

    .line 261
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 262
    :cond_26
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_4e

    .line 263
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Waiting for scan test to complete..."

    invoke-static {p1, v6, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 266
    :try_start_35
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    nop

    .line 269
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_26

    .line 270
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Timeout running scan test"

    invoke-static {p1, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_4e
    :try_start_4e
    invoke-virtual {v0, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_5d

    :catch_52
    nop

    goto :goto_5d

    .line 279
    :cond_54
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Cannot get scanner"

    invoke-static {p1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_5d
    :goto_5d
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "scan test complete"

    invoke-static {p1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mScanTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_71

    :cond_70
    const/4 v1, 0x1

    :cond_71
    return v1
.end method

.method public runTransmitterTest(Landroid/content/Context;)Z
    .registers 12

    .line 302
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->initializeWithContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_77

    .line 306
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 308
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v5

    .line 309
    new-instance v6, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    new-array v7, v3, [B

    aput-byte v4, v7, v4

    .line 310
    invoke-virtual {v6, v4, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v6

    .line 311
    sget-object v7, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "Starting transmitter test"

    invoke-static {v7, v9, v8}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v7, Lorg/altbeacon/bluetooth/BluetoothMedic$3;

    invoke-direct {v7, p0, v2, p1}, Lorg/altbeacon/bluetooth/BluetoothMedic$3;-><init>(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_4f

    .line 344
    :cond_46
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Cannot get advertiser"

    invoke-static {p1, v5, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_4f
    :goto_4f
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-nez p1, :cond_77

    .line 347
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Waiting for transmitter test to complete..."

    invoke-static {p1, v5, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 350
    :try_start_5e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_63

    :catch_62
    nop

    .line 353
    :goto_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_4f

    .line 354
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Timeout running transmitter test"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_77
    sget-object p1, Lorg/altbeacon/bluetooth/BluetoothMedic;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "transmitter test complete"

    invoke-static {p1, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic;->mTransmitterTestResult:Ljava/lang/Boolean;

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v3, 0x0

    :goto_8c
    return v3
.end method
