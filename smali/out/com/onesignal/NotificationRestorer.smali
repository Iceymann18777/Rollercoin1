.class Lcom/onesignal/NotificationRestorer;
.super Ljava/lang/Object;
.source "NotificationRestorer.java"


# static fields
.field static final COLUMNS_FOR_RESTORE:[Ljava/lang/String;

.field public static restored:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android_notification_id"

    const-string v1, "full_data"

    const-string v2, "created_time"

    .line 85
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    return-void
.end method

.method private static addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 6

    const-string v0, "android_notification_id"

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "full_data"

    .line 219
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "created_time"

    .line 220
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "json_payload"

    .line 222
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android_notif_id"

    .line 223
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restoring"

    const/4 v2, 0x1

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "timestamp"

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method static asyncRestore(Landroid/content/Context;)V
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/NotificationRestorer$1;

    invoke-direct {v1, p0}, Lcom/onesignal/NotificationRestorer$1;-><init>(Landroid/content/Context;)V

    const-string p0, "OS_RESTORE_NOTIFS"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static queryAndRestoreNotificationsAndBadgeCount(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/StringBuilder;)V
    .registers 13

    .line 135
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying DB for notifs to restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    :try_start_1b
    invoke-virtual {p1}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "notification"

    .line 141
    sget-object v3, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    sget-object v9, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    move-object v1, p1

    .line 141
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 p2, 0xc8

    .line 151
    invoke-static {p0, v0, p2}, Lcom/onesignal/NotificationRestorer;->showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    invoke-static {p1, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_44

    if-eqz v0, :cond_57

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_54

    :catchall_44
    move-exception p0

    .line 154
    :try_start_45
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Error restoring notification records! "

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_58

    if-eqz v0, :cond_57

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_57

    .line 157
    :goto_54
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_57
    return-void

    :catchall_58
    move-exception p0

    if-eqz v0, :cond_64

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_64

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_64
    throw p0
.end method

.method public static restore(Landroid/content/Context;)V
    .registers 3

    .line 114
    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 117
    :cond_7
    sget-boolean v0, Lcom/onesignal/NotificationRestorer;->restored:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 119
    sput-boolean v0, Lcom/onesignal/NotificationRestorer;->restored:Z

    .line 121
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Restoring notifications"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-static {p0, v1}, Lcom/onesignal/NotificationRestorer;->skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 128
    invoke-static {p0, v0, v1}, Lcom/onesignal/NotificationRestorer;->queryAndRestoreNotificationsAndBadgeCount(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8

    .line 191
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    if-eqz v0, :cond_25

    .line 198
    invoke-static {p0}, Lcom/onesignal/NotificationExtenderService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 199
    invoke-static {v2, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const v4, 0x7b7e1b69

    .line 200
    invoke-static {p0, v3, v4, v2, v1}, Lcom/onesignal/NotificationExtenderService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    goto :goto_3b

    .line 207
    :cond_25
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, p1}, Lcom/onesignal/NotificationRestorer;->addRestoreExtras(Landroid/content/Intent;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v2

    .line 208
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/onesignal/RestoreJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x7b7e1b6a

    .line 209
    invoke-static {p0, v3, v4, v2, v1}, Lcom/onesignal/RestoreJobService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;Z)V

    :goto_3b
    if-lez p2, :cond_40

    .line 213
    invoke-static {p2}, Lcom/onesignal/OSUtils;->sleep(I)V

    .line 214
    :cond_40
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    return-void
.end method

.method private static skipVisibleNotifications(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 6

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    .line 170
    :cond_7
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 171
    array-length v0, p0

    if-nez v0, :cond_f

    return-void

    .line 174
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 176
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    const-string p0, " AND android_notification_id NOT IN ("

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    .line 180
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 181
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static startDelayedRestoreTaskFromReceiver(Landroid/content/Context;)V
    .registers 8

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7b7e1b68

    const-wide/16 v2, 0x3a98

    const/16 v4, 0x15

    if-lt v0, v4, :cond_36

    .line 233
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffJob"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 236
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/onesignal/RestoreKickoffJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "jobscheduler"

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 243
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_6b

    .line 246
    :cond_36
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "scheduleRestoreKickoffAlarmTask"

    invoke-static {v0, v4}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/onesignal/NotificationRestoreService;

    .line 250
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 255
    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-string v1, "alarm"

    .line 259
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    .line 260
    invoke-virtual {p0, v1, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_6b
    return-void
.end method
