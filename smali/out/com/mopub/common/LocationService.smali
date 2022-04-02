.class public Lcom/mopub/common/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/LocationService$ValidLocationProvider;,
        Lcom/mopub/common/LocationService$LocationAwareness;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field private static final DEFAULT_LOCATION_REFRESH_TIME_MILLIS:J = 0x927c0L

.field private static volatile sInstance:Lcom/mopub/common/LocationService;


# instance fields
.field mLastKnownLocation:Landroid/location/Location;

.field private volatile mLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

.field mLocationLastUpdatedMillis:J

.field private volatile mLocationPrecision:I

.field private volatile mMinimumLocationRefreshTimeMillis:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    iput-object v0, p0, Lcom/mopub/common/LocationService;->mLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    const/4 v0, 0x6

    .line 65
    iput v0, p0, Lcom/mopub/common/LocationService;->mLocationPrecision:I

    const-wide/32 v0, 0x927c0

    .line 66
    iput-wide v0, p0, Lcom/mopub/common/LocationService;->mMinimumLocationRefreshTimeMillis:J

    return-void
.end method

.method public static clearLastKnownLocation()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    return-void
.end method

.method static getInstance()Lcom/mopub/common/LocationService;
    .registers 2

    .line 74
    sget-object v0, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;

    if-nez v0, :cond_17

    .line 76
    const-class v1, Lcom/mopub/common/LocationService;

    monitor-enter v1

    .line 77
    :try_start_7
    sget-object v0, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;

    if-nez v0, :cond_12

    .line 79
    new-instance v0, Lcom/mopub/common/LocationService;

    invoke-direct {v0}, Lcom/mopub/common/LocationService;-><init>()V

    .line 80
    sput-object v0, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;

    .line 82
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

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 6

    .line 161
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 165
    :cond_8
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 169
    iget-object v2, v0, Lcom/mopub/common/LocationService;->mLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 170
    iget v3, v0, Lcom/mopub/common/LocationService;->mLocationPrecision:I

    .line 172
    sget-object v4, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne v2, v4, :cond_18

    return-object v1

    .line 176
    :cond_18
    invoke-static {}, Lcom/mopub/common/LocationService;->isLocationFreshEnough()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 177
    iget-object p0, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    return-object p0

    .line 180
    :cond_21
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v1}, Lcom/mopub/common/LocationService;->getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 182
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v1}, Lcom/mopub/common/LocationService;->getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v1

    .line 186
    :cond_2f
    sget-object p0, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne v2, p0, :cond_36

    .line 187
    invoke-static {v1, v3}, Lcom/mopub/common/LocationService;->truncateLocationLatLon(Landroid/location/Location;I)V

    :cond_36
    if-eqz v1, :cond_3b

    .line 191
    invoke-virtual {v0, v1}, Lcom/mopub/common/LocationService;->setLastLocation(Landroid/location/Location;)V

    .line 194
    :cond_3b
    iget-object p0, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    return-object p0
.end method

.method static getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;
    .registers 8

    const-string v0, " location provider."

    const-string v1, "Failed to retrieve location: device has no "

    .line 201
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 202
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return-object v3

    .line 208
    :cond_12
    invoke-static {p1, p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->access$000(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    return-object v3

    :cond_19
    const-string v2, "location"

    .line 213
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 216
    :try_start_23
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2b} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2b} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_2b} :catch_2c

    return-object p0

    .line 224
    :catch_2c
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 224
    invoke-static {p0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_8f

    .line 221
    :catch_4c
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 221
    invoke-static {p0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_8f

    .line 218
    :catch_6c
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v4, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve location from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider: access appears to be disabled."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 218
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_8f
    return-object v3
.end method

.method static getMostRecentValidLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .registers 7

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 243
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    goto :goto_14

    :cond_13
    move-object p0, p1

    :goto_14
    return-object p0
.end method

.method private static isLocationFreshEnough()Z
    .registers 7

    .line 267
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 268
    iget-object v1, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 271
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/mopub/common/LocationService;->mLocationLastUpdatedMillis:J

    sub-long/2addr v3, v5

    .line 272
    invoke-virtual {v0}, Lcom/mopub/common/LocationService;->getMinimumLocationRefreshTimeMillis()J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-gtz v5, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method static truncateLocationLatLon(Landroid/location/Location;I)V
    .registers 6

    if-eqz p0, :cond_2c

    if-gez p1, :cond_5

    goto :goto_2c

    .line 253
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 254
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x5

    .line 255
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 257
    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 259
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 260
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 263
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/mopub/common/LocationService;->mLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method getLocationPrecision()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/mopub/common/LocationService;->mLocationPrecision:I

    return v0
.end method

.method getMinimumLocationRefreshTimeMillis()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/mopub/common/LocationService;->mMinimumLocationRefreshTimeMillis:J

    return-wide v0
.end method

.method setLastLocation(Landroid/location/Location;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 285
    :cond_3
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 286
    iput-object p1, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mopub/common/LocationService;->mLocationLastUpdatedMillis:J

    return-void
.end method

.method setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    iput-object p1, p0, Lcom/mopub/common/LocationService;->mLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-void
.end method

.method setLocationPrecision(I)V
    .registers 3

    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/mopub/common/LocationService;->mLocationPrecision:I

    return-void
.end method

.method setMinimumLocationRefreshTimeMillis(J)V
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/mopub/common/LocationService;->mMinimumLocationRefreshTimeMillis:J

    return-void
.end method
