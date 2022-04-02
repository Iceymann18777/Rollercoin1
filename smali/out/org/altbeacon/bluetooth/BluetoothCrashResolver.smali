.class public Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.super Ljava/lang/Object;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private detectedCrashCount:I

.field private discoveryStartConfirmed:Z

.field private final distinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBluetoothCrashDetectionTime:J

.field private lastBluetoothOffTime:J

.field private lastBluetoothTurningOnTime:J

.field private lastRecoverySucceeded:Z

.field private lastStateSaveTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recoveryAttemptCount:I

.field private recoveryInProgress:Z

.field private updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 50
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    const-wide/16 v1, 0x0

    .line 52
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    .line 53
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    .line 54
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 55
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 56
    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 57
    iput-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 58
    iput-wide v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 314
    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    iput-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "constructed"

    .line 104
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->loadState()V

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return p0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->finishRecovery()V

    return-void
.end method

.method static synthetic access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .registers 3

    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .registers 3

    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private cancelDiscovery()V
    .registers 6

    const-string v0, "BluetoothCrashResolver"

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    .line 450
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 451
    iget-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    if-nez v1, :cond_13

    const-string v1, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    new-array v2, v3, [Ljava/lang/Object;

    .line 452
    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "Cancelling discovery"

    new-array v4, v3, [Ljava/lang/Object;

    .line 457
    invoke-static {v0, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_37

    :cond_28
    const-string v1, "Discovery not running.  Won\'t cancel it"

    new-array v2, v3, [Ljava/lang/Object;

    .line 461
    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "DiscoveryCanceller sleep interrupted."

    .line 464
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    return-void
.end method

.method private finishRecovery()V
    .registers 5

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Recovery attempt finished"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 307
    invoke-static {v0, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v0

    .line 309
    :try_start_d
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 310
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_16

    .line 311
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return-void

    :catchall_16
    move-exception v1

    .line 310
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getCrashRiskDeviceCount()I
    .registers 2

    const/16 v0, 0x636

    return v0
.end method

.method private loadState()V
    .registers 9

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "BluetoothCrashResolverState.txt"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 405
    :try_start_7
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 406
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_75
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_17} :catch_66
    .catchall {:try_start_7 .. :try_end_17} :catchall_64

    .line 408
    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 410
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 412
    :cond_23
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 416
    :cond_2f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 418
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 420
    :cond_3b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 422
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    const-string v5, "1"

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 424
    iput-boolean v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 429
    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 430
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_58} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_58} :catch_60
    .catchall {:try_start_17 .. :try_end_58} :catchall_5d

    goto :goto_4d

    .line 441
    :cond_59
    :try_start_59
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_81

    goto :goto_81

    :catchall_5d
    move-exception v0

    move-object v4, v6

    goto :goto_95

    :catch_60
    move-object v4, v6

    goto :goto_66

    :catch_62
    move-object v4, v6

    goto :goto_75

    :catchall_64
    move-exception v0

    goto :goto_95

    :catch_66
    :goto_66
    :try_start_66
    const-string v5, "Can\'t parse file %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    .line 436
    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_64

    if-eqz v4, :cond_81

    .line 441
    :goto_71
    :try_start_71
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_81

    goto :goto_81

    :catch_75
    :goto_75
    :try_start_75
    const-string v5, "Can\'t read macs from %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    .line 434
    invoke-static {v0, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_64

    if-eqz v4, :cond_81

    goto :goto_71

    :catch_81
    :cond_81
    :goto_81
    new-array v1, v3, [Ljava/lang/Object;

    .line 445
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Read %s Bluetooth addresses"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_95
    if-eqz v4, :cond_9a

    .line 441
    :try_start_97
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9a

    .line 444
    :catch_9a
    :cond_9a
    goto :goto_9c

    :goto_9b
    throw v0

    :goto_9c
    goto :goto_9b
.end method

.method private processStateChange()V
    .registers 6

    .line 266
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    if-eqz v0, :cond_7

    .line 267
    invoke-interface {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;->dataUpdated()V

    .line 269
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    .line 270
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    :cond_18
    return-void
.end method

.method private saveState()V
    .registers 8

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 374
    :try_start_9
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v4, "BluetoothCrashResolverState.txt"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 375
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_91
    .catchall {:try_start_9 .. :try_end_16} :catchall_8f

    .line 376
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 379
    iget-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    if-eqz v2, :cond_5f

    const-string v2, "1\n"

    goto :goto_61

    :cond_5f
    const-string v2, "0\n"

    :goto_61
    invoke-virtual {v4, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_67} :catch_8d
    .catchall {:try_start_16 .. :try_end_67} :catchall_8a

    .line 381
    :try_start_67
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 382
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    .line 383
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_6d

    .line 385
    :cond_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_87

    .line 392
    :try_start_83
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_a3

    goto :goto_a3

    :catchall_87
    move-exception v3

    .line 385
    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v3
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8a} :catch_8d
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    move-object v2, v4

    goto :goto_b9

    :catch_8d
    move-object v2, v4

    goto :goto_91

    :catchall_8f
    move-exception v0

    goto :goto_b9

    :catch_91
    :goto_91
    :try_start_91
    const-string v3, "BluetoothCrashResolver"

    const-string v4, "Can\'t write macs to %s"

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "BluetoothCrashResolverState.txt"

    aput-object v6, v5, v1

    .line 387
    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_8f

    if-eqz v2, :cond_a3

    .line 392
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a3

    :catch_a3
    :cond_a3
    :goto_a3
    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Wrote %s Bluetooth addresses"

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_b9
    if-eqz v2, :cond_be

    .line 392
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_be

    .line 395
    :catch_be
    :cond_be
    goto :goto_c0

    :goto_bf
    throw v0

    :goto_c0
    goto :goto_bf
.end method

.method private startRecovery()V
    .registers 7

    .line 278
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 279
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BluetoothCrashResolver"

    const-string v5, "about to check if discovery is active"

    .line 280
    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-nez v3, :cond_5d

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Recovery attempt started"

    .line 282
    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iput-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 284
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "about to command discovery"

    .line 285
    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    if-nez v3, :cond_39

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Can\'t start discovery.  Is Bluetooth turned on?"

    .line 287
    invoke-static {v4, v5, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    new-array v3, v1, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "startDiscovery commanded.  isDiscovering()=%s"

    invoke-static {v4, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const/16 v1, 0x1388

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "We will be cancelling this discovery in %s milliseconds."

    invoke-static {v4, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->cancelDiscovery()V

    goto :goto_64

    :cond_5d
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Already discovering.  Recovery attempt abandoned."

    .line 302
    invoke-static {v4, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_64
    return-void
.end method


# virtual methods
.method public crashDetected()V
    .registers 7

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "BluetoothCrashResolver"

    const/16 v3, 0x12

    if-ge v0, v3, :cond_11

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Ignoring crashes before API 18, because BLE is unsupported."

    .line 204
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_11
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "BluetoothService crash detected"

    .line 207
    invoke-static {v2, v3, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_34

    new-array v0, v3, [Ljava/lang/Object;

    .line 209
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 210
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "Distinct Bluetooth devices seen at crash: %s"

    .line 209
    invoke-static {v2, v4, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 213
    iput-wide v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 214
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 216
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-eqz v0, :cond_4b

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Ignoring Bluetooth crash because recovery is already in progress."

    .line 217
    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 220
    :cond_4b
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 222
    :goto_4e
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    return-void
.end method

.method public isRecoveryInProgress()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method public notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 8

    .line 179
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 181
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 182
    :try_start_9
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_72

    .line 185
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_36

    .line 186
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_36

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "Distinct Bluetooth devices seen: %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 187
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_36
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->getCrashRiskDeviceCount()I

    move-result v0

    if-le p1, v0, :cond_71

    .line 190
    iget-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-nez p1, :cond_71

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "Large number of Bluetooth devices detected: %s Proactively attempting to clear out address list to prevent a crash"

    new-array v1, v1, [Ljava/lang/Object;

    .line 191
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 193
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 191
    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "Stopping LE Scan"

    new-array v1, v2, [Ljava/lang/Object;

    .line 194
    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 196
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 197
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    :cond_71
    return-void

    :catchall_72
    move-exception p1

    .line 183
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method public start()V
    .registers 4

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "started listening for BluetoothAdapter events"

    .line 120
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 128
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "stopped listening for BluetoothAdapter events"

    .line 129
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    return-void
.end method
