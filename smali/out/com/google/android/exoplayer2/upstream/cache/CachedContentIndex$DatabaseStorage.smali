.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseStorage"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private hexUid:Ljava/lang/String;

.field private final pendingUpdates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "id"

    const-string v1, "key"

    const-string v2, "metadata"

    .line 741
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 2

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 764
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    return-void
.end method

.method private addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 919
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 920
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 922
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 923
    iget v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    iget-object p2, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "metadata"

    .line 925
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 926
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 932
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-interface {p0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 934
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_b} :catch_1e

    const/4 v1, 0x1

    .line 936
    :try_start_c
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/database/VersionTable;->removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 938
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 941
    :try_start_15
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 942
    throw p1
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 944
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 6

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "id = ?"

    invoke-virtual {p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .registers 10

    .line 893
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 894
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 895
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayerCacheIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Lcom/google/android/exoplayer2/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    return-void
.end method

.method public exists()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 776
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    const/4 v2, 0x1

    .line 775
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public initialize(J)V
    .registers 3

    .line 769
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 770
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 793
    :try_start_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 795
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 794
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_36

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_27} :catch_81

    .line 802
    :try_start_27
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 803
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_31

    .line 805
    :try_start_2d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_36

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 806
    throw v1

    .line 809
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_3a} :catch_81

    .line 810
    :goto_3a
    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 811
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 812
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 813
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 815
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 816
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 817
    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v5

    .line 819
    new-instance v6, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    .line 820
    iget-object v3, v6, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget v3, v6, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v4, v6, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_3a .. :try_end_6c} :catchall_73

    goto :goto_3a

    :cond_6d
    if-eqz v0, :cond_72

    .line 823
    :try_start_6f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_72} :catch_81

    :cond_72
    return-void

    :catchall_73
    move-exception v1

    .line 809
    :try_start_74
    throw v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v2

    if-eqz v0, :cond_80

    .line 823
    :try_start_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v0

    :try_start_7d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v2
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_81} :catch_81

    :catch_81
    move-exception v0

    .line 825
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 826
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 827
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_8f

    :goto_8e
    throw p1

    :goto_8f
    goto :goto_8e
.end method

.method public onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V
    .registers 4

    if-eqz p2, :cond_a

    .line 886
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_12

    .line 888
    :cond_a
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_12
    return-void
.end method

.method public onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 4

    .line 880
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_35

    .line 837
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 838
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 839
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    goto :goto_14

    .line 841
    :cond_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 842
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_30

    .line 844
    :try_start_2c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_30
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 845
    throw p1
    :try_end_35
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_35} :catch_35

    :catch_35
    move-exception p1

    .line 847
    new-instance v0, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 857
    :cond_9
    :try_start_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 858
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_12} :catch_46

    const/4 v0, 0x0

    .line 860
    :goto_13
    :try_start_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 861
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    if-nez v1, :cond_2f

    .line 863
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_32

    .line 865
    :cond_2f
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 868
    :cond_35
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_41

    .line 871
    :try_start_3d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_41
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 872
    throw v0
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    move-exception p1

    .line 874
    new-instance v0, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method
