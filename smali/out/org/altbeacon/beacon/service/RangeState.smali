.class public Lorg/altbeacon/beacon/service/RangeState;
.super Ljava/lang/Object;
.source "RangeState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static sUseTrackingCache:Z = false


# instance fields
.field private mCallback:Lorg/altbeacon/beacon/service/Callback;

.field private mRangedBeacons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/Beacon;",
            "Lorg/altbeacon/beacon/service/RangedBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    return-void
.end method

.method public static getUseTrackingCache()Z
    .registers 1

    .line 104
    sget-boolean v0, Lorg/altbeacon/beacon/service/RangeState;->sUseTrackingCache:Z

    return v0
.end method

.method public static setUseTrackingCache(Z)V
    .registers 1

    .line 100
    sput-boolean p0, Lorg/altbeacon/beacon/service/RangeState;->sUseTrackingCache:Z

    return-void
.end method


# virtual methods
.method public addBeacon(Lorg/altbeacon/beacon/Beacon;)V
    .registers 7

    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RangeState"

    if-eqz v0, :cond_2a

    .line 51
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 52
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const-string v1, "adding %s to existing range for: %s"

    .line 53
    invoke-static {v3, v1, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_26
    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;->updateBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_43

    .line 58
    :cond_2a
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "adding %s to new rangedBeacon"

    .line 59
    invoke-static {v3, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_39
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    new-instance v1, Lorg/altbeacon/beacon/service/RangedBeacon;

    invoke-direct {v1, p1}, Lorg/altbeacon/beacon/service/RangedBeacon;-><init>(Lorg/altbeacon/beacon/Beacon;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    return-void
.end method

.method public declared-synchronized finalizeBeacons()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v2, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_6e

    .line 72
    :try_start_e
    iget-object v3, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/Beacon;

    .line 73
    iget-object v5, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/altbeacon/beacon/service/RangedBeacon;

    .line 74
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->isTracked()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 75
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->commitMeasurements()V

    .line 76
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v6

    if-nez v6, :cond_42

    .line 77
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->getBeacon()Lorg/altbeacon/beacon/Beacon;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_42
    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->noMeasurementsAvailable()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5c

    .line 85
    sget-boolean v6, Lorg/altbeacon/beacon/service/RangeState;->sUseTrackingCache:Z

    if-eqz v6, :cond_55

    invoke-virtual {v5}, Lorg/altbeacon/beacon/service/RangedBeacon;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 86
    :cond_55
    invoke-virtual {v5, v8}, Lorg/altbeacon/beacon/service/RangedBeacon;->setTracked(Z)V

    .line 87
    :cond_58
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_5c
    const-string v4, "RangeState"

    const-string v5, "Dumping beacon from RangeState because it has no recent measurements."

    new-array v6, v8, [Ljava/lang/Object;

    .line 90
    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 93
    :cond_66
    iput-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mRangedBeacons:Ljava/util/Map;

    .line 94
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_6b

    .line 96
    monitor-exit p0

    return-object v1

    :catchall_6b
    move-exception v0

    .line 94
    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    monitor-exit p0

    goto :goto_72

    :goto_71
    throw v0

    :goto_72
    goto :goto_71
.end method

.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RangeState;->mCallback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method
