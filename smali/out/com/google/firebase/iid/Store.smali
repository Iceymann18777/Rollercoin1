.class Lcom/google/firebase/iid/Store;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/Store$Token;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final store:Landroid/content/SharedPreferences;

.field private final subtypeCreationTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/Store;->subtypeCreationTimes:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/Store;->context:Landroid/content/Context;

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    const-string p1, "com.google.android.gms.appid-no-backup"

    .line 5
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Store;->checkForRestore(Ljava/lang/String;)V

    return-void
.end method

.method private checkForRestore(Ljava/lang/String;)V
    .registers 5

    const-string v0, "FirebaseInstanceId"

    .line 7
    iget-object v1, p0, Lcom/google/firebase/iid/Store;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    .line 11
    :cond_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/iid/Store;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, "App restored, clearing state"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/iid/Store;->deleteAll()V

    .line 15
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->resetStorageAndScheduleSync()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2f} :catch_30

    :cond_2f
    return-void

    :catch_30
    move-exception p1

    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "Error creating file in no backup dir: "

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    :cond_4d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method

.method static createSubtypeInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 23
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|S|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createTokenKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|T|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deletePrefix(Ljava/lang/String;)V
    .registers 6

    .line 24
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 28
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 30
    :cond_2a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getCreationTimeFromSharedPreferences(Ljava/lang/String;)J
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    const-string v1, "cre"

    .line 53
    invoke-static {p1, v1}, Lcom/google/firebase/iid/Store;->createSubtypeInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 54
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 56
    :try_start_f
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    return-wide v0

    :catch_14
    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private writeCreationTimeToSharedPreferences(Ljava/lang/String;)J
    .registers 7

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "cre"

    .line 63
    invoke-static {p1, v2}, Lcom/google/firebase/iid/Store;->createSubtypeInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 65
    iget-object v3, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 67
    invoke-static {p1, v2}, Lcom/google/firebase/iid/Store;->createSubtypeInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-wide v0

    .line 72
    :cond_27
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Store;->getCreationTimeFromSharedPreferences(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized deleteAll()V
    .registers 2

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->subtypeCreationTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 34
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTokens(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "|T|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Store;->deletePrefix(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 74
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;
    .registers 5

    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/Store;->createTokenKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/iid/Store$Token;->parse(Ljava/lang/String;)Lcom/google/firebase/iid/Store$Token;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 36
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Lcom/google/firebase/iid/Store$Token;->encode(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p4
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    if-nez p4, :cond_d

    .line 38
    monitor-exit p0

    return-void

    .line 39
    :cond_d
    :try_start_d
    iget-object p5, p0, Lcom/google/firebase/iid/Store;->store:Landroid/content/SharedPreferences;

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/Store;->createTokenKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1f

    .line 42
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCreationTime(Ljava/lang/String;)J
    .registers 6

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/Store;->writeCreationTimeToSharedPreferences(Ljava/lang/String;)J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcom/google/firebase/iid/Store;->subtypeCreationTimes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 61
    monitor-exit p0

    return-wide v0

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
