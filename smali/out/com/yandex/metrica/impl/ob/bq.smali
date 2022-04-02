.class public Lcom/yandex/metrica/impl/ob/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bq$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/impl/ob/bq$a;

.field private volatile e:Z

.field private final f:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V
    .registers 4

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/bx;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/bo;)V

    invoke-direct {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bv;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bv;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->c:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/yandex/metrica/impl/ob/bq$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/yandex/metrica/impl/ob/bq$a;-><init>(Lcom/yandex/metrica/impl/ob/bq;B)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    .line 58
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bq$a;->start()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bq;Ljava/util/Map;)V
    .registers 10

    .line 1145
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 1147
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1149
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1151
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "key"

    .line 1153
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "value"

    if-ne v2, p0, :cond_38

    .line 1155
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_8b

    .line 1156
    :cond_38
    instance-of v6, v2, Ljava/lang/String;

    const-string v7, "type"

    if-eqz v6, :cond_4c

    .line 1157
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    .line 1159
    :cond_4c
    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_5e

    .line 1160
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x3

    .line 1161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    .line 1162
    :cond_5e
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_70

    .line 1163
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    .line 1164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    .line 1165
    :cond_70
    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_89

    .line 1166
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8b

    :cond_89
    if-nez v2, :cond_8f

    .line 1171
    :goto_8b
    aput-object v3, v0, v1

    add-int/2addr v1, v4

    goto :goto_f

    .line 1169
    :cond_8f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1173
    :cond_95
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bq;->a([Landroid/content/ContentValues;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bq;->c()V

    .line 283
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    .line 285
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    monitor-enter v1

    .line 286
    :try_start_f
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw p1

    :catchall_1e
    move-exception p1

    .line 284
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private a([Landroid/content/ContentValues;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 183
    :try_start_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/bv;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_57
    .catchall {:try_start_4 .. :try_end_a} :catchall_4d

    .line 184
    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_3c

    aget-object v5, p1, v4

    const-string v6, "value"

    .line 186
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_31

    const-string v6, "key"

    .line 187
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v3

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_39

    .line 191
    :cond_31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 195
    :cond_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3f} :catch_4b
    .catchall {:try_start_a .. :try_end_3f} :catchall_48

    .line 199
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {p1, v1}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_48
    move-exception p1

    move-object v0, v1

    goto :goto_4e

    :catch_4b
    move-object v0, v1

    goto :goto_57

    :catchall_4d
    move-exception p1

    .line 199
    :goto_4e
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    .line 199
    :catch_57
    :goto_57
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bq;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/bq;->e:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    monitor-enter v0

    .line 293
    :try_start_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bq;->c()V

    .line 294
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_e
    move-exception p1

    .line 295
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bq;)V
    .registers 14

    const-string v0, "type"

    const-string v1, "value"

    const-string v2, "key"

    const/4 v3, 0x0

    .line 1097
    :try_start_7
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {v4}, Lcom/yandex/metrica/impl/ob/bv;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_93
    .catchall {:try_start_7 .. :try_end_d} :catchall_88

    .line 1098
    :try_start_d
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq;->a()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_94
    .catchall {:try_start_d .. :try_end_1f} :catchall_86

    .line 1101
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1102
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1103
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1104
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5b

    const/4 v9, 0x2

    if-eq v8, v9, :cond_56

    const/4 v9, 0x3

    if-eq v8, v9, :cond_51

    const/4 v9, 0x4

    if-eq v8, v9, :cond_70

    :cond_4f
    move-object v7, v3

    goto :goto_70

    .line 1115
    :cond_51
    invoke-static {v7}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    goto :goto_70

    .line 1112
    :cond_56
    invoke-static {v7}, Lcom/yandex/metrica/impl/utils/i;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_70

    :cond_5b
    const-string v8, "true"

    .line 1109
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_70

    :cond_66
    const-string v8, "false"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_70
    :goto_70
    if-eqz v7, :cond_1f

    .line 1122
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_77} :catch_84
    .catchall {:try_start_1f .. :try_end_77} :catchall_81

    goto :goto_1f

    .line 1129
    :cond_78
    invoke-static {v5}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 1130
    :goto_7b
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {p0, v4}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_81
    move-exception v0

    move-object v3, v5

    goto :goto_8a

    :catch_84
    move-object v3, v5

    goto :goto_94

    :catchall_86
    move-exception v0

    goto :goto_8a

    :catchall_88
    move-exception v0

    move-object v4, v3

    .line 1129
    :goto_8a
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 1130
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bq;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-interface {p0, v4}, Lcom/yandex/metrica/impl/ob/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catch_93
    move-object v4, v3

    .line 1129
    :catch_94
    :goto_94
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_7b
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/bq;)Ljava/util/Map;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/bq;->e:Z

    if-nez v0, :cond_9

    .line 301
    :try_start_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 4

    .line 216
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 217
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 218
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .registers 5

    .line 227
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 228
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_f

    .line 229
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bq;
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    monitor-enter v0

    .line 250
    :try_start_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bq;->c()V

    .line 251
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    .line 253
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    monitor-enter v1

    .line 254
    :try_start_f
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1

    return-object p0

    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw p1

    :catchall_1e
    move-exception p1

    .line 252
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 205
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 207
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    .line 238
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bq;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 239
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 240
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/bq;
    .registers 3

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 272
    monitor-exit p0

    return-object p0

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/bq;
    .registers 4

    .line 266
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bq;
    .registers 3

    monitor-enter p0

    .line 261
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 262
    monitor-exit p0

    return-object p0

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/bq;
    .registers 3

    .line 276
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bq;->d:Lcom/yandex/metrica/impl/ob/bq$a;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
