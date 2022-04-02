.class public Lcom/onesignal/OneSignalNotificationManager;
.super Ljava/lang/Object;
.source "OneSignalNotificationManager.java"


# direct methods
.method static assignGrouplessNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1f

    .line 105
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    goto :goto_24

    .line 107
    :cond_1f
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_24
    const-string v2, "os_group_undefined"

    .line 112
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 115
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    :cond_3a
    return-void
.end method

.method static getActiveGrouplessNotifications(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_3a

    aget-object v4, p0, v3

    .line 86
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 88
    invoke-static {v4}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    .line 89
    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2f

    .line 90
    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v5, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v5, 0x1

    :goto_30
    if-nez v6, :cond_37

    if-eqz v5, :cond_37

    .line 92
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3a
    return-object v0
.end method

.method static getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 62
    :try_start_3
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    return-object v0
.end method

.method static getGrouplessNotifsCount(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    .line 43
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 46
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    aget-object v3, p0, v1

    .line 47
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 48
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    const-string v4, "os_group_undefined"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    add-int/lit8 v2, v2, 0x1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 52
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static getGrouplessSummaryId()I
    .registers 1

    const v0, -0x2ad2e222

    return v0
.end method

.method static getGrouplessSummaryKey()Ljava/lang/String;
    .registers 1

    const-string v0, "os_group_undefined"

    return-object v0
.end method

.method static getMostRecentNotifIdFromGroup(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 15

    if-eqz p2, :cond_5

    const-string v0, "group_id IS NULL"

    goto :goto_7

    :cond_5
    const-string v0, "group_id = ?"

    .line 133
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    move-object v6, v0

    goto :goto_24

    :cond_1d
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    move-object v6, p2

    :goto_24
    :try_start_24
    const-string v3, "notification"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "created_time DESC"

    const-string v10, "1"

    move-object v2, p0

    .line 143
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_69

    .line 151
    :try_start_32
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_47

    .line 154
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_64

    if-eqz p0, :cond_46

    .line 164
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_46

    .line 165
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v0

    :cond_47
    :try_start_47
    const-string p2, "android_notification_id"

    .line 159
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_64

    if-eqz p0, :cond_8d

    .line 164
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_8d

    .line 165
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_8d

    :catchall_64
    move-exception p2

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    goto :goto_6b

    :catchall_69
    move-exception p2

    move-object p0, v0

    .line 162
    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting android notification id for summary notification group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catchall {:try_start_6b .. :try_end_81} :catchall_8e

    if-eqz v0, :cond_8c

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_8c

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8c
    move-object v0, p0

    :cond_8d
    :goto_8d
    return-object v0

    :catchall_8e
    move-exception p0

    if-eqz v0, :cond_9a

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9a

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_9a
    throw p0
.end method

.method static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    const-string v0, "notification"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method
