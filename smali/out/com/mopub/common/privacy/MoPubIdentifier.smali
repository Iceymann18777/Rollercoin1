.class public Lcom/mopub/common/privacy/MoPubIdentifier;
.super Ljava/lang/Object;
.source "MoPubIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;,
        Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;
    }
.end annotation


# static fields
.field private static final MISSING_VALUE:I = -0x1

.field private static final PREF_AD_INFO_GROUP:Ljava/lang/String; = "com.mopub.settings.identifier"

.field private static final PREF_IDENTIFIER_TIME:Ljava/lang/String; = "privacy.identifier.time"

.field private static final PREF_IFA_IDENTIFIER:Ljava/lang/String; = "privacy.identifier.ifa"

.field private static final PREF_LIMIT_AD_TRACKING:Ljava/lang/String; = "privacy.limit.ad.tracking"

.field private static final PREF_MOPUB_IDENTIFIER:Ljava/lang/String; = "privacy.identifier.mopub"


# instance fields
.field private initialized:Z

.field private mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

.field private final mAppContext:Landroid/content/Context;

.field private mIdChangeListener:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

.field private volatile mInitializationListener:Lcom/mopub/common/SdkInitializationListener;

.field private mRefreshingAdvertisingInfo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;-><init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAppContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mIdChangeListener:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    .line 68
    invoke-static {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->readIdFromStorage(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    if-nez p1, :cond_18

    .line 70
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateExpiredAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 72
    :cond_18
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->refreshAdvertisingInfo()V

    return-void
.end method

.method static synthetic access$102(Lcom/mopub/common/privacy/MoPubIdentifier;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mRefreshingAdvertisingInfo:Z

    return p1
.end method

.method static declared-synchronized clearStorage(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    .line 159
    :try_start_3
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.mopub.settings.identifier"

    .line 161
    invoke-static {p0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 162
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "privacy.limit.ad.tracking"

    .line 163
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.ifa"

    .line 164
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.mopub"

    .line 165
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.time"

    .line 166
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 168
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getAmazonAdvertisingInfo(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;
    .registers 11

    .line 239
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "limit_ad_tracking"

    const/4 v1, -0x1

    .line 242
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "advertising_id"

    .line 243
    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v0, v1, :cond_34

    .line 245
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    if-eqz v0, :cond_21

    const/4 p1, 0x1

    const/4 v6, 0x1

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 247
    :goto_23
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 249
    new-instance v0, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v5, p1, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0

    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyIdChangeListener(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V
    .registers 4

    .line 227
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mIdChangeListener:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    if-eqz v0, :cond_a

    .line 230
    invoke-interface {v0, p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;->onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V

    :cond_a
    return-void
.end method

.method static declared-synchronized readIdFromStorage(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;
    .registers 12

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_54

    const/4 v2, 0x0

    :try_start_b
    const-string v3, "com.mopub.settings.identifier"

    .line 130
    invoke-static {p0, v3}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "privacy.identifier.ifa"

    const-string v4, ""

    .line 131
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "privacy.identifier.mopub"

    const-string v4, ""

    .line 132
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "privacy.identifier.time"

    .line 133
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "privacy.limit.ad.tracking"

    .line 134
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_51

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_51

    .line 136
    new-instance p0, Lcom/mopub/common/privacy/AdvertisingId;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_43
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_43} :catch_45
    .catchall {:try_start_b .. :try_end_43} :catchall_54

    monitor-exit v0

    return-object p0

    .line 139
    :catch_45
    :try_start_45
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot read identifier from shared preferences"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_54

    :cond_51
    const/4 p0, 0x0

    .line 141
    monitor-exit v0

    return-object p0

    :catchall_54
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private refreshAdvertisingInfo()V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mRefreshingAdvertisingInfo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mRefreshingAdvertisingInfo:Z

    .line 96
    new-instance v0, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/MoPubIdentifier$RefreshAdvertisingInfoAsyncTask;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized reportInitializationComplete()V
    .registers 3

    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 221
    iput-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    .line 222
    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 224
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setAdvertisingInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 13

    .line 184
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    new-instance v6, Lcom/mopub/common/privacy/AdvertisingId;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {p0, v6}, Lcom/mopub/common/privacy/MoPubIdentifier;->setAdvertisingInfo(Lcom/mopub/common/privacy/AdvertisingId;)V

    return-void
.end method

.method private static declared-synchronized writeIdToStorage(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V
    .registers 6

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    .line 145
    :try_start_3
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.mopub.settings.identifier"

    .line 148
    invoke-static {p0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "privacy.limit.ad.tracking"

    .line 150
    iget-boolean v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.ifa"

    .line 151
    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.mopub"

    .line 152
    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.time"

    .line 153
    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_38

    .line 155
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->initialized:Z

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->rotateMopubId()V

    .line 86
    :cond_7
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 87
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->refreshAdvertisingInfo()V

    return-object v0
.end method

.method refreshAdvertisingInfoBackgroundThread()V
    .registers 12

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 106
    iget-object v3, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 107
    iget-object v4, v3, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 108
    new-instance v4, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v6, v3, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v7, v2, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    iget-boolean v8, v3, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->limitAdTracking:Z

    iget-object v3, v2, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_33

    .line 110
    :cond_2d
    iget-object v3, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAmazonAdvertisingInfo(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v4

    :goto_33
    if-eqz v4, :cond_59

    .line 114
    invoke-virtual {v2}, Lcom/mopub/common/privacy/AdvertisingId;->isRotationRequired()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateIdString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    :cond_40
    iget-object v3, v2, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    :goto_42
    move-object v7, v3

    .line 115
    invoke-virtual {v2}, Lcom/mopub/common/privacy/AdvertisingId;->isRotationRequired()Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_50

    :cond_4a
    iget-object v0, v2, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_50
    move-wide v9, v0

    .line 117
    iget-object v6, v4, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    iget-boolean v8, v4, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mopub/common/privacy/MoPubIdentifier;->setAdvertisingInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 121
    :cond_59
    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->rotateMopubId()V

    return-void
.end method

.method rotateMopubId()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v0, v0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    const-string v1, "10ca1ad1abe1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isRotationRequired()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 176
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->setAdvertisingInfo(Lcom/mopub/common/privacy/AdvertisingId;)V

    return-void

    .line 180
    :cond_1f
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateFreshAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->setAdvertisingInfo(Lcom/mopub/common/privacy/AdvertisingId;)V

    return-void
.end method

.method setAdvertisingInfo(Lcom/mopub/common/privacy/AdvertisingId;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 192
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    .line 193
    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->writeIdToStorage(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V

    .line 195
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/AdvertisingId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->initialized:Z

    if-nez p1, :cond_1a

    .line 196
    :cond_15
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mAdInfo:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {p0, v0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->notifyIdChangeListener(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V

    :cond_1a
    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->initialized:Z

    .line 200
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->reportInitializationComplete()V

    return-void
.end method

.method public setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mIdChangeListener:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    return-void
.end method

.method setInitializationListener(Lcom/mopub/common/SdkInitializationListener;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->mInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    .line 213
    iget-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->initialized:Z

    if-eqz p1, :cond_9

    .line 214
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->reportInitializationComplete()V

    :cond_9
    return-void
.end method
