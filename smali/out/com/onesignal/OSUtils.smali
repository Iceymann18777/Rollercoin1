.class Lcom/onesignal/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSUtils$SchemaType;
    }
.end annotation


# static fields
.field public static MAX_NETWORK_REQUEST_ATTEMPT_COUNT:I = 0x3

.field static final NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_a

    sput-object v0, Lcom/onesignal/OSUtils;->NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x191
        0x192
        0x193
        0x194
        0x19a
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areNotificationsEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 472
    :try_start_0
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    const/4 p0, 0x1

    return p0
.end method

.method private checkAndroidSupportLibrary(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    .line 257
    invoke-static {}, Lcom/onesignal/OSUtils;->hasWakefulBroadcastReceiver()Z

    move-result v0

    .line 258
    invoke-static {}, Lcom/onesignal/OSUtils;->hasNotificationManagerCompat()Z

    move-result v1

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    .line 261
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Could not find the Android Support Library. Please make sure it has been correctly added to your project."

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 v2, -0x5

    const-string v3, "The included Android Support Library is to old or incomplete. Please update to the 26.0.0 revision or newer."

    if-eqz v0, :cond_3f

    if-nez v1, :cond_21

    goto :goto_3f

    .line 272
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3d

    .line 273
    invoke-static {p1}, Lcom/onesignal/OSUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result p1

    if-lt p1, v1, :cond_3d

    .line 275
    invoke-static {}, Lcom/onesignal/OSUtils;->hasJobIntentService()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 276
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3d
    const/4 p1, 0x0

    return-object p1

    .line 266
    :cond_3f
    :goto_3f
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static getCorrectedLanguage()Ljava/lang/String;
    .registers 2

    .line 441
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "he"

    return-object v0

    :cond_13
    const-string v1, "in"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "id"

    return-object v0

    :cond_1e
    const-string v1, "ji"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "yi"

    return-object v0

    :cond_29
    const-string v1, "zh"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    return-object v0
.end method

.method static getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 423
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 424
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception p0

    .line 426
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_15

    .line 436
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p2
.end method

.method static getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 518
    invoke-static {p1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/"

    const-string v3, "android.resource://"

    const-string v4, "raw"

    if-eqz v1, :cond_34

    .line 519
    invoke-virtual {v0, p1, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_34

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_34
    const-string p1, "onesignal_default_sound"

    .line 524
    invoke-virtual {v0, p1, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_56

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTargetSdkVersion(Landroid/content/Context;)I
    .registers 3

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 500
    :try_start_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 501
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    .line 503
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/16 p0, 0xf

    return p0
.end method

.method static hasAllHMSLibrariesForPushKit()Z
    .registers 1

    .line 208
    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSAGConnectLibrary()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSPushKitLibrary()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static hasConfigChangeFlag(Landroid/app/Activity;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 624
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_15

    and-int/2addr p0, p1

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_19

    :catch_15
    move-exception p0

    .line 628
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_19
    :goto_19
    return v0
.end method

.method static hasFCMLibrary()Z
    .registers 1

    .line 144
    :try_start_0
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private static hasGCMLibrary()Z
    .registers 1

    .line 153
    :try_start_0
    const-class v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method static hasGMSLocationLibrary()Z
    .registers 1

    .line 162
    :try_start_0
    const-class v0, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private static hasHMSAGConnectLibrary()Z
    .registers 1

    .line 189
    :try_start_0
    const-class v0, Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private static hasHMSAvailabilityLibrary()Z
    .registers 1

    .line 171
    :try_start_0
    const-class v0, Lcom/huawei/hms/api/HuaweiApiAvailability;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method static hasHMSLocationLibrary()Z
    .registers 1

    .line 198
    :try_start_0
    const-class v0, Lcom/huawei/hms/location/LocationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private static hasHMSPushKitLibrary()Z
    .registers 1

    .line 180
    :try_start_0
    const-class v0, Lcom/huawei/hms/aaid/HmsInstanceId;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private static hasJobIntentService()Z
    .registers 1

    .line 250
    :try_start_0
    const-class v0, Landroidx/core/app/JobIntentService;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4

    const/4 v0, 0x1

    return v0

    :catchall_4
    const/4 v0, 0x0

    return v0
.end method

.method private static hasNotificationManagerCompat()Z
    .registers 1

    .line 241
    :try_start_0
    const-class v0, Landroidx/core/app/NotificationManagerCompat;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4

    const/4 v0, 0x1

    return v0

    :catchall_4
    const/4 v0, 0x0

    return v0
.end method

.method private static hasWakefulBroadcastReceiver()Z
    .registers 1

    .line 232
    :try_start_0
    const-class v0, Landroidx/legacy/content/WakefulBroadcastReceiver;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4

    const/4 v0, 0x1

    return v0

    :catchall_4
    const/4 v0, 0x0

    return v0
.end method

.method static isAndroidDeviceType()Z
    .registers 2

    .line 382
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method static isFireOSDeviceType()Z
    .registers 2

    .line 386
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static isGMSInstalledAndEnabled()Z
    .registers 1

    const-string v0, "com.google.android.gms"

    .line 299
    invoke-static {v0}, Lcom/onesignal/OSUtils;->packageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isHMSCoreInstalledAndEnabled()Z
    .registers 2

    .line 304
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isHMSCoreInstalledAndEnabledFallback()Z
    .registers 1

    const-string v0, "com.huawei.hwid"

    .line 312
    invoke-static {v0}, Lcom/onesignal/OSUtils;->packageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHuaweiDeviceType()Z
    .registers 2

    .line 390
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method static isRunningOnMainThread()Z
    .registers 2

    .line 479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isValidResourceName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "^[0-9]"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static newConcurrentSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 614
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 615
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method private static openURLInBrowser(Landroid/net/Uri;)V
    .registers 4

    .line 578
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSUtils$SchemaType;->fromString(Ljava/lang/String;)Lcom/onesignal/OSUtils$SchemaType;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_39

    .line 580
    sget-object v0, Lcom/onesignal/OSUtils$SchemaType;->HTTP:Lcom/onesignal/OSUtils$SchemaType;

    .line 581
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 586
    :cond_39
    sget-object v1, Lcom/onesignal/OSUtils$1;->$SwitchMap$com$onesignal$OSUtils$SchemaType:[I

    invoke-virtual {v0}, Lcom/onesignal/OSUtils$SchemaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_57

    :cond_4c
    const-string v0, "android.intent.action.MAIN"

    const-string v1, "android.intent.category.APP_BROWSER"

    .line 588
    invoke-static {v0, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_57
    const/high16 p0, 0x58080000

    .line 597
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static openURLInBrowser(Ljava/lang/String;)V
    .registers 1

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSUtils;->openURLInBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method private static packageInstalledAndEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 286
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 287
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 288
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    const/4 p0, 0x0

    return p0
.end method

.method static parseVibrationPattern(Lorg/json/JSONObject;)[J
    .registers 5

    :try_start_0
    const-string v0, "vib_pt"

    .line 533
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 535
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 536
    new-instance v0, Lorg/json/JSONArray;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 538
    :cond_12
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    .line 540
    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [J

    const/4 v1, 0x0

    .line 541
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 542
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    aput-wide v2, p0, v1
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2b
    return-object p0

    :catch_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method static runOnMainThreadDelayed(Ljava/lang/Runnable;I)V
    .registers 5

    .line 492
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    int-to-long v1, p1

    .line 493
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static runOnMainUIThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 484
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 486
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 487
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void
.end method

.method static shouldLogMissingAppIdError(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 667
    :cond_4
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal was not initialized, ensure to always initialize OneSignal from the onCreate of your Application class."

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static shouldRetryNetworkRequest(I)Z
    .registers 6

    .line 101
    sget-object v0, Lcom/onesignal/OSUtils;->NO_RETRY_NETWROK_REQUEST_STATUS_CODES:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    aget v4, v0, v3

    if-ne p0, v4, :cond_c

    return v2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method static sleep(I)V
    .registers 3

    int-to-long v0, p0

    .line 567
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 569
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    return-void
.end method

.method private supportsADM()Z
    .registers 2

    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    .line 319
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method private supportsGooglePush()Z
    .registers 2

    .line 337
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/onesignal/OSUtils;->hasGCMLibrary()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 341
    :cond_e
    invoke-static {}, Lcom/onesignal/OSUtils;->isGMSInstalledAndEnabled()Z

    move-result v0

    return v0
.end method

.method private supportsHMS()Z
    .registers 2

    .line 328
    invoke-static {}, Lcom/onesignal/OSUtils;->hasHMSAvailabilityLibrary()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/onesignal/OSUtils;->hasAllHMSLibrariesForPushKit()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 332
    :cond_d
    invoke-static {}, Lcom/onesignal/OSUtils;->isHMSCoreInstalledAndEnabled()Z

    move-result v0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method checkForGooglePushLibrary()Ljava/lang/Integer;
    .registers 5

    .line 212
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    .line 213
    invoke-static {}, Lcom/onesignal/OSUtils;->hasGCMLibrary()Z

    move-result v1

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    .line 216
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "The Firebase FCM library is missing! Please make sure to include it in your project."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, -0x4

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_19
    if-eqz v1, :cond_24

    if-nez v0, :cond_24

    .line 221
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "GCM Library detected, please upgrade to Firebase FCM library as GCM is deprecated!"

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_24
    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    .line 224
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Both GCM & FCM Libraries detected! Please remove the deprecated GCM library."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method getCarrierName()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 409
    :try_start_1
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 412
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    if-eqz v2, :cond_18

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    return-object v0

    :catchall_1a
    move-exception v1

    .line 415
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method getDeviceType()I
    .registers 4

    .line 357
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsADM()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    return v0

    .line 360
    :cond_8
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsGooglePush()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 364
    :cond_10
    invoke-direct {p0}, Lcom/onesignal/OSUtils;->supportsHMS()Z

    move-result v0

    const/16 v2, 0xd

    if-eqz v0, :cond_19

    return v2

    .line 370
    :cond_19
    invoke-static {}, Lcom/onesignal/OSUtils;->isGMSInstalledAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    .line 373
    :cond_20
    invoke-static {}, Lcom/onesignal/OSUtils;->isHMSCoreInstalledAndEnabledFallback()Z

    move-result v0

    if-eqz v0, :cond_27

    return v2

    :cond_27
    return v1
.end method

.method getNetType()Ljava/lang/Integer;
    .registers 4

    .line 394
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 398
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1c

    goto :goto_21

    .line 401
    :cond_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method initializationChecker(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 110
    invoke-virtual {p0}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v0

    .line 114
    :try_start_4
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_36

    const-string v1, "b2f7f966-d8cc-11e4-bed1-df8f05be55ba"

    .line 120
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "5eb5a37e-b458-11e3-ac11-000c2940e62c"

    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 122
    :cond_17
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal Example AppID detected, please update to your app\'s id found on OneSignal.com"

    invoke-static {p2, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_1e
    const/4 p2, 0x1

    if-ne v0, p2, :cond_2b

    .line 125
    invoke-virtual {p0}, Lcom/onesignal/OSUtils;->checkForGooglePushLibrary()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 130
    :cond_2b
    invoke-direct {p0, p1}, Lcom/onesignal/OSUtils;->checkAndroidSupportLibrary(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 132
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_35
    return p2

    :catchall_36
    move-exception p1

    .line 116
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal AppId format is invalid.\nExample: \'b2f7f966-d8cc-11e4-bed1-df8f05be55ba\'\n"

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, -0x3e7

    return p1
.end method
