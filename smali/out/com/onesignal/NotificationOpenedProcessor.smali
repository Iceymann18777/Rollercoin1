.class Lcom/onesignal/NotificationOpenedProcessor;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/onesignal/NotificationOpenedProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/NotificationOpenedProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13

    const-string v0, "full_data"

    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const-string v2, "notification"

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    .line 151
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 161
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v9, :cond_4e

    .line 162
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    :cond_21
    :try_start_21
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_32

    goto :goto_48

    .line 168
    :catchall_32
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse JSON of sub notification in group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 170
    :goto_48
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_21

    .line 173
    :cond_4e
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private static clearStatusBarNotifications(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_6

    .line 218
    invoke-static {p0, p1, p2}, Lcom/onesignal/NotificationSummaryManager;->clearNotificationOnSummaryClick(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_22

    .line 220
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_22

    .line 223
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessNotifsCount(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_22

    .line 225
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result p1

    .line 226
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 227
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_22
    :goto_22
    return-void
.end method

.method private static handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "action_button"

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 73
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v2, "androidNotificationId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 74
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_20
    return-void
.end method

.method static handleIAMPreviewOpen(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 2

    .line 138
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->inAppPreviewPushUUID(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_8
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startOrResumeApp(Landroid/content/Context;)Z

    .line 143
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->getController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageController;->displayPreviewMessage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static isOneSignalIntent(Landroid/content/Intent;)Z
    .registers 2

    const-string v0, "onesignalData"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "summary"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "androidNotificationId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private static markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 10

    const-string v0, "summary"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 182
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    const-string v5, "group_id IS NULL"

    goto :goto_1e

    :cond_18
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v5, "group_id = ?"

    :goto_1e
    if-nez p3, :cond_65

    .line 192
    invoke-static {}, Lcom/onesignal/OneSignal;->getClearGroupSummaryClick()Z

    move-result p3

    if-nez p3, :cond_65

    .line 196
    invoke-static {p2, v0, v3}, Lcom/onesignal/OneSignalNotificationManager;->getMostRecentNotifIdFromGroup(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND android_notification_id = ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_46

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v1

    goto :goto_65

    :cond_46
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    aput-object p3, v2, v4

    goto :goto_65

    .line 204
    :cond_4e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_notification_id = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "androidNotificationId"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    :cond_65
    :goto_65
    invoke-static {p0, p2, v0}, Lcom/onesignal/NotificationOpenedProcessor;->clearStatusBarNotifications(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;

    move-result-object p1

    const-string p3, "notification"

    invoke-virtual {p2, p3, p1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    invoke-static {p2, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-void
.end method

.method private static newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;
    .registers 4

    .line 234
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dismissed"

    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v2, 0x1

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p0, :cond_17

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c

    :cond_17
    const-string p0, "opened"

    .line 241
    invoke-virtual {v0, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1c
    return-object v0
.end method

.method static processFromContext(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 54
    invoke-static {p1}, Lcom/onesignal/NotificationOpenedProcessor;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 57
    :cond_7
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 59
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    invoke-static {p0, p1}, Lcom/onesignal/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string v0, "androidNotificationId"

    const-string v1, "Error closing transaction! "

    const-string v2, "onesignalData"

    const-string v3, "summary"

    .line 79
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dismissed"

    const/4 v5, 0x0

    .line 81
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_4b

    .line 87
    :try_start_16
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_44

    .line 89
    :try_start_1f
    invoke-static {p0, v7}, Lcom/onesignal/NotificationOpenedProcessor;->handleIAMPreviewOpen(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_26

    return-void

    .line 92
    :cond_26
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_42

    goto :goto_4d

    :catchall_42
    move-exception v0

    goto :goto_46

    :catchall_44
    move-exception v0

    move-object v7, v6

    .line 96
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v6

    goto :goto_4d

    :cond_4b
    move-object v0, v6

    move-object v7, v0

    .line 100
    :goto_4d
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    .line 104
    :try_start_51
    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 105
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez v4, :cond_5f

    if-eqz v3, :cond_5f

    .line 109
    invoke-static {v0, v3, v6}, Lcom/onesignal/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    :cond_5f
    invoke-static {p0, p1, v6, v4}, Lcom/onesignal/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;Landroid/database/sqlite/SQLiteDatabase;Z)V

    if-nez v3, :cond_6f

    const-string v2, "grp"

    .line 115
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 117
    invoke-static {p0, v6, v2, v4}, Lcom/onesignal/NotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V

    .line 119
    :cond_6f
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_72} :catch_7a
    .catchall {:try_start_51 .. :try_end_72} :catchall_78

    if-eqz v6, :cond_8e

    .line 125
    :try_start_74
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_88

    goto :goto_8e

    :catchall_78
    move-exception p0

    goto :goto_9e

    :catch_7a
    move-exception v2

    .line 121
    :try_start_7b
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v8, "Error processing notification open or dismiss record! "

    invoke-static {v3, v8, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_78

    if-eqz v6, :cond_8e

    .line 125
    :try_start_84
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8e

    :catchall_88
    move-exception v2

    .line 127
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v3, v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    if-nez v4, :cond_9d

    const-string v1, "from_alert"

    .line 134
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v7}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {p0, v0, p1, v1}, Lcom/onesignal/OneSignal;->handleNotificationOpen(Landroid/content/Context;Lorg/json/JSONArray;ZLjava/lang/String;)V

    :cond_9d
    return-void

    :goto_9e
    if-eqz v6, :cond_aa

    .line 125
    :try_start_a0
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_aa

    :catchall_a4
    move-exception p1

    .line 127
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :cond_aa
    :goto_aa
    throw p0
.end method
