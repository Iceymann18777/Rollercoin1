.class Lcom/onesignal/GMSLocationController;
.super Lcom/onesignal/LocationController;
.source "GMSLocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/GMSLocationController$FusedLocationApiWrapper;,
        Lcom/onesignal/GMSLocationController$LocationUpdateListener;,
        Lcom/onesignal/GMSLocationController$GoogleApiClientListener;
    }
.end annotation


# static fields
.field private static googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

.field static locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;


# direct methods
.method static synthetic access$100()I
    .registers 1

    .line 40
    invoke-static {}, Lcom/onesignal/GMSLocationController;->getApiFallbackWait()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/onesignal/GoogleApiClientCompatProxy;
    .registers 1

    .line 40
    sget-object v0, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    return-object v0
.end method

.method static fireFailedComplete()V
    .registers 2

    .line 97
    sget-object v0, Lcom/onesignal/GMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v1, :cond_c

    .line 99
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->disconnect()V

    :cond_c
    const/4 v1, 0x0

    .line 100
    sput-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    .line 101
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static getApiFallbackWait()I
    .registers 1

    const/16 v0, 0x7530

    return v0
.end method

.method private static initGoogleLocation()V
    .registers 4

    .line 54
    sget-object v0, Lcom/onesignal/GMSLocationController;->fallbackFailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    return-void

    .line 57
    :cond_5
    sget-object v0, Lcom/onesignal/GMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_8
    invoke-static {}, Lcom/onesignal/GMSLocationController;->startFallBackThread()V

    .line 60
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/onesignal/GMSLocationController;->lastLocation:Landroid/location/Location;

    if-nez v1, :cond_14

    goto :goto_1e

    .line 71
    :cond_14
    sget-object v1, Lcom/onesignal/GMSLocationController;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_4f

    .line 72
    sget-object v1, Lcom/onesignal/GMSLocationController;->lastLocation:Landroid/location/Location;

    invoke-static {v1}, Lcom/onesignal/GMSLocationController;->fireCompleteForLocation(Landroid/location/Location;)V

    goto :goto_4f

    .line 61
    :cond_1e
    :goto_1e
    new-instance v1, Lcom/onesignal/GMSLocationController$GoogleApiClientListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/GMSLocationController$GoogleApiClientListener;-><init>(Lcom/onesignal/GMSLocationController$1;)V

    .line 62
    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v3, Lcom/onesignal/GMSLocationController;->classContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 63
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/onesignal/GMSLocationController;->locationHandlerThread:Lcom/onesignal/LocationController$LocationHandlerThread;

    iget-object v2, v2, Lcom/onesignal/LocationController$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-direct {v2, v1}, Lcom/onesignal/GoogleApiClientCompatProxy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v2, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    .line 70
    invoke-virtual {v2}, Lcom/onesignal/GoogleApiClientCompatProxy;->connect()V

    .line 73
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_51

    throw v1
.end method

.method static onFocusChange()V
    .registers 4

    .line 105
    sget-object v0, Lcom/onesignal/GMSLocationController;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "GMSLocationController onFocusChange!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v1, :cond_39

    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_39

    .line 111
    :cond_1b
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    if-eqz v1, :cond_37

    .line 112
    sget-object v1, Lcom/onesignal/GMSLocationController;->googleApiClient:Lcom/onesignal/GoogleApiClientCompatProxy;

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 113
    sget-object v2, Lcom/onesignal/GMSLocationController;->locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    if-eqz v2, :cond_30

    .line 114
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v3, Lcom/onesignal/GMSLocationController;->locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 115
    :cond_30
    new-instance v2, Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    invoke-direct {v2, v1}, Lcom/onesignal/GMSLocationController$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v2, Lcom/onesignal/GMSLocationController;->locationUpdateListener:Lcom/onesignal/GMSLocationController$LocationUpdateListener;

    .line 117
    :cond_37
    monitor-exit v0

    return-void

    .line 109
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    .line 117
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private static startFallBackThread()V
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/GMSLocationController$1;

    invoke-direct {v1}, Lcom/onesignal/GMSLocationController$1;-><init>()V

    const-string v2, "OS_GMS_LOCATION_FALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/GMSLocationController;->fallbackFailThread:Ljava/lang/Thread;

    .line 93
    sget-object v0, Lcom/onesignal/GMSLocationController;->fallbackFailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static startGetLocation()V
    .registers 0

    .line 49
    invoke-static {}, Lcom/onesignal/GMSLocationController;->initGoogleLocation()V

    return-void
.end method
