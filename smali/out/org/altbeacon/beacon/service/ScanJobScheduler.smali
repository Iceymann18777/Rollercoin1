.class public Lorg/altbeacon/beacon/service/ScanJobScheduler;
.super Ljava/lang/Object;
.source "ScanJobScheduler.java"


# static fields
.field private static final SINGLETON_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lorg/altbeacon/beacon/service/ScanJobScheduler;


# instance fields
.field private mBackgroundScanResultQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

.field private mScanJobScheduleTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->SINGLETON_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->sInstance:Lorg/altbeacon/beacon/service/ScanJobScheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mScanJobScheduleTime:Ljava/lang/Long;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBackgroundScanResultQueue:Ljava/util/List;

    return-void
.end method

.method private applySettingsToScheduledJob(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/service/ScanState;)V
    .registers 7

    .line 83
    invoke-virtual {p3, p2}, Lorg/altbeacon/beacon/service/ScanState;->applyChanges(Lorg/altbeacon/beacon/BeaconManager;)V

    .line 84
    sget-object p2, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying scan job settings with background mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, p1, p3, v1}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->schedule(Landroid/content/Context;Lorg/altbeacon/beacon/service/ScanState;Z)V

    return-void
.end method

.method private ensureNotificationProcessorSetup(Landroid/content/Context;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    if-nez v0, :cond_e

    .line 68
    new-instance v0, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    invoke-direct {v0, p1}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBeaconNotificationProcessor:Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;

    .line 69
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconLocalBroadcastProcessor;->register()V

    :cond_e
    return-void
.end method

.method public static getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;
    .registers 2

    .line 51
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->sInstance:Lorg/altbeacon/beacon/service/ScanJobScheduler;

    if-nez v0, :cond_17

    .line 53
    sget-object v1, Lorg/altbeacon/beacon/service/ScanJobScheduler;->SINGLETON_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_7
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->sInstance:Lorg/altbeacon/beacon/service/ScanJobScheduler;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->sInstance:Lorg/altbeacon/beacon/service/ScanJobScheduler;

    .line 58
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private schedule(Landroid/content/Context;Lorg/altbeacon/beacon/service/ScanState;Z)V
    .registers 16

    .line 122
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->ensureNotificationProcessorSetup(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result v0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobRuntimeMillis()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x32

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_1f

    .line 128
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "We just woke up in the background based on a new scan result.  Start scan job immediately."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v2, v4

    goto :goto_35

    :cond_1f
    cmp-long v7, v0, v4

    if-lez v7, :cond_2e

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result v7

    int-to-long v7, v7

    rem-long/2addr v0, v7

    goto :goto_2f

    :cond_2e
    move-wide v0, v4

    :goto_2f
    cmp-long v7, v0, v2

    if-gez v7, :cond_34

    goto :goto_35

    :cond_34
    move-wide v2, v0

    :goto_35
    const-string v0, "jobscheduler"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const-string v1, "Failed to schedule scan job.  Beacons will not be detected. Error: "

    const/4 v7, 0x1

    const-string v8, " millis"

    if-nez p3, :cond_60

    .line 149
    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4f

    goto :goto_60

    .line 170
    :cond_4f
    sget-object p3, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Not scheduling an immediate scan because we are in background mode.   Cancelling existing immediate scan."

    invoke-static {p3, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanJob;->getImmediateScanJobId(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_d5

    .line 152
    :cond_60
    :goto_60
    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result p3

    add-int/lit8 p3, p3, -0x32

    int-to-long v9, p3

    cmp-long p3, v2, v9

    if-gez p3, :cond_cc

    .line 155
    sget-object p3, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling immediate ScanJob to run in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {p3, v9, v10}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanJob;->getImmediateScanJobId(Landroid/content/Context;)I

    move-result v9

    new-instance v10, Landroid/content/ComponentName;

    const-class v11, Lorg/altbeacon/beacon/service/ScanJob;

    invoke-direct {v10, p1, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p3, v9, v10}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 157
    invoke-virtual {p3, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 158
    invoke-virtual {p3, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    .line 159
    invoke-virtual {p3, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    .line 160
    invoke-virtual {p3, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p3

    .line 161
    invoke-virtual {v0, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    if-gez p3, :cond_d5

    .line 163
    sget-object v2, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, p3, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d5

    .line 166
    :cond_cc
    sget-object p3, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Not scheduling immediate scan, assuming periodic is about to run"

    invoke-static {p3, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_d5
    :goto_d5
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanJob;->getPeriodicScanJobId(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v9, Lorg/altbeacon/beacon/service/ScanJob;

    invoke-direct {v3, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p3, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 175
    invoke-virtual {p3, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    new-instance p3, Landroid/os/PersistableBundle;

    invoke-direct {p3}, Landroid/os/PersistableBundle;-><init>()V

    .line 176
    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 178
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p3, v2, :cond_105

    .line 181
    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result p3

    int-to-long v2, p3

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    goto :goto_111

    .line 184
    :cond_105
    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result p3

    int-to-long v2, p3

    invoke-virtual {p1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 237
    :goto_111
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 238
    sget-object p3, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling ScanJob "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to run every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/altbeacon/beacon/service/ScanState;->getScanJobIntervalMillis()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3, p2, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-gez p1, :cond_158

    .line 241
    sget-object p2, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_158
    return-void
.end method


# virtual methods
.method public applySettingsToScheduledJob(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconManager;)V
    .registers 6

    .line 89
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Applying settings to ScanJob"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "jobscheduler"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 91
    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanState;->restore(Landroid/content/Context;)Lorg/altbeacon/beacon/service/ScanState;

    move-result-object v0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->applySettingsToScheduledJob(Landroid/content/Context;Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/service/ScanState;)V

    return-void
.end method

.method dumpBackgroundScanResultQueue()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBackgroundScanResultQueue:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBackgroundScanResultQueue:Ljava/util/List;

    return-object v0
.end method

.method public forceScheduleNextScan(Landroid/content/Context;)V
    .registers 4

    .line 117
    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanState;->restore(Landroid/content/Context;)Lorg/altbeacon/beacon/service/ScanState;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, v0, v1}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->schedule(Landroid/content/Context;Lorg/altbeacon/beacon/service/ScanState;Z)V

    return-void
.end method

.method public scheduleAfterBackgroundWakeup(Landroid/content/Context;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 99
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mBackgroundScanResultQueue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_7
    monitor-enter p0

    .line 103
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mScanJobScheduleTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    .line 104
    sget-object v0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling an immediate scan job because last did "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mScanJobScheduleTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "seconds ago."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lorg/altbeacon/beacon/service/ScanJobScheduler;->mScanJobScheduleTime:Ljava/lang/Long;

    .line 111
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_61

    .line 112
    invoke-static {p1}, Lorg/altbeacon/beacon/service/ScanState;->restore(Landroid/content/Context;)Lorg/altbeacon/beacon/service/ScanState;

    move-result-object p2

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->schedule(Landroid/content/Context;Lorg/altbeacon/beacon/service/ScanState;Z)V

    return-void

    .line 108
    :cond_56
    :try_start_56
    sget-object p1, Lorg/altbeacon/beacon/service/ScanJobScheduler;->TAG:Ljava/lang/String;

    const-string v0, "Not scheduling an immediate scan job because we just did recently."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    .line 111
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw p1
.end method
