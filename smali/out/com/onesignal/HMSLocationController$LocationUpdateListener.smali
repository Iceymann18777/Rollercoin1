.class Lcom/onesignal/HMSLocationController$LocationUpdateListener;
.super Lcom/huawei/hms/location/LocationCallback;
.source "HMSLocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/HMSLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field private huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;


# direct methods
.method constructor <init>(Lcom/huawei/hms/location/FusedLocationProviderClient;)V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/huawei/hms/location/LocationCallback;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 113
    invoke-direct {p0}, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->init()V

    return-void
.end method

.method private init()V
    .registers 6

    .line 118
    invoke-static {}, Lcom/onesignal/OneSignal;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/32 v0, 0x41eb0

    goto :goto_d

    :cond_a
    const-wide/32 v0, 0x8b290

    .line 121
    :goto_d
    invoke-static {}, Lcom/huawei/hms/location/LocationRequest;->create()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setFastestInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    long-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-long v0, v0

    .line 124
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setMaxWaitTime(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x66

    .line 125
    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setPriority(I)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "HMSLocationController Huawei LocationServices requestLocationUpdates!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/onesignal/HMSLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    sget-object v2, Lcom/onesignal/LocationController;->locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

    invoke-virtual {v2}, Lcom/onesignal/LocationController$LocationHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/huawei/hms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/huawei/hms/location/LocationRequest;Lcom/huawei/hms/location/LocationCallback;Landroid/os/Looper;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method
