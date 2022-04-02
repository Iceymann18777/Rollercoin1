.class public Lorg/altbeacon/beacon/service/MonitoringStatus;
.super Ljava/lang/Object;
.source "MonitoringStatus.java"


# static fields
.field private static final SINGLETON_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegionsStatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RegionMonitoringState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatePreservationIsOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->SINGLETON_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    .line 72
    iput-object p1, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addLocalRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)Lorg/altbeacon/beacon/service/RegionMonitoringState;
    .registers 8

    .line 318
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 321
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 322
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 323
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->hasSameIdentifiers(Lorg/altbeacon/beacon/Region;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 324
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    return-object p1

    .line 327
    :cond_39
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing region with unique identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old definition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New definition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "clearing state"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_96
    new-instance v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    invoke-direct {v0, p2}, Lorg/altbeacon/beacon/service/RegionMonitoringState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    .line 338
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;
    .registers 3

    .line 59
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    if-nez v0, :cond_1b

    .line 61
    sget-object v1, Lorg/altbeacon/beacon/service/MonitoringStatus;->SINGLETON_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    if-nez v0, :cond_16

    .line 64
    new-instance v0, Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->sInstance:Lorg/altbeacon/beacon/service/MonitoringStatus;

    .line 66
    :cond_16
    monitor-exit v1

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method private getRegionsStateMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RegionMonitoringState;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 138
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->restoreOrInitializeMonitoringStatus()V

    .line 140
    :cond_7
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    return-object v0
.end method

.method private regionsMatchingTo(Lorg/altbeacon/beacon/Beacon;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            ")",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Region;

    .line 161
    invoke-virtual {v2, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 164
    :cond_23
    sget-object v3, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p1, v4, v2

    const-string v2, "This region (%s) does not match beacon: %s"

    invoke-static {v3, v2, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_34
    return-object v0
.end method

.method private restoreOrInitializeMonitoringStatus()V
    .registers 7

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getLastMonitoringStatusUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 145
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    .line 146
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    .line 147
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Not restoring monitoring state because persistence is disabled"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_1f
    const-wide/32 v4, 0xdbba0

    cmp-long v2, v0, v4

    if-lez v2, :cond_3f

    .line 150
    sget-object v2, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not restoring monitoring state because it was recorded too many milliseconds ago: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    .line 153
    :cond_3f
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->restoreMonitoringStatus()V

    .line 154
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Done restoring monitoring status"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4b
    return-void
.end method


# virtual methods
.method public addLocalRegion(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;
    .registers 4

    .line 313
    new-instance v0, Lorg/altbeacon/beacon/service/Callback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1, v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addLocalRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized addRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .registers 3

    monitor-enter p0

    .line 76
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addLocalRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    .line 77
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 78
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getLastMonitoringStatusUpdateTime()J
    .registers 3

    .line 217
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v1, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public isStatePreservationOn()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    return v0
.end method

.method public declared-synchronized regions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized regionsCount()I
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeLocalRegion(Lorg/altbeacon/beacon/Region;)V
    .registers 3

    .line 310
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized removeRegion(Lorg/altbeacon/beacon/Region;)V
    .registers 2

    monitor-enter p0

    .line 81
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->removeLocalRegion(Lorg/altbeacon/beacon/Region;)V

    .line 82
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 83
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected restoreMonitoringStatus()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :try_start_2
    iget-object v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v3, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_a} :catch_c0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_be
    .catchall {:try_start_2 .. :try_end_a} :catchall_b9

    .line 226
    :try_start_a
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_b2
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_f} :catch_b0
    .catchall {:try_start_a .. :try_end_f} :catchall_ad

    .line 227
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 228
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored region monitoring state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " regions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/beacon/Region;

    .line 230
    sget-object v6, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " uniqueId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3e

    .line 236
    :cond_7b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_83
    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    .line 238
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 240
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markInside()Z

    goto :goto_83

    .line 244
    :cond_99
    iget-object v4, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mRegionsStatesMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_9e} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_9e} :catch_a9
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_9e} :catch_a7
    .catchall {:try_start_f .. :try_end_9e} :catchall_ef

    if-eqz v2, :cond_a3

    .line 253
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a3

    .line 259
    :catch_a3
    :cond_a3
    :goto_a3
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_ee

    goto :goto_ee

    :catch_a7
    move-exception v0

    goto :goto_c6

    :catch_a9
    move-exception v0

    goto :goto_c6

    :catch_ab
    move-exception v0

    goto :goto_c6

    :catchall_ad
    move-exception v1

    move-object v3, v0

    goto :goto_bc

    :catch_b0
    move-exception v3

    goto :goto_b5

    :catch_b2
    move-exception v3

    goto :goto_b5

    :catch_b4
    move-exception v3

    :goto_b5
    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto :goto_c6

    :catchall_b9
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_bc
    move-object v0, v1

    goto :goto_f0

    :catch_be
    move-exception v2

    goto :goto_c3

    :catch_c0
    move-exception v2

    goto :goto_c3

    :catch_c2
    move-exception v2

    :goto_c3
    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    .line 247
    :goto_c6
    :try_start_c6
    instance-of v4, v0, Ljava/io/InvalidClassException;

    if-eqz v4, :cond_d4

    .line 248
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string v4, "Serialized Monitoring State has wrong class. Just ignoring saved state..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e4

    .line 249
    :cond_d4
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string v5, "Deserialization exception, message: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_c6 .. :try_end_e4} :catchall_ef

    :goto_e4
    if-eqz v2, :cond_eb

    .line 253
    :try_start_e6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_eb

    :catch_ea
    nop

    :cond_eb
    :goto_eb
    if-eqz v3, :cond_ee

    goto :goto_a3

    :catch_ee
    :cond_ee
    :goto_ee
    return-void

    :catchall_ef
    move-exception v0

    :goto_f0
    if-eqz v2, :cond_f7

    :try_start_f2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_f7

    :catch_f6
    nop

    :cond_f7
    :goto_f7
    if-eqz v3, :cond_fc

    .line 259
    :try_start_f9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fc

    .line 263
    :catch_fc
    :cond_fc
    goto :goto_fe

    :goto_fd
    throw v0

    :goto_fe
    goto :goto_fd
.end method

.method protected saveMonitoringStatusIfOn()V
    .registers 10

    .line 171
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    if-nez v0, :cond_5

    return-void

    .line 172
    :cond_5
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "saveMonitoringStatusIfOn()"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x32

    const-string v3, "org.altbeacon.beacon.service.monitoring_status_state"

    if-le v0, v2, :cond_2d

    .line 174
    sget-object v0, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Too many regions being monitored.  Will not persist region state"

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_98

    :cond_2d
    const/4 v0, 0x0

    .line 181
    :try_start_2e
    iget-object v2, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_79
    .catchall {:try_start_2e .. :try_end_34} :catchall_74

    .line 182
    :try_start_34
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_6f
    .catchall {:try_start_34 .. :try_end_39} :catchall_6c

    .line 183
    :try_start_39
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    .line 186
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/altbeacon/beacon/Region;

    .line 188
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 190
    :cond_5e
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_61} :catch_6a
    .catchall {:try_start_39 .. :try_end_61} :catchall_99

    if-eqz v2, :cond_66

    .line 197
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_66

    .line 203
    :catch_66
    :cond_66
    :goto_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_98

    goto :goto_98

    :catch_6a
    move-exception v0

    goto :goto_7d

    :catchall_6c
    move-exception v1

    move-object v3, v0

    goto :goto_77

    :catch_6f
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_7d

    :catchall_74
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    :goto_77
    move-object v0, v1

    goto :goto_9a

    :catch_79
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    .line 192
    :goto_7d
    :try_start_7d
    sget-object v4, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string v5, "Error while saving monitored region states to file "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_99

    if-eqz v2, :cond_95

    .line 197
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    nop

    :cond_95
    :goto_95
    if-eqz v3, :cond_98

    goto :goto_66

    :catch_98
    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception v0

    :goto_9a
    if-eqz v2, :cond_a1

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    nop

    :cond_a1
    :goto_a1
    if-eqz v3, :cond_a6

    .line 203
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a6

    .line 207
    :catch_a6
    :cond_a6
    goto :goto_a8

    :goto_a7
    throw v0

    :goto_a8
    goto :goto_a7
.end method

.method public declared-synchronized startStatusPreservation()V
    .registers 2

    monitor-enter p0

    .line 278
    :try_start_1
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z

    .line 280
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 282
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stateOf(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;
    .registers 3

    monitor-enter p0

    .line 94
    :try_start_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/service/RegionMonitoringState;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopStatusPreservation()V
    .registers 3

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v1, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mStatePreservationIsOn:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 272
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLocalState(Lorg/altbeacon/beacon/Region;Ljava/lang/Integer;)V
    .registers 4

    .line 294
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    if-nez v0, :cond_10

    .line 296
    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addLocalRegion(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    move-result-object v0

    :cond_10
    if-eqz p2, :cond_25

    .line 299
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1b

    .line 300
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markOutside()V

    .line 303
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    .line 304
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markInside()Z

    :cond_25
    return-void
.end method

.method protected updateMonitoringStatusTime(J)V
    .registers 5

    .line 212
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v1, "org.altbeacon.beacon.service.monitoring_status_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method public declared-synchronized updateNewlyInsideInRegionsContaining(Lorg/altbeacon/beacon/Beacon;)V
    .registers 9

    monitor-enter p0

    .line 118
    :try_start_1
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsMatchingTo(Lorg/altbeacon/beacon/Beacon;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 121
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getRegionsStateMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/RegionMonitoringState;

    if-eqz v2, :cond_a

    .line 122
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markInside()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v0, 0x1

    .line 124
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v3

    iget-object v4, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v5, "monitoringData"

    new-instance v6, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 125
    invoke-virtual {v2}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v2

    invoke-direct {v6, v2, v1}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v6}, Lorg/altbeacon/beacon/service/MonitoringData;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 124
    invoke-virtual {v3, v4, v5, v1}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_a

    :cond_42
    if-eqz v0, :cond_48

    .line 129
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V

    goto :goto_4f

    .line 132
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateMonitoringStatusTime(J)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 134
    :goto_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    goto :goto_55

    :goto_54
    throw p1

    :goto_55
    goto :goto_54
.end method

.method public declared-synchronized updateNewlyOutside()V
    .registers 10

    monitor-enter p0

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/Region;

    .line 102
    invoke-virtual {p0, v3}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stateOf(Lorg/altbeacon/beacon/Region;)Lorg/altbeacon/beacon/service/RegionMonitoringState;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->markOutsideIfExpired()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    .line 105
    sget-object v2, Lorg/altbeacon/beacon/service/MonitoringStatus;->TAG:Ljava/lang/String;

    const-string v5, "found a monitor that expired: %s"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v2, v5, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v2

    iget-object v5, p0, Lorg/altbeacon/beacon/service/MonitoringStatus;->mContext:Landroid/content/Context;

    const-string v7, "monitoringData"

    new-instance v8, Lorg/altbeacon/beacon/service/MonitoringData;

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/RegionMonitoringState;->getInside()Z

    move-result v4

    invoke-direct {v8, v4, v3}, Lorg/altbeacon/beacon/service/MonitoringData;-><init>(ZLorg/altbeacon/beacon/Region;)V

    invoke-virtual {v8}, Lorg/altbeacon/beacon/service/MonitoringData;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v5, v7, v3}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v2, 0x1

    goto :goto_b

    :cond_47
    if-eqz v2, :cond_4d

    .line 110
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->saveMonitoringStatusIfOn()V

    goto :goto_54

    .line 113
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateMonitoringStatusTime(J)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 115
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method
