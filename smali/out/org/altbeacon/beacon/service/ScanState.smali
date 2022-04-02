.class public Lorg/altbeacon/beacon/service/ScanState;
.super Ljava/lang/Object;
.source "ScanState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static MIN_SCAN_JOB_INTERVAL_MILLIS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundBetweenScanPeriod:J

.field private mBackgroundMode:Z

.field private mBackgroundScanPeriod:J

.field private mBeaconParsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private transient mContext:Landroid/content/Context;

.field private mExtraBeaconDataTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

.field private mForegroundBetweenScanPeriod:J

.field private mForegroundScanPeriod:J

.field private mLastScanStartTimeMillis:J

.field private transient mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

.field private mRangedRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lorg/altbeacon/beacon/service/ScanState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const v0, 0x493e0

    .line 40
    sput v0, Lorg/altbeacon/beacon/service/ScanState;->MIN_SCAN_JOB_INTERVAL_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mRangedRegionState:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBeaconParsers:Ljava/util/Set;

    .line 45
    new-instance v0, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mExtraBeaconDataTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mLastScanStartTimeMillis:J

    .line 95
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static restore(Landroid/content/Context;)Lorg/altbeacon/beacon/service/ScanState;
    .registers 11

    .line 139
    const-class v0, Lorg/altbeacon/beacon/service/ScanState;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "android-beacon-library-scan-state"

    .line 143
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_7e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_b} :catch_4c
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_b} :catch_4a
    .catchall {:try_start_5 .. :try_end_b} :catchall_46

    .line 144
    :try_start_b
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_42
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_3b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_10} :catch_39
    .catchall {:try_start_b .. :try_end_10} :catchall_36

    .line 145
    :try_start_10
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/beacon/service/ScanState;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_16} :catch_2d
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_16} :catch_2b
    .catchall {:try_start_10 .. :try_end_16} :catchall_7b

    .line 146
    :try_start_16
    iput-object p0, v5, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_18} :catch_44
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_18} :catch_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_18} :catch_27
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_25
    .catchall {:try_start_16 .. :try_end_18} :catchall_7b

    if-eqz v3, :cond_1d

    .line 162
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_ec

    .line 168
    :catch_1d
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_22
    .catchall {:try_start_1d .. :try_end_20} :catchall_ec

    goto/16 :goto_93

    :catch_22
    nop

    goto/16 :goto_93

    :catch_25
    move-exception v1

    goto :goto_53

    :catch_27
    move-exception v1

    goto :goto_53

    :catch_29
    move-exception v1

    goto :goto_53

    :catch_2b
    move-exception v5

    goto :goto_30

    :catch_2d
    move-exception v5

    goto :goto_30

    :catch_2f
    move-exception v5

    :goto_30
    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_53

    :catch_34
    move-object v5, v1

    goto :goto_44

    :catchall_36
    move-exception p0

    move-object v4, v1

    goto :goto_7c

    :catch_39
    move-exception v4

    goto :goto_3e

    :catch_3b
    move-exception v4

    goto :goto_3e

    :catch_3d
    move-exception v4

    :goto_3e
    move-object v5, v1

    move-object v1, v4

    move-object v4, v5

    goto :goto_53

    :catch_42
    move-object v4, v1

    move-object v5, v4

    :catch_44
    :goto_44
    move-object v1, v3

    goto :goto_80

    :catchall_46
    move-exception p0

    move-object v4, v1

    goto/16 :goto_e6

    :catch_4a
    move-exception v3

    goto :goto_4f

    :catch_4c
    move-exception v3

    goto :goto_4f

    :catch_4e
    move-exception v3

    :goto_4f
    move-object v4, v1

    move-object v5, v4

    move-object v1, v3

    move-object v3, v5

    .line 151
    :goto_53
    :try_start_53
    instance-of v6, v1, Ljava/io/InvalidClassException;

    if-eqz v6, :cond_61

    .line 152
    sget-object v1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v6, "Serialized ScanState has wrong class. Just ignoring saved state..."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_71

    .line 155
    :cond_61
    sget-object v6, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v7, "Deserialization exception"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    sget-object v6, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v7, "error: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_7b

    :goto_71
    if-eqz v3, :cond_78

    .line 162
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_ec

    goto :goto_78

    :catch_77
    nop

    :cond_78
    :goto_78
    if-eqz v4, :cond_93

    goto :goto_1d

    :catchall_7b
    move-exception p0

    :goto_7c
    move-object v1, v3

    goto :goto_e6

    :catch_7e
    move-object v4, v1

    move-object v5, v4

    .line 148
    :goto_80
    :try_start_80
    sget-object v3, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v6, "Serialized ScanState does not exist.  This may be normal on first run."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_e5

    if-eqz v1, :cond_90

    .line 162
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f
    .catchall {:try_start_8b .. :try_end_8e} :catchall_ec

    goto :goto_90

    :catch_8f
    nop

    :cond_90
    :goto_90
    if-eqz v4, :cond_93

    goto :goto_1d

    :cond_93
    :goto_93
    if-nez v5, :cond_9a

    .line 174
    :try_start_95
    new-instance v5, Lorg/altbeacon/beacon/service/ScanState;

    invoke-direct {v5, p0}, Lorg/altbeacon/beacon/service/ScanState;-><init>(Landroid/content/Context;)V

    .line 177
    :cond_9a
    iget-object v1, v5, Lorg/altbeacon/beacon/service/ScanState;->mExtraBeaconDataTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    if-nez v1, :cond_a5

    .line 178
    new-instance v1, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>()V

    iput-object v1, v5, Lorg/altbeacon/beacon/service/ScanState;->mExtraBeaconDataTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    .line 180
    :cond_a5
    invoke-static {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object p0

    iput-object p0, v5, Lorg/altbeacon/beacon/service/ScanState;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    .line 181
    sget-object p0, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan state restore regions: monitored="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/ScanState;->getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ranged="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/ScanState;->getRangedRegionState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_95 .. :try_end_e4} :catchall_ec

    return-object v5

    :catchall_e5
    move-exception p0

    :goto_e6
    if-eqz v1, :cond_ef

    .line 162
    :try_start_e8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ee
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_ef

    :catchall_ec
    move-exception p0

    goto :goto_f5

    :catch_ee
    nop

    :cond_ef
    :goto_ef
    if-eqz v4, :cond_f4

    .line 168
    :try_start_f1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_ec

    .line 172
    :catch_f4
    :cond_f4
    :try_start_f4
    throw p0

    .line 183
    :goto_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_ec

    goto :goto_f8

    :goto_f7
    throw p0

    :goto_f8
    goto :goto_f7
.end method


# virtual methods
.method public applyChanges(Lorg/altbeacon/beacon/BeaconManager;)V
    .registers 11

    .line 263
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBeaconParsers:Ljava/util/Set;

    .line 264
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getForegroundScanPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mForegroundScanPeriod:J

    .line 265
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getForegroundBetweenScanPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mForegroundBetweenScanPeriod:J

    .line 266
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getBackgroundScanPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundScanPeriod:J

    .line 267
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getBackgroundBetweenScanPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundBetweenScanPeriod:J

    .line 268
    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getBackgroundMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundMode:Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanState;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanState;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getMonitoredRegions()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/BeaconManager;->getRangedRegions()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    sget-object p1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ranged regions: old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1, v4, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    sget-object p1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "monitored regions: old="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a4
    :goto_a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 278
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 279
    sget-object v4, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting ranging region: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v4, p0, Lorg/altbeacon/beacon/service/ScanState;->mRangedRegionState:Ljava/util/Map;

    new-instance v5, Lorg/altbeacon/beacon/service/RangeState;

    new-instance v7, Lorg/altbeacon/beacon/service/Callback;

    iget-object v8, p0, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 283
    :cond_e4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e8
    :goto_e8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 284
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 285
    sget-object v1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping ranging region: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanState;->mRangedRegionState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8

    .line 289
    :cond_118
    sget-object p1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ranging regions and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " monitoring regions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->save()V

    return-void
.end method

.method public getBackgroundBetweenScanPeriod()Ljava/lang/Long;
    .registers 3

    .line 63
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundBetweenScanPeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundMode()Ljava/lang/Boolean;
    .registers 2

    .line 55
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundScanPeriod()Ljava/lang/Long;
    .registers 3

    .line 71
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBackgroundScanPeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getBeaconParsers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mBeaconParsers:Ljava/util/Set;

    return-object v0
.end method

.method public getExtraBeaconDataTracker()Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mExtraBeaconDataTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    return-object v0
.end method

.method public getForegroundBetweenScanPeriod()Ljava/lang/Long;
    .registers 3

    .line 79
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mForegroundBetweenScanPeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundScanPeriod()Ljava/lang/Long;
    .registers 3

    .line 87
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mForegroundScanPeriod:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoringStatus()Lorg/altbeacon/beacon/service/MonitoringStatus;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-object v0
.end method

.method public getRangedRegionState()Ljava/util/Map;
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

    .line 107
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanState;->mRangedRegionState:Ljava/util/Map;

    return-object v0
.end method

.method public getScanJobIntervalMillis()I
    .registers 7

    .line 229
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 230
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundBetweenScanPeriod()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2b

    .line 233
    :cond_1b
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getForegroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getForegroundBetweenScanPeriod()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2b
    add-long/2addr v0, v2

    .line 235
    sget v2, Lorg/altbeacon/beacon/service/ScanState;->MIN_SCAN_JOB_INTERVAL_MILLIS:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-lez v5, :cond_34

    long-to-int v2, v0

    :cond_34
    return v2
.end method

.method public getScanJobRuntimeMillis()I
    .registers 7

    .line 244
    sget-object v0, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanState says background mode for ScanJob is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 246
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_38

    .line 249
    :cond_30
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getForegroundScanPeriod()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 251
    :goto_38
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/ScanState;->getBackgroundMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 253
    sget v2, Lorg/altbeacon/beacon/service/ScanState;->MIN_SCAN_JOB_INTERVAL_MILLIS:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_4a

    return v2

    :cond_4a
    long-to-int v1, v0

    return v1
.end method

.method public save()V
    .registers 11

    .line 187
    const-class v0, Lorg/altbeacon/beacon/service/ScanState;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 193
    :try_start_5
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;

    const-string v4, "android-beacon-library-scan-state-temp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_9d
    .catchall {:try_start_5 .. :try_end_d} :catchall_98

    .line 194
    :try_start_d
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_93
    .catchall {:try_start_d .. :try_end_12} :catchall_90

    .line 195
    :try_start_12
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "android-beacon-library-scan-state"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/altbeacon/beacon/service/ScanState;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "android-beacon-library-scan-state-temp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    sget-object v6, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Temp file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-object v6, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Perm file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_76

    .line 202
    sget-object v6, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v7, "Error while saving scan status to file: Cannot delete existing file."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_76
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 205
    sget-object v1, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v5, "Error while saving scan status to file: Cannot rename temp file."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_85} :catch_8e
    .catchall {:try_start_12 .. :try_end_85} :catchall_c2

    :cond_85
    if-eqz v3, :cond_8a

    .line 212
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_c9

    .line 218
    :catch_8a
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_bb
    .catchall {:try_start_8a .. :try_end_8d} :catchall_c9

    goto :goto_bb

    :catch_8e
    move-exception v1

    goto :goto_a1

    :catchall_90
    move-exception v2

    move-object v4, v1

    goto :goto_9b

    :catch_93
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_a1

    :catchall_98
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_9b
    move-object v1, v2

    goto :goto_c3

    :catch_9d
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    .line 208
    :goto_a1
    :try_start_a1
    sget-object v5, Lorg/altbeacon/beacon/service/ScanState;->TAG:Ljava/lang/String;

    const-string v6, "Error while saving scan status to file: "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-static {v5, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_c2

    if-eqz v3, :cond_b8

    .line 212
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c9

    goto :goto_b8

    :catch_b7
    nop

    :cond_b8
    :goto_b8
    if-eqz v4, :cond_bb

    goto :goto_8a

    .line 223
    :catch_bb
    :cond_bb
    :goto_bb
    :try_start_bb
    iget-object v1, p0, Lorg/altbeacon/beacon/service/ScanState;->mMonitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V

    .line 224
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_c9

    return-void

    :catchall_c2
    move-exception v1

    :goto_c3
    if-eqz v3, :cond_cc

    .line 212
    :try_start_c5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_cb
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cc

    :catchall_c9
    move-exception v1

    goto :goto_d2

    :catch_cb
    nop

    :cond_cc
    :goto_cc
    if-eqz v4, :cond_d1

    .line 218
    :try_start_ce
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_c9

    .line 222
    :catch_d1
    :cond_d1
    :try_start_d1
    throw v1

    .line 224
    :goto_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d1 .. :try_end_d3} :catchall_c9

    goto :goto_d5

    :goto_d4
    throw v1

    :goto_d5
    goto :goto_d4
.end method

.method public setLastScanStartTimeMillis(J)V
    .registers 3

    .line 134
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/ScanState;->mLastScanStartTimeMillis:J

    return-void
.end method
