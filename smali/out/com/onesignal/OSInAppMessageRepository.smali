.class Lcom/onesignal/OSInAppMessageRepository;
.super Ljava/lang/Object;
.source "OSInAppMessageRepository.java"


# instance fields
.field private final dbHelper:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    return-void
.end method

.method private cleanInAppMessageClickedClickIds(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 219
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 220
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 226
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 227
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_21
    return-void
.end method

.method private cleanInAppMessageIds(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_39

    .line 180
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 181
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_OS_DISPLAYED_IAMS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 186
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v4, "PREFS_OS_IMPRESSIONED_IAMS"

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignalPrefs;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v0, :cond_29

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 192
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 193
    sget-object v3, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_29
    if-eqz v2, :cond_39

    .line 199
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 200
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 201
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    invoke-static {p1, v4, v2}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_39
    return-void
.end method


# virtual methods
.method declared-synchronized cleanCachedInAppMessages()V
    .registers 15

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "message_id"

    const-string v2, "click_ids"

    .line 99
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "last_display < ?"

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    const-wide/32 v4, 0xed4e00

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v10, v2

    .line 109
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v11

    .line 110
    invoke-static {}, Lcom/onesignal/OSUtils;->newConcurrentSet()Ljava/util/Set;

    move-result-object v12
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_db

    const/4 v13, 0x0

    :try_start_2f
    const-string v2, "in_app_message"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    move-object v5, v10

    .line 114
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_7f

    .line 122
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_44

    goto :goto_7f

    .line 128
    :cond_44
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_73

    :cond_4a
    const-string v1, "message_id"

    .line 131
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 130
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_ids"

    .line 134
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 133
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onesignal/OSUtils;->newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_71} :catch_95
    .catchall {:try_start_2f .. :try_end_71} :catchall_93

    if-nez v1, :cond_4a

    :cond_73
    if-eqz v13, :cond_a2

    .line 144
    :try_start_75
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 145
    :goto_7b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_db

    goto :goto_a2

    .line 123
    :cond_7f
    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Attempted to clean 6 month old IAM data, but none exists!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_86} :catch_95
    .catchall {:try_start_7f .. :try_end_86} :catchall_93

    if-eqz v13, :cond_91

    .line 144
    :try_start_88
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_91

    .line 145
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_db

    .line 124
    :cond_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception v0

    goto :goto_cf

    :catch_95
    move-exception v1

    .line 142
    :try_start_96
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_93

    if-eqz v13, :cond_a2

    .line 144
    :try_start_9b
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a2

    goto :goto_7b

    .line 148
    :cond_a2
    :goto_a2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_db

    :try_start_a5
    const-string v1, "in_app_message"

    .line 151
    invoke-virtual {v0, v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_c1

    .line 158
    :try_start_ad
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Landroid/database/SQLException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_db

    goto :goto_b9

    :catch_b1
    move-exception v0

    .line 160
    :try_start_b2
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error closing transaction! "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_b9
    invoke-direct {p0, v11}, Lcom/onesignal/OSInAppMessageRepository;->cleanInAppMessageIds(Ljava/util/Set;)V

    .line 166
    invoke-direct {p0, v12}, Lcom/onesignal/OSInAppMessageRepository;->cleanInAppMessageClickedClickIds(Ljava/util/Set;)V
    :try_end_bf
    .catchall {:try_start_b2 .. :try_end_bf} :catchall_db

    .line 167
    monitor-exit p0

    return-void

    :catchall_c1
    move-exception v1

    .line 158
    :try_start_c2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c5
    .catch Landroid/database/SQLException; {:try_start_c2 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_db

    goto :goto_ce

    :catch_c6
    move-exception v0

    .line 160
    :try_start_c7
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error closing transaction! "

    invoke-static {v2, v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    :goto_ce
    throw v1

    :goto_cf
    if-eqz v13, :cond_da

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_da

    .line 145
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_da
    throw v0
    :try_end_db
    .catchall {:try_start_c7 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    monitor-exit p0

    goto :goto_df

    :goto_de
    throw v0

    :goto_df
    goto :goto_de
.end method

.method declared-synchronized getCachedInAppMessages()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9f

    const/4 v1, 0x0

    .line 59
    :try_start_7
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {v2}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "in_app_message"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 60
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_1f
    const-string v2, "message_id"

    .line 72
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_ids"

    .line 73
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "display_quantity"

    .line 74
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "last_display"

    .line 75
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "displayed_in_session"

    .line 76
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_55

    goto :goto_56

    :cond_55
    const/4 v8, 0x0

    .line 78
    :goto_56
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/onesignal/OSUtils;->newStringSetFromJSONArray(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v3

    .line 80
    new-instance v7, Lcom/onesignal/OSInAppMessage;

    new-instance v9, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v9, v4, v5, v6}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(IJ)V

    invoke-direct {v7, v2, v3, v8, v9}, Lcom/onesignal/OSInAppMessage;-><init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/OSInAppMessageRedisplayStats;)V

    .line 81
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_70} :catch_80
    .catchall {:try_start_7 .. :try_end_70} :catchall_7e

    if-nez v2, :cond_1f

    :cond_72
    if-eqz v1, :cond_91

    .line 87
    :try_start_74
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_91

    .line 88
    :goto_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_9f

    goto :goto_91

    :catchall_7e
    move-exception v0

    goto :goto_93

    :catch_80
    move-exception v2

    .line 85
    :try_start_81
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v4, "Generating JSONArray from iam click ids:JSON Failed."

    invoke-static {v3, v4, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_7e

    if-eqz v1, :cond_91

    .line 87
    :try_start_8a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_9f

    if-nez v2, :cond_91

    goto :goto_7a

    .line 91
    :cond_91
    :goto_91
    monitor-exit p0

    return-object v0

    :goto_93
    if-eqz v1, :cond_9e

    .line 87
    :try_start_95
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_9e
    throw v0
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    monitor-exit p0

    goto :goto_a3

    :goto_a2
    throw v0

    :goto_a3
    goto :goto_a2
.end method

.method declared-synchronized saveInAppMessage(Lcom/onesignal/OSInAppMessage;)V
    .registers 8

    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageRepository;->dbHelper:Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {v0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_89

    .line 31
    :try_start_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "message_id"

    .line 32
    iget-object v3, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display_quantity"

    .line 33
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getDisplayQuantity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "last_display"

    .line 34
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getLastDisplayTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "click_ids"

    .line 35
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->getClickedClickIds()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "displayed_in_session"

    .line 36
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessage;->isDisplayedInSession()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "in_app_message"

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 38
    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6a

    const-string p1, "in_app_message"

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 43
    :cond_6a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6d
    .catchall {:try_start_a .. :try_end_6d} :catchall_7b

    .line 46
    :try_start_6d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catch Landroid/database/SQLException; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_89

    goto :goto_79

    :catch_71
    move-exception p1

    .line 48
    :try_start_72
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error closing transaction! "

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_89

    .line 51
    :goto_79
    monitor-exit p0

    return-void

    :catchall_7b
    move-exception p1

    .line 46
    :try_start_7c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7f
    .catch Landroid/database/SQLException; {:try_start_7c .. :try_end_7f} :catch_80
    .catchall {:try_start_7c .. :try_end_7f} :catchall_89

    goto :goto_88

    :catch_80
    move-exception v0

    .line 48
    :try_start_81
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Error closing transaction! "

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_88
    throw p1
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method
