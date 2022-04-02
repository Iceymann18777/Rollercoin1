.class public Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;
.super Ljava/lang/Object;
.source "RunningAverageRssiFilter.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/RssiFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    }
.end annotation


# static fields
.field private static sampleExpirationMilliseconds:J = 0x4e20L


# instance fields
.field private mMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized refreshMeasurements()V
    .registers 9

    monitor-enter p0

    .line 65
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    sub-long/2addr v3, v5

    sget-wide v5, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_c

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 73
    :cond_29
    iput-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 75
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .registers 5

    .line 27
    new-instance v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;-><init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$1;)V

    .line 28
    iput-object p1, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    .line 30
    iget-object p1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateRssi()D
    .registers 11

    .line 44
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->refreshMeasurements()V

    .line 45
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_17

    .line 49
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v4, v1, 0x1

    sub-int v1, v0, v1

    sub-int/2addr v1, v3

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    const-wide/16 v5, 0x0

    move v7, v4

    :goto_1b
    if-gt v7, v1, :cond_33

    .line 55
    iget-object v8, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    iget-object v8, v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_33
    sub-int/2addr v1, v4

    const/4 v4, 0x1

    add-int/2addr v1, v4

    int-to-double v7, v1

    .line 57
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    new-array v1, v3, [Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "RunningAverageRssiFilter"

    const-string v2, "Running average mRssi based on %s measurements: %s"

    .line 59
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v5
.end method

.method public getMeasurementCount()I
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public noMeasurementsAvailable()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
