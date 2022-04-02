.class public Lcom/yandex/metrica/impl/ob/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bv;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/bx;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bo;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    .line 39
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/br;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_74
    .catchall {:try_start_1 .. :try_end_7} :catchall_67

    .line 47
    :try_start_7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/br;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_65
    .catchall {:try_start_7 .. :try_end_14} :catchall_60

    if-eqz v2, :cond_57

    .line 48
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :cond_21
    new-instance v4, Lcom/yandex/metrica/impl/ob/cw;

    const-string v5, "name"

    .line 52
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    .line 53
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_3f

    const/4 v6, 0x1

    goto :goto_40

    :cond_3f
    const/4 v6, 0x0

    :goto_40
    invoke-direct {v4, v5, v6}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Ljava/lang/String;Z)V

    .line 51
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4a} :catch_57
    .catchall {:try_start_16 .. :try_end_4a} :catchall_55

    if-nez v4, :cond_21

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    return-object v3

    :catchall_55
    move-exception v0

    goto :goto_6b

    .line 64
    :catch_57
    :cond_57
    :goto_57
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v3, v1}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    return-object v0

    :catchall_60
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_6b

    :catch_65
    move-object v2, v0

    goto :goto_57

    :catchall_67
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 64
    :goto_6b
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v3, v1}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw v0

    :catch_74
    move-object v1, v0

    move-object v2, v1

    goto :goto_57
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/bv;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "delete from permissions"

    .line 73
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/cw;

    .line 75
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    .line 78
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cw;->b()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "granted"

    .line 82
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cw;->a()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "permissions"

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_12

    .line 86
    :cond_45
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_48} :catch_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_51

    .line 89
    :catch_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_51
    move-exception p1

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/br;->a:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method
