.class public abstract Lcom/appnext/base/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Lcom/appnext/base/a/b/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final eh:I = -0x1

.field private static final ei:Ljava/lang/String; = " DESC"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    .line 78
    :try_start_4
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_8} :catch_13
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-wide p0

    :catchall_9
    move-exception p0

    .line 84
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v2

    :catch_13
    move-exception p0

    .line 81
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v2
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6

    const-wide/16 v0, -0x1

    .line 45
    :try_start_2
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, p0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 47
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_16} :catch_21
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    return-wide p0

    :catchall_17
    move-exception p0

    .line 53
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_21
    move-exception p0

    .line 50
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_30

    .line 283
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_30

    .line 287
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    :try_start_b
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2b

    if-lez v2, :cond_16

    const-string v3, " AND "

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_16
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v3}, Lcom/appnext/base/a/c/e$a;->au()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 301
    :catchall_2b
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 92
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_7} :catch_12
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    return-wide p0

    :catchall_8
    move-exception p0

    .line 98
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v1

    :catch_12
    move-exception p0

    .line 95
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v1
.end method

.method protected static b(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7

    const-wide/16 v0, -0x1

    .line 61
    :try_start_2
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 62
    invoke-virtual {v2, p0, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    .line 63
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_17} :catch_22
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    return-wide p0

    :catchall_18
    move-exception p0

    .line 69
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_22
    move-exception p0

    .line 66
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method private static b(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .registers 5

    .line 106
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    goto :goto_9

    :cond_1d
    return-object v0

    :catchall_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Landroid/database/Cursor;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    :goto_8
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_19

    .line 269
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/c/e;->b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;

    move-result-object v1

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8

    .line 273
    :cond_19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1c

    :catchall_1c
    return-object v0
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 220
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_13} :catch_27
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception p0

    .line 226
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-void

    :catch_27
    move-exception p0

    .line 224
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method protected static z(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DESC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    :try_start_1
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_10

    .line 205
    invoke-static {p2, p4}, Lcom/appnext/base/a/c/e;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_10
    invoke-virtual {v1, p1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 208
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1b} :catch_2f
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_41

    :catchall_1c
    move-exception p1

    .line 212
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    new-instance p3, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    goto :goto_41

    :catch_2f
    move-exception p1

    .line 210
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p3, Ljava/lang/Exception;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    :goto_41
    return v0
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONArray;)J
    .registers 9

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_3a

    const/4 v2, 0x0

    .line 146
    :try_start_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 147
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_26

    .line 150
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 151
    invoke-static {v5}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/appnext/base/a/c/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 153
    :cond_26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_36

    if-eqz v2, :cond_3a

    .line 158
    :goto_2b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V

    goto :goto_3a

    :catchall_36
    nop

    if-eqz v2, :cond_3a

    goto :goto_2b

    :cond_3a
    :goto_3a
    return-wide v0
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)J
    .registers 8

    const-wide/16 v0, -0x1

    .line 127
    :try_start_2
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 129
    invoke-static {p2}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v4, 0x5

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    .line 130
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_1b} :catch_26
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    return-wide p1

    :catchall_1c
    move-exception p1

    .line 136
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p2, p1}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_26
    move-exception p1

    .line 133
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/appnext/base/a/c/e;->at()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p5}, Lcom/appnext/base/a/c/e;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p3

    move-object v8, p4

    .line 248
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/e;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 251
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract at()[Ljava/lang/String;
.end method

.method protected final b(Ljava/lang/String;Lorg/json/JSONArray;)J
    .registers 9

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_3a

    const/4 v2, 0x0

    .line 172
    :try_start_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 173
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_26

    .line 176
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 177
    invoke-static {v5}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/appnext/base/a/c/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 179
    :cond_26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_36

    if-eqz v2, :cond_3a

    .line 184
    :goto_2b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 185
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V

    goto :goto_3a

    :catchall_36
    nop

    if-eqz v2, :cond_3a

    goto :goto_2b

    :cond_3a
    :goto_3a
    return-wide v0
.end method

.method protected abstract b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TMODE",
            "L;"
        }
    .end annotation
.end method

.method protected final delete(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method

.method protected final y(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/appnext/base/a/c/e;->at()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 233
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/e;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object p1

    :catchall_22
    const/4 p1, 0x0

    return-object p1
.end method
