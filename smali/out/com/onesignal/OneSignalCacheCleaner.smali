.class Lcom/onesignal/OneSignalCacheCleaner;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"


# direct methods
.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedUniqueOutcomeEventNotifications(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static declared-synchronized cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 4

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 69
    :try_start_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$2;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$2;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    const-string p0, "OS_DELETE_CACHED_REDISPLAYED_IAMS_THREAD"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 80
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cleanCachedNotifications(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "notification"

    const-string v2, "created_time < ?"

    .line 95
    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static cleanCachedUniqueOutcomeEventNotifications(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT EXISTS(SELECT NULL FROM notification n WHERE n.notification_id = channel_influence_id AND channel_type = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 112
    invoke-virtual {v1}, Lcom/onesignal/influence/model/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cached_unique_outcome"

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static declared-synchronized cleanNotificationCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-class v0, Lcom/onesignal/OneSignalCacheCleaner;

    monitor-enter v0

    .line 39
    :try_start_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/onesignal/OneSignalCacheCleaner$1;

    invoke-direct {v2, p0}, Lcom/onesignal/OneSignalCacheCleaner$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "OS_DELETE_CACHED_NOTIFICATIONS_THREAD"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 59
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static cleanOldCachedData(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanNotificationCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-static {p0}, Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method
