.class Lcom/onesignal/HMSLocationController;
.super Lcom/onesignal/LocationController;
.source "HMSLocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/HMSLocationController$LocationUpdateListener;
    }
.end annotation


# static fields
.field private static hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

.field static locationUpdateListener:Lcom/onesignal/HMSLocationController$LocationUpdateListener;


# direct methods
.method static fireFailedComplete()V
    .registers 2

    .line 86
    sget-object v0, Lcom/onesignal/HMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 87
    :try_start_4
    sput-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 88
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static initHuaweiLocation()V
    .registers 5

    .line 48
    sget-object v0, Lcom/onesignal/HMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4f

    if-nez v1, :cond_2c

    .line 51
    :try_start_7
    sget-object v1, Lcom/onesignal/HMSLocationController;->classContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/huawei/hms/location/FusedLocationProviderClient;

    move-result-object v1

    sput-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_4f

    goto :goto_2c

    :catch_10
    move-exception v1

    .line 53
    :try_start_11
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Huawei LocationServices getFusedLocationProviderClient failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/onesignal/HMSLocationController;->fireFailedComplete()V

    .line 55
    monitor-exit v0

    return-void

    .line 58
    :cond_2c
    :goto_2c
    sget-object v1, Lcom/onesignal/HMSLocationController;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_36

    .line 59
    sget-object v1, Lcom/onesignal/HMSLocationController;->lastLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/onesignal/HMSLocationController;->fireCompleteForLocation(Landroid/location/Location;)V

    goto :goto_4d

    .line 61
    :cond_36
    sget-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    invoke-virtual {v1}, Lcom/huawei/hms/location/FusedLocationProviderClient;->getLastLocation()Lcom/huawei/hmf/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/onesignal/HMSLocationController$2;

    invoke-direct {v2}, Lcom/onesignal/HMSLocationController$2;-><init>()V

    .line 62
    invoke-virtual {v1, v2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/onesignal/HMSLocationController$1;

    invoke-direct {v2}, Lcom/onesignal/HMSLocationController$1;-><init>()V

    .line 75
    invoke-virtual {v1, v2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    .line 82
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method static onFocusChange()V
    .registers 3

    .line 92
    sget-object v0, Lcom/onesignal/HMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "HMSLocationController onFocusChange!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/onesignal/HMSLocationController;->isHMSAvailable()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    if-nez v1, :cond_16

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_16
    sget-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    if-eqz v1, :cond_2e

    .line 100
    sget-object v1, Lcom/onesignal/HMSLocationController;->locationUpdateListener:Lcom/onesignal/HMSLocationController$LocationUpdateListener;

    if-eqz v1, :cond_25

    .line 101
    sget-object v1, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    sget-object v2, Lcom/onesignal/HMSLocationController;->locationUpdateListener:Lcom/onesignal/HMSLocationController$LocationUpdateListener;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    .line 102
    :cond_25
    new-instance v1, Lcom/onesignal/HMSLocationController$LocationUpdateListener;

    sget-object v2, Lcom/onesignal/HMSLocationController;->hmsFusedLocationClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    invoke-direct {v1, v2}, Lcom/onesignal/HMSLocationController$LocationUpdateListener;-><init>(Lcom/huawei/hms/location/FusedLocationProviderClient;)V

    sput-object v1, Lcom/onesignal/HMSLocationController;->locationUpdateListener:Lcom/onesignal/HMSLocationController$LocationUpdateListener;

    .line 104
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method static startGetLocation()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/onesignal/HMSLocationController;->initHuaweiLocation()V

    return-void
.end method
