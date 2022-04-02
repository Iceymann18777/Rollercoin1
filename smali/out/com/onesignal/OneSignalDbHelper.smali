.class Lcom/onesignal/OneSignalDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OneSignalDbHelper.java"

# interfaces
.implements Lcom/onesignal/OneSignalDb;


# static fields
.field protected static final SQL_INDEX_ENTRIES:[Ljava/lang/String;

.field private static outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

.field private static sInstance:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "CREATE INDEX notification_notification_id_idx ON notification(notification_id); "

    const-string v1, "CREATE INDEX notification_android_notification_id_idx ON notification(android_notification_id); "

    const-string v2, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    const-string v3, "CREATE INDEX notification_collapse_id_idx ON notification(collapse_id); "

    const-string v4, "CREATE INDEX notification_created_time_idx ON notification(created_time); "

    const-string v5, "CREATE INDEX notification_expire_time_idx ON notification(expire_time); "

    .line 92
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->SQL_INDEX_ENTRIES:[Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-direct {v0}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 116
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->getDbVersion()I

    move-result v0

    const-string v1, "OneSignal.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static getDbVersion()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    .registers 3

    const-class v0, Lcom/onesignal/OneSignalDbHelper;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    if-nez v1, :cond_12

    .line 122
    new-instance v1, Lcom/onesignal/OneSignalDbHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignalDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;

    .line 123
    :cond_12
    sget-object p0, Lcom/onesignal/OneSignalDbHelper;->sInstance:Lcom/onesignal/OneSignalDbHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_a

    .line 194
    :try_start_4
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_a

    :catchall_8
    move-exception p1

    goto :goto_2f

    :cond_a
    :goto_a
    const/4 v0, 0x3

    if-ge p2, v0, :cond_10

    .line 197
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/4 v0, 0x4

    if-ge p2, v0, :cond_16

    .line 200
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_16
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1c

    .line 203
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c
    if-ne p2, v0, :cond_21

    .line 207
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_21
    const/4 v0, 0x7

    if-ge p2, v0, :cond_27

    .line 210
    invoke-static {p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_27
    const/16 v0, 0x8

    if-ge p2, v0, :cond_31

    .line 213
    invoke-direct {p0, p1}, Lcom/onesignal/OneSignalDbHelper;->upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_8

    goto :goto_31

    :goto_2f
    monitor-exit p0

    throw p1

    .line 214
    :cond_31
    :goto_31
    monitor-exit p0

    return-void
.end method

.method static recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;
    .registers 7

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x93a80

    sub-long v2, v0, v2

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created_time > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dismissed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "opened"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_summary"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v3, "OS_RESTORE_TTL_FILTER"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/onesignal/OneSignalPrefs;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND expire_time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    return-object v4
.end method

.method private static safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 2

    .line 271
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 273
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private static upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 257
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p0}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE notification ADD COLUMN collapse_id TEXT;"

    .line 218
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX notification_group_id_idx ON notification(group_id); "

    .line 222
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE notification ADD COLUMN expire_time TIMESTAMP;"

    .line 228
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "UPDATE notification SET expire_time = created_time + 259200;"

    .line 233
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX notification_expire_time_idx ON notification(expire_time); "

    .line 239
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_ids TEXT,name TEXT,session TEXT,params TEXT,timestamp TIMESTAMP);"

    .line 243
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "CREATE TABLE cached_unique_outcome_notification (_id INTEGER PRIMARY KEY,notification_id TEXT,name TEXT);"

    .line 248
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 250
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->upgradeFromV5ToV6(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "CREATE TABLE in_app_message (_id INTEGER PRIMARY KEY,display_quantity INTEGER,last_display INTEGER,message_id TEXT,displayed_in_session INTEGER,click_ids TEXT);"

    .line 261
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalDbHelper;->safeExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    monitor-enter p0

    .line 265
    :try_start_1
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeOutcomeTableRevision2To3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->outcomeTableProvider:Lcom/onesignal/outcomes/OSOutcomeTableProvider;

    invoke-virtual {v0, p1}, Lcom/onesignal/outcomes/OSOutcomeTableProvider;->upgradeCacheOutcomeTableRevision1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 267
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 160
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_6} :catch_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_6} :catch_a
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    goto :goto_1a

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_c
    move-exception v1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-ge v0, v2, :cond_19

    mul-int/lit16 v1, v0, 0x190

    int-to-long v1, v1

    .line 164
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 163
    :cond_19
    throw v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_8

    :goto_1a
    monitor-exit p0

    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "CREATE TABLE notification (_id INTEGER PRIMARY KEY,notification_id TEXT,android_notification_id INTEGER,group_id TEXT,collapse_id TEXT,is_summary INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,dismissed INTEGER DEFAULT 0,title TEXT,message TEXT,full_data TEXT,created_time TIMESTAMP DEFAULT (strftime(\'%s\', \'now\')),expire_time TIMESTAMP);"

    .line 171
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE outcome (_id INTEGER PRIMARY KEY,notification_influence_type TEXT,iam_influence_type TEXT,notification_ids TEXT,iam_ids TEXT,name TEXT,timestamp TIMESTAMP,weight FLOAT);"

    .line 172
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE cached_unique_outcome (_id INTEGER PRIMARY KEY,channel_influence_id TEXT,channel_type TEXT,name TEXT);"

    .line 173
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE in_app_message (_id INTEGER PRIMARY KEY,display_quantity INTEGER,last_display INTEGER,message_id TEXT,displayed_in_session INTEGER,click_ids TEXT);"

    .line 174
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/onesignal/OneSignalDbHelper;->SQL_INDEX_ENTRIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 176
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .line 279
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "SDK version rolled back! Clearing OneSignal.db as it could be in an unexpected state."

    invoke-static {p2, p3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string p2, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 p3, 0x0

    .line 281
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 283
    :try_start_e
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    :goto_17
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 286
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 288
    :cond_26
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sqlite_"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_2a

    .line 291
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_5b

    goto :goto_2a

    .line 294
    :cond_54
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-virtual {p0, p1}, Lcom/onesignal/OneSignalDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_5b
    move-exception p1

    .line 294
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 295
    goto :goto_61

    :goto_60
    throw p1

    :goto_61
    goto :goto_60
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .line 182
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal Database onUpgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 184
    :try_start_1e
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OneSignalDbHelper;->internalOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p1

    .line 188
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "Error in upgrade, migration may have already run! Skipping!"

    invoke-static {p2, p3, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method
