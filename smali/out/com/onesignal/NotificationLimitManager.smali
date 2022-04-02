.class Lcom/onesignal/NotificationLimitManager;
.super Ljava/lang/Object;
.source "NotificationLimitManager.java"


# static fields
.field static final MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x31

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    return-void
.end method

.method static clearOldestOverLimit(Landroid/content/Context;I)V
    .registers 4

    .line 44
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 45
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitStandard(Landroid/content/Context;I)V

    goto :goto_11

    .line 47
    :cond_a
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitFallback(Landroid/content/Context;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_11

    .line 50
    :catchall_e
    invoke-static {p0, p1}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimitFallback(Landroid/content/Context;I)V

    :goto_11
    return-void
.end method

.method static clearOldestOverLimitFallback(Landroid/content/Context;I)V
    .registers 13

    const-string v0, "android_notification_id"

    .line 83
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    const/4 v1, 0x0

    .line 87
    :try_start_7
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "notification"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsInt()I

    move-result v2
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_6c

    sub-int/2addr p0, v2

    add-int/2addr p0, p1

    const/4 p1, 0x1

    if-ge p0, p1, :cond_4e

    if-eqz v1, :cond_4d

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4d

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    return-void

    .line 104
    :cond_4e
    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 105
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 106
    invoke-static {p1}, Lcom/onesignal/OneSignal;->cancelNotification(I)V
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_6c

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_4e

    :cond_63
    if-eqz v1, :cond_7f

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7f

    goto :goto_7c

    :catchall_6c
    move-exception p0

    .line 112
    :try_start_6d
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Error clearing oldest notifications over limit! "

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_80

    if-eqz v1, :cond_7f

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7f

    .line 115
    :goto_7c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7f
    return-void

    :catchall_80
    move-exception p0

    if-eqz v1, :cond_8c

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_8c

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_8c
    goto :goto_8e

    :goto_8d
    throw p0

    :goto_8e
    goto :goto_8d
.end method

.method static clearOldestOverLimitStandard(Landroid/content/Context;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 60
    array-length v0, p0

    invoke-static {}, Lcom/onesignal/NotificationLimitManager;->getMaxNumberOfNotificationsInt()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-ge v0, p1, :cond_f

    return-void

    .line 66
    :cond_f
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 67
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_39

    aget-object v3, p0, v2

    .line 68
    invoke-static {v3}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_36

    .line 70
    :cond_21
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 74
    :cond_39
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/onesignal/OneSignal;->cancelNotification(I)V

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_41

    :cond_5e
    return-void
.end method

.method private static getMaxNumberOfNotificationsInt()I
    .registers 1

    const/16 v0, 0x31

    return v0
.end method

.method private static getMaxNumberOfNotificationsString()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    return-object v0
.end method

.method static isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .registers 1

    .line 121
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
