.class public Lcom/mopub/common/ClientMetadata;
.super Ljava/lang/Object;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field private static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field private static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field private static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field private static volatile sInstance:Lcom/mopub/common/ClientMetadata;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private final mAppPackageName:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManufacturer:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mDeviceOsVersion:Ljava/lang/String;

.field private final mDeviceProduct:Ljava/lang/String;

.field private mIsoCountryCode:Ljava/lang/String;

.field private mNetworkOperator:Ljava/lang/String;

.field private mNetworkOperatorForUrl:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private mSimIsoCountryCode:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private mSimOperatorName:Ljava/lang/String;

.field private final moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 139
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    .line 140
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    .line 141
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    .line 142
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    const-string p1, "5.12.0"

    .line 144
    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    .line 148
    iget-object p1, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    :try_start_42
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-object v0, v2

    :goto_48
    if-eqz v0, :cond_52

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    .line 160
    :cond_52
    iget-object p1, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_b4

    .line 163
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x5

    if-ne v0, v1, :cond_84

    .line 166
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_84

    .line 167
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    .line 171
    :cond_84
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 172
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    goto :goto_9d

    :cond_97
    const-string v0, ""

    .line 175
    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    .line 181
    :goto_9d
    :try_start_9d
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_b4

    .line 183
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_af} :catch_b0

    goto :goto_b4

    .line 186
    :catch_b0
    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    .line 190
    :cond_b4
    :goto_b4
    new-instance p1, Lcom/mopub/common/privacy/MoPubIdentifier;

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;

    return-void
.end method

.method public static clearForTesting()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 468
    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    return-void
.end method

.method private static getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 204
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 207
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object p0

    .line 209
    :catch_10
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to retrieve PackageInfo#versionName."

    aput-object v2, v1, v0

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 445
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz p0, :cond_2e

    .line 450
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 451
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method public static getInstance()Lcom/mopub/common/ClientMetadata;
    .registers 2

    .line 122
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_e

    .line 125
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 126
    :try_start_7
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 127
    monitor-exit v1

    goto :goto_e

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0

    :cond_e
    :goto_e
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;
    .registers 3

    .line 102
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_17

    .line 104
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 105
    :try_start_7
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_12

    .line 107
    new-instance v0, Lcom/mopub/common/ClientMetadata;

    invoke-direct {v0, p0}, Lcom/mopub/common/ClientMetadata;-><init>(Landroid/content/Context;)V

    .line 108
    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 110
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static setInstance(Lcom/mopub/common/ClientMetadata;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    const-class v0, Lcom/mopub/common/ClientMetadata;

    monitor-enter v0

    .line 461
    :try_start_3
    sput-object p0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 462
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method public getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .registers 7

    .line 232
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 233
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 236
    :cond_d
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 237
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_85

    .line 241
    :cond_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2e

    .line 242
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4f

    .line 243
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 246
    :cond_2e
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 247
    array-length v1, v0

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_4f

    aget-object v4, v0, v2

    .line 248
    iget-object v5, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_4c

    const/4 v5, 0x3

    .line 249
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 250
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 254
    :cond_4f
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 255
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 256
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 259
    :cond_61
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 260
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 261
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_88

    .line 282
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 280
    :pswitch_79
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 277
    :pswitch_7c
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 268
    :pswitch_7f
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 286
    :cond_82
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    .line 238
    :cond_85
    :goto_85
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_7f
        :pswitch_7c
        :pswitch_7f
        :pswitch_7c
        :pswitch_7c
        :pswitch_7f
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_7c
        :pswitch_79
    .end packed-switch
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDeviceDimensions()Landroid/graphics/Point;
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 411
    :cond_f
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenHeightDip()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDeviceScreenWidthDip()I
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .registers 2

    .line 325
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationString()Ljava/lang/String;
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string v0, "p"

    goto :goto_20

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    const-string v0, "l"

    goto :goto_20

    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    const-string v0, "s"

    goto :goto_20

    :cond_1e
    const-string v0, "u"

    :goto_20
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIsoCountryCode()Ljava/lang/String;
    .registers 2

    .line 332
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public repopulateCountryData()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 196
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    .line 197
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    :cond_1e
    return-void
.end method
