.class public final Lcom/google/android/exoplayer2/database/VersionTable;
.super Ljava/lang/Object;
.source "VersionTable.java"


# direct methods
.method private static featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "ExoPlayerVersions"

    .line 136
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v3, "ExoPlayerVersions"

    const-string v0, "version"

    .line 139
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature = ? AND instance_uid = ?"

    .line 144
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 140
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_20} :catch_48

    .line 148
    :try_start_20
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_3a

    if-nez p1, :cond_2c

    if-eqz p0, :cond_2b

    .line 153
    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_2b} :catch_48

    :cond_2b
    return v1

    .line 151
    :cond_2c
    :try_start_2c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p1, 0x0

    .line 152
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3a

    if-eqz p0, :cond_39

    .line 153
    :try_start_36
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_39} :catch_48

    :cond_39
    return p1

    :catchall_3a
    move-exception p1

    .line 139
    :try_start_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p2

    if-eqz p0, :cond_47

    .line 153
    :try_start_3f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw p2
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    .line 155
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    const-string v0, "ExoPlayerVersions"

    .line 111
    :try_start_2
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string v1, "feature = ? AND instance_uid = ?"

    .line 117
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 119
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public static setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    .line 88
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feature"

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "instance_uid"

    .line 91
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "ExoPlayerVersions"

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 95
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method static tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "sqlite_master"

    const-string v3, "tbl_name = ?"

    .line 162
    invoke-static {p0, p1, v3, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-lez v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method
