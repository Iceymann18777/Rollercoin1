.class Lcom/onesignal/NotificationSummaryManager;
.super Ljava/lang/Object;
.source "NotificationSummaryManager.java"


# direct methods
.method static clearNotificationOnSummaryClick(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    .line 202
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 205
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 207
    invoke-static {p1, p2, v1}, Lcom/onesignal/OneSignalNotificationManager;->getMostRecentNotifIdFromGroup(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 209
    invoke-static {}, Lcom/onesignal/OneSignal;->getClearGroupSummaryClick()Z

    move-result p2

    if-eqz p2, :cond_30

    if-eqz v1, :cond_26

    .line 214
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_26
    if-eqz v0, :cond_37

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_37

    .line 221
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->cancelNotification(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method static getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 13

    const-string v0, "android_notification_id"

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 1"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v9, 0x0

    :try_start_b
    const-string v2, "notification"

    .line 171
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_4e

    .line 180
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 182
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_49

    if-eqz p0, :cond_2d

    .line 190
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2d
    return-object v9

    .line 185
    :cond_2e
    :try_start_2e
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 186
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_49

    if-eqz p0, :cond_72

    .line 190
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_72

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_72

    :catchall_49
    move-exception v0

    move-object v10, v9

    move-object v9, p0

    move-object p0, v10

    goto :goto_50

    :catchall_4e
    move-exception v0

    move-object p0, v9

    .line 188
    :goto_50
    :try_start_50
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting android notification id for summary notification group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_73

    if-eqz v9, :cond_71

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_71

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_71
    move-object v9, p0

    :cond_72
    :goto_72
    return-object v9

    :catchall_73
    move-exception p0

    if-eqz v9, :cond_7f

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_7f
    throw p0
.end method

.method private static internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 14

    const-string v0, "android_notification_id"

    const-string v1, "created_time"

    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const-string v3, "notification"

    const-string v5, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_61

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 71
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_2b

    return-object v2

    .line 76
    :cond_2b
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 80
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_40

    const-string p3, "dismissed"

    goto :goto_42

    :cond_40
    const-string p3, "opened"

    .line 81
    :goto_42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android_notification_id = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2

    :cond_61
    if-ne v3, v0, :cond_71

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 94
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_6d

    return-object v2

    .line 97
    :cond_6d
    invoke-static {p0, p2}, Lcom/onesignal/NotificationSummaryManager;->restoreSummary(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2

    .line 106
    :cond_71
    :try_start_71
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-static {p1, p2}, Lcom/onesignal/NotificationSummaryManager;->getSummaryNotificationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8a

    return-object v2

    .line 114
    :cond_8a
    new-instance p1, Lcom/onesignal/NotificationGenerationJob;

    invoke-direct {p1, p0}, Lcom/onesignal/NotificationGenerationJob;-><init>(Landroid/content/Context;)V

    .line 115
    iput-boolean v0, p1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 116
    iput-object p3, p1, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 118
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "grp"

    .line 119
    invoke-virtual {p0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iput-object p0, p1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 122
    invoke-static {p1}, Lcom/onesignal/GenerateNotification;->updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_a2} :catch_a2

    :catch_a2
    return-object v2
.end method

.method private static restoreSummary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .line 129
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 p1, 0x0

    .line 136
    :try_start_b
    invoke-virtual {v0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "notification"

    .line 137
    sget-object v4, Lcom/onesignal/NotificationRestorer;->COLUMNS_FOR_RESTORE:[Ljava/lang/String;

    const-string v5, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 150
    invoke-static {p0, p1, v1}, Lcom/onesignal/NotificationRestorer;->showNotificationsFromCursor(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_28

    if-eqz p1, :cond_3b

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_38

    :catchall_28
    move-exception p0

    .line 152
    :try_start_29
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error restoring notification records! "

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3c

    if-eqz p1, :cond_3b

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_3b

    .line 155
    :goto_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    if-eqz p1, :cond_48

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_48

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_48
    throw p0
.end method

.method static updatePossibleDependentSummaryOnDismiss(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 12

    const-string v0, "group_id"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_notification_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "notification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 26
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 27
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3d

    const/4 p2, 0x1

    .line 31
    invoke-static {p0, p1, v0, p2}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    goto :goto_3d

    .line 34
    :cond_3a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method static updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .registers 4

    .line 41
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/NotificationSummaryManager;->internalUpdateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_10

    if-eqz p0, :cond_18

    .line 45
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_18

    .line 46
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_18

    :catchall_10
    move-exception p0

    .line 43
    :try_start_11
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Error running updateSummaryNotificationAfterChildRemoved!"

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    :cond_18
    :goto_18
    return-void

    :catchall_19
    move-exception p0

    .line 47
    throw p0
.end method
