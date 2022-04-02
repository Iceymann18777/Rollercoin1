.class Lcom/onesignal/outcomes/OSOutcomeEventsCache;
.super Ljava/lang/Object;
.source "OSOutcomeEventsCache.java"


# instance fields
.field private dbHelper:Lcom/onesignal/OneSignalDb;

.field private logger:Lcom/onesignal/OSLogger;

.field private preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    .line 41
    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    .line 42
    iput-object p3, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method

.method private addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lcom/onesignal/influence/model/OSInfluenceChannel;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1d

    const/4 v0, 0x0

    .line 259
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 261
    :try_start_9
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    invoke-direct {v2, v1, p3}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;-><init>(Ljava/lang/String;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v1

    .line 264
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1d
    return-void
.end method

.method private addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;",
            ">;",
            "Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_14

    .line 272
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 273
    invoke-virtual {p2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object p2

    .line 275
    sget-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, v0, v1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    .line 276
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-direct {p0, p1, p2, v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/model/OSInfluenceChannel;)V

    :cond_14
    return-void
.end method


# virtual methods
.method declared-synchronized deleteOldOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 9

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    invoke-interface {v0}, Lcom/onesignal/OneSignalDb;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_58

    .line 75
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "outcome"

    const-string v2, "timestamp = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_22} :catch_33
    .catchall {:try_start_7 .. :try_end_22} :catchall_31

    if-eqz v0, :cond_47

    .line 84
    :try_start_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    goto :goto_47

    :catch_28
    move-exception p1

    .line 86
    :try_start_29
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    :goto_2d
    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_58

    goto :goto_47

    :catchall_31
    move-exception p1

    goto :goto_49

    :catch_33
    move-exception p1

    .line 80
    :try_start_34
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Error deleting old outcome event records! "

    invoke-interface {v1, v2, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_31

    if-eqz v0, :cond_47

    .line 84
    :try_start_3d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_58

    goto :goto_47

    :catch_41
    move-exception p1

    .line 86
    :try_start_42
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_58

    goto :goto_2d

    .line 90
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    :goto_49
    if-eqz v0, :cond_57

    .line 84
    :try_start_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_58

    goto :goto_57

    :catch_4f
    move-exception v0

    .line 86
    :try_start_50
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Error closing transaction! "

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_57
    :goto_57
    throw p1
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method

.method declared-synchronized getAllEventsToSend()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/model/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_119

    const/4 v1, 0x0

    .line 173
    :try_start_7
    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    invoke-interface {v2}, Lcom/onesignal/OneSignalDb;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "outcome"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 174
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_10c

    .line 184
    :try_start_19
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_fc

    :cond_1f
    const-string v3, "notification_influence_type"

    .line 187
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v3

    const-string v4, "iam_influence_type"

    .line 189
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v4}, Lcom/onesignal/influence/model/OSInfluenceType;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v4

    const-string v5, "notification_ids"

    .line 193
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_48

    goto :goto_4a

    :cond_48
    const-string v5, "[]"

    :goto_4a
    const-string v6, "iam_ids"

    .line 195
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    goto :goto_59

    :cond_57
    const-string v6, "[]"

    :goto_59
    const-string v7, "name"

    .line 199
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v7, "weight"

    .line 200
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    const-string v7, "timestamp"

    .line 201
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_77
    .catchall {:try_start_19 .. :try_end_77} :catchall_109

    .line 204
    :try_start_77
    new-instance v7, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v7}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    .line 205
    new-instance v8, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-direct {v8}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;-><init>()V

    .line 208
    sget-object v10, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v3

    aget v3, v10, v3

    const/4 v10, 0x2

    const/4 v14, 0x1

    if-eq v3, v14, :cond_9f

    if-eq v3, v10, :cond_91

    move-object v3, v1

    goto :goto_ac

    .line 214
    :cond_91
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 215
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v3, v1, v8}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_ac

    .line 210
    :cond_9f
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 211
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v3, v7, v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 225
    :goto_ac
    sget-object v5, Lcom/onesignal/outcomes/OSOutcomeEventsCache$1;->$SwitchMap$com$onesignal$influence$model$OSInfluenceType:[I

    invoke-virtual {v4}, Lcom/onesignal/influence/model/OSInfluenceType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v14, :cond_cf

    if-eq v4, v10, :cond_ba

    :goto_b8
    move-object v10, v3

    goto :goto_e4

    .line 231
    :cond_ba
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-nez v3, :cond_ca

    .line 232
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v3, v1, v8}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_b8

    :cond_ca
    invoke-virtual {v3, v8}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setIndirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v3

    goto :goto_b8

    .line 227
    :cond_cf
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-nez v3, :cond_df

    .line 228
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeSource;

    invoke-direct {v3, v7, v1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    goto :goto_b8

    :cond_df
    invoke-virtual {v3, v7}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->setDirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v3

    goto :goto_b8

    .line 242
    :goto_e4
    new-instance v3, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/model/OSOutcomeSource;FJ)V

    .line 243
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ed
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_ed} :catch_ee
    .catchall {:try_start_77 .. :try_end_ed} :catchall_109

    goto :goto_f6

    :catch_ee
    move-exception v3

    .line 245
    :try_start_ef
    iget-object v4, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v5, "Generating JSONArray from notifications ids outcome:JSON Failed."

    invoke-interface {v4, v5, v3}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :goto_f6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_fa
    .catchall {:try_start_ef .. :try_end_fa} :catchall_109

    if-nez v3, :cond_1f

    :cond_fc
    if-eqz v2, :cond_107

    .line 250
    :try_start_fe
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_107

    .line 251
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_107
    .catchall {:try_start_fe .. :try_end_107} :catchall_119

    .line 254
    :cond_107
    monitor-exit p0

    return-object v0

    :catchall_109
    move-exception v0

    move-object v1, v2

    goto :goto_10d

    :catchall_10c
    move-exception v0

    :goto_10d
    if-eqz v1, :cond_118

    .line 250
    :try_start_10f
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_118

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_118
    throw v0
    :try_end_119
    .catchall {:try_start_10f .. :try_end_119} :catchall_119

    :catchall_119
    move-exception v0

    monitor-exit p0

    goto :goto_11d

    :goto_11c
    throw v0

    :goto_11d
    goto :goto_11c
.end method

.method declared-synchronized getNotCachedUniqueInfluencesForOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/model/OSInfluence;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 325
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    iget-object v0, v1, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    invoke-interface {v0}, Lcom/onesignal/OneSignalDb;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_be

    const/4 v3, 0x0

    .line 330
    :try_start_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/onesignal/influence/model/OSInfluence;

    .line 331
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 332
    invoke-virtual {v13}, Lcom/onesignal/influence/model/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v15
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_29} :catch_a3
    .catchall {:try_start_f .. :try_end_29} :catchall_a1

    if-nez v15, :cond_2c

    goto :goto_13

    :cond_2c
    const/4 v11, 0x0

    move-object/from16 v16, v3

    const/4 v10, 0x0

    .line 337
    :goto_30
    :try_start_30
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_7a

    .line 338
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 339
    invoke-virtual {v13}, Lcom/onesignal/influence/model/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "channel_influence_id = ? AND channel_type = ? AND name = ?"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    aput-object v9, v7, v11

    .line 347
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const/4 v3, 0x2

    aput-object p1, v7, v3

    const-string v4, "cached_unique_outcome"

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "1"

    move-object v3, v0

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v18

    const/16 v18, 0x0

    move-object/from16 v11, v19

    .line 349
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 361
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_76

    move-object/from16 v3, v20

    .line 362
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_76
    add-int/lit8 v10, v17, 0x1

    const/4 v11, 0x0

    goto :goto_30

    .line 365
    :cond_7a
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8a

    .line 366
    invoke-virtual {v13}, Lcom/onesignal/influence/model/OSInfluence;->copy()Lcom/onesignal/influence/model/OSInfluence;

    move-result-object v3

    .line 367
    invoke-virtual {v3, v14}, Lcom/onesignal/influence/model/OSInfluence;->setIds(Lorg/json/JSONArray;)V

    .line 368
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_8a} :catch_91
    .catchall {:try_start_30 .. :try_end_8a} :catchall_8d

    :cond_8a
    move-object/from16 v3, v16

    goto :goto_13

    :catchall_8d
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_b2

    :catch_91
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_a4

    :cond_95
    if-eqz v3, :cond_b0

    .line 374
    :try_start_97
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 375
    :goto_9d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_be

    goto :goto_b0

    :catchall_a1
    move-exception v0

    goto :goto_b2

    :catch_a3
    move-exception v0

    .line 372
    :goto_a4
    :try_start_a4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a1

    if-eqz v3, :cond_b0

    .line 374
    :try_start_a9
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_be

    if-nez v0, :cond_b0

    goto :goto_9d

    .line 378
    :cond_b0
    :goto_b0
    monitor-exit p0

    return-object v2

    :goto_b2
    if-eqz v3, :cond_bd

    .line 374
    :try_start_b4
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 375
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_bd
    throw v0
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_be

    :catchall_be
    move-exception v0

    monitor-exit p0

    goto :goto_c2

    :goto_c1
    throw v0

    :goto_c2
    goto :goto_c1
.end method

.method getUnattributedUniqueOutcomeEventsSentByChannel()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 54
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    const/4 v3, 0x0

    .line 53
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isOutcomesV2ServiceEnabled()Z
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 47
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 48
    invoke-interface {v2}, Lcom/onesignal/OSSharedPreferences;->getOutcomesV2KeyName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method declared-synchronized saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 10

    monitor-enter p0

    .line 99
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 100
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 101
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 102
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 104
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 105
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 108
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3d

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3d

    .line 111
    sget-object v2, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 112
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 115
    :cond_3d
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_57

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_57

    .line 116
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 117
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 121
    :cond_57
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    if-eqz v5, :cond_98

    .line 122
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7e

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_7e

    .line 125
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 126
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 129
    :cond_7e
    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_98

    invoke-virtual {v5}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_98

    .line 130
    sget-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 131
    invoke-virtual {v4}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v1

    .line 136
    :cond_98
    iget-object v4, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    invoke-interface {v4}, Lcom/onesignal/OneSignalDb;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_116

    .line 139
    :try_start_a1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "notification_ids"

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_ids"

    .line 142
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_influence_type"

    .line 144
    invoke-virtual {v2}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_influence_type"

    .line 145
    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    .line 147
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weight"

    .line 148
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getWeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "timestamp"

    .line 149
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "outcome"

    const/4 v0, 0x0

    .line 151
    invoke-virtual {v4, p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 152
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fa
    .catchall {:try_start_a1 .. :try_end_fa} :catchall_108

    .line 155
    :try_start_fa
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_fd
    .catch Landroid/database/SQLException; {:try_start_fa .. :try_end_fd} :catch_fe
    .catchall {:try_start_fa .. :try_end_fd} :catchall_116

    goto :goto_106

    :catch_fe
    move-exception p1

    .line 157
    :try_start_ff
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_116

    .line 160
    :goto_106
    monitor-exit p0

    return-void

    :catchall_108
    move-exception p1

    .line 155
    :try_start_109
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10c
    .catch Landroid/database/SQLException; {:try_start_109 .. :try_end_10c} :catch_10d
    .catchall {:try_start_109 .. :try_end_10c} :catchall_116

    goto :goto_115

    :catch_10d
    move-exception v0

    .line 157
    :try_start_10e
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Error closing transaction! "

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :goto_115
    throw p1
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_116

    :catchall_116
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method saveUnattributedUniqueOutcomeEventsSentByChannel(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 61
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    .line 60
    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/OSSharedPreferences;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method declared-synchronized saveUniqueOutcomeEventParams(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V
    .registers 8

    monitor-enter p0

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal saveUniqueOutcomeEventParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_a1

    if-nez v0, :cond_23

    .line 287
    monitor-exit p0

    return-void

    .line 289
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object v2

    .line 293
    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/model/OSOutcomeSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/outcomes/model/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    move-result-object p1

    .line 295
    invoke-direct {p0, v1, v2}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 296
    invoke-direct {p0, v1, p1}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V

    .line 298
    iget-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    invoke-interface {p1}, Lcom/onesignal/OneSignalDb;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_a1

    .line 301
    :try_start_4b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;

    .line 302
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "channel_influence_id"

    .line 304
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getInfluenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "channel_type"

    .line 305
    invoke-virtual {v2}, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->getChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 306
    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cached_unique_outcome"

    const/4 v4, 0x0

    .line 308
    invoke-virtual {p1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_4f

    .line 310
    :cond_82
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_93

    .line 313
    :try_start_85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_88
    .catch Landroid/database/SQLException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_a1

    goto :goto_91

    :catch_89
    move-exception p1

    .line 315
    :try_start_8a
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Error closing transaction! "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_a1

    .line 318
    :goto_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception v0

    .line 313
    :try_start_94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_97
    .catch Landroid/database/SQLException; {:try_start_94 .. :try_end_97} :catch_98
    .catchall {:try_start_94 .. :try_end_97} :catchall_a1

    goto :goto_a0

    :catch_98
    move-exception p1

    .line 315
    :try_start_99
    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Error closing transaction! "

    invoke-interface {v1, v2, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :goto_a0
    throw v0
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    monitor-exit p0

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method
