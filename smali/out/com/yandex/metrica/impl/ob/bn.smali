.class public Lcom/yandex/metrica/impl/ob/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bn$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Lcom/yandex/metrica/impl/ob/bo;

.field private final e:Lcom/yandex/metrica/impl/ob/bn$a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/ContentValues;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/yandex/metrica/impl/ob/u;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/impl/ob/bo;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->g:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    .line 85
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/u;->m()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->i:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->j:Lcom/yandex/metrica/impl/ob/u;

    .line 88
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 90
    new-instance p2, Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/ob/bn$a;-><init>(Lcom/yandex/metrica/impl/ob/bn;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseWorker ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/u;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/bn$a;->setName(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bn$a;->start()V

    .line 94
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)J
    .registers 3

    .line 142
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 143
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_15

    .line 148
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    return-wide v0

    :cond_f
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_15
    move-exception v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reports"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 342
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_22

    const-string v1, " AND "

    goto :goto_24

    :cond_22
    const-string v1, ""

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 550
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p0, 0x0

    return-object p0

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5

    const-string v0, "type"

    .line 4565
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 4566
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, -0x1

    .line 466
    :goto_e
    invoke-static {v1}, Lcom/yandex/metrica/impl/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ": "

    .line 468
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "name"

    .line 4570
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "value"

    .line 4574
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4588
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 471
    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->c(I)Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    const-string p1, " with value "

    .line 472
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_49
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/u;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;Landroid/content/ContentValues;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 5421
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5423
    :try_start_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sessions"

    const/4 v2, 0x0

    .line 5424
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1a

    .line 5429
    :catch_14
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;Ljava/util/List;)V
    .registers 9

    if-eqz p1, :cond_69

    .line 5434
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_69

    .line 5439
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 5441
    :try_start_f
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_65
    .catchall {:try_start_f .. :try_end_15} :catchall_5b

    .line 5443
    :try_start_15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_27

    .line 5444
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->c()V

    .line 5447
    :cond_27
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "reports"

    .line 5450
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v3, "Event saved to db"

    .line 5451
    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/bn;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_2e

    .line 5454
    :cond_45
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5455
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4d} :catch_59
    .catchall {:try_start_15 .. :try_end_4d} :catchall_56

    .line 5460
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5461
    :goto_50
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_56
    move-exception p1

    move-object v0, v1

    goto :goto_5c

    :catch_59
    move-object v0, v1

    goto :goto_65

    :catchall_5b
    move-exception p1

    .line 5460
    :goto_5c
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5461
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 5460
    :catch_65
    :goto_65
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_50

    :cond_69
    :goto_69
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 480
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 481
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-direct {p0, v1, p2}, Lcom/yandex/metrica/impl/ob/bn;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bn;)Z
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bn;->d()Z

    move-result p0

    return p0
.end method

.method private static a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 561
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private b()J
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT count() FROM reports"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Landroid/database/Cursor;)J

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_23
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 163
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bn;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->h:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/bn;)Ljava/lang/Object;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Ljava/lang/Object;

    return-object p0
.end method

.method private static b(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 579
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 578
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/bi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/bn;)Ljava/util/List;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->g:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .registers 7

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 246
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    .line 253
    :catch_2a
    :cond_2a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/bn;)Landroid/content/ContentValues;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/bn;->h:Landroid/content/ContentValues;

    return-object p0
.end method

.method private d()Z
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->h:Landroid/content/ContentValues;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    .line 672
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 10

    const-string v0, "reports"

    const/4 v1, 0x0

    .line 261
    :try_start_3
    sget-object v2, Lcom/yandex/metrica/impl/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 263
    sget-object v3, Lcom/yandex/metrica/impl/p;->a:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/impl/p$a;

    add-int/lit8 v6, v4, 0x1

    .line 264
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move v4, v6

    goto :goto_12

    .line 3029
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 267
    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xe

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v5, "%1$s NOT IN (%2$s) AND (%3$s IN (SELECT %3$s FROM %4$s ORDER BY %5$s, %6$s LIMIT (SELECT count() FROM %4$s) / %7$s ) OR %5$s < %8$s )"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "type"

    aput-object v7, v6, v1

    const-string v7, ","

    .line 269
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-string v7, "id"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    aput-object v0, v6, v2

    const/4 v2, 0x4

    const-string v7, "session_id"

    aput-object v7, v6, v2

    const/4 v2, 0x5

    const-string v7, "number"

    aput-object v7, v6, v2

    const/4 v2, 0x6

    const/16 v7, 0xa

    .line 272
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    .line 268
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 274
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_7b

    goto :goto_89

    :catchall_7b
    move-exception p1

    .line 277
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->i:Landroid/content/Context;

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {v0, v2}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    const-string v2, "deleteExcessiveReports exception"

    .line 278
    invoke-interface {v0, v2, p1}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_89
    return v1
.end method

.method public a([J)I
    .registers 9

    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 191
    :try_start_6
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2212
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_a9
    .catchall {:try_start_6 .. :try_end_13} :catchall_a2

    const/4 v1, 0x0

    .line 2214
    :try_start_14
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, " SELECT DISTINCT id From sessions order by id asc "

    new-array v4, v0, [Ljava/lang/String;

    .line 2215
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_83
    .catchall {:try_start_14 .. :try_end_22} :catchall_75

    .line 2216
    :try_start_22
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "All sessions in db: "

    .line 2217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2218
    :goto_2c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_72
    .catchall {:try_start_22 .. :try_end_30} :catchall_6e

    const-string v6, ", "

    if-eqz v5, :cond_3f

    .line 2219
    :try_start_34
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    :cond_3f
    const-string v4, " SELECT DISTINCT session_id From reports order by session_id asc "

    new-array v5, v0, [Ljava/lang/String;

    .line 2223
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2224
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "All sessions in reports db: "

    .line 2225
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2226
    :goto_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2227
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_61} :catch_72
    .catchall {:try_start_34 .. :try_end_61} :catchall_6e

    goto :goto_51

    .line 2233
    :cond_62
    :try_start_62
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_8f

    :catchall_6e
    move-exception p1

    move-object v2, v1

    move-object v1, v3

    goto :goto_77

    :catch_72
    move-object v2, v1

    move-object v1, v3

    goto :goto_84

    :catchall_75
    move-exception p1

    move-object v2, v1

    .line 2233
    :goto_77
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw p1

    :catch_83
    move-object v2, v1

    .line 2233
    :goto_84
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2234
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 2235
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 195
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sessions"

    .line 196
    sget-object v3, Lcom/yandex/metrica/impl/ob/bm$z;->c:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a([J)[Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_a1} :catch_a9
    .catchall {:try_start_62 .. :try_end_a1} :catchall_a2

    goto :goto_a9

    :catchall_a2
    move-exception p1

    .line 203
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_a9
    :goto_a9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public a()J
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 594
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 596
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(JLjava/util/Map;)Landroid/database/Cursor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 378
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sessions"

    const/4 v3, 0x0

    const-string v0, "id = ?"

    .line 381
    invoke-static {v0, p3}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 382
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v0, p3}, Lcom/yandex/metrica/impl/ob/bn;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 379
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_37
    .catchall {:try_start_5 .. :try_end_2a} :catchall_30

    .line 388
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3d

    :catchall_30
    move-exception p1

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_37
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    :goto_3d
    return-object p1
.end method

.method public a(Ljava/util/Map;)Landroid/database/Cursor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sessions"

    const/4 v3, 0x0

    const-string v0, "id >= ?"

    .line 359
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 360
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/bn;->a([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "id ASC"

    const/4 v9, 0x0

    .line 357
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_3a
    .catchall {:try_start_5 .. :try_end_2d} :catchall_33

    .line 366
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_40

    :catchall_33
    move-exception p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_3a
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    :goto_40
    return-object p1
.end method

.method public a(Ljava/lang/Long;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 492
    :try_start_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id >= 0"

    if-eqz p1, :cond_23

    .line 497
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT DISTINCT report_request_parameters FROM sessions WHERE id = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 500
    :cond_23
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 501
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 502
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 503
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 504
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_3b
    .catchall {:try_start_b .. :try_end_38} :catchall_39

    goto :goto_27

    :catchall_39
    move-exception p1

    goto :goto_49

    .line 507
    :catch_3b
    :try_start_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_39

    .line 510
    :cond_40
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 511
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 510
    :goto_49
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 511
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method

.method public a(JII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    const-string v0, "reports"

    if-gtz p4, :cond_5

    return-void

    .line 289
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 292
    :try_start_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 293
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "session_id"

    aput-object v7, v5, v6

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const/4 p1, 0x2

    const-string v6, "session_type"

    aput-object v6, v5, p1

    const/4 p1, 0x3

    .line 296
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v5, p1

    const/4 p1, 0x4

    const-string p3, "id"

    aput-object p3, v5, p1

    const/4 p1, 0x5

    aput-object v0, v5, p1

    const/4 p1, 0x6

    sub-int/2addr p4, p2

    .line 298
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 293
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/u;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 303
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_54} :catch_a5
    .catchall {:try_start_b .. :try_end_54} :catchall_9b

    if-eqz p2, :cond_77

    .line 4326
    :try_start_56
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_77

    .line 4327
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4328
    :goto_65
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_7b

    .line 4329
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 4330
    invoke-static {p2, p4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 4331
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_77
    move-object p3, v1

    goto :goto_7b

    :cond_79
    move-object p2, v1

    move-object p3, p2

    .line 307
    :cond_7b
    :goto_7b
    invoke-virtual {v2, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p3, :cond_86

    const-string p4, "Event removed from db"

    .line 311
    invoke-direct {p0, p3, p4}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 313
    :cond_86
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/bn;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int p1, p1

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8d} :catch_99
    .catchall {:try_start_56 .. :try_end_8d} :catchall_96

    .line 318
    invoke-static {p2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 319
    :goto_90
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_96
    move-exception p1

    move-object v1, p2

    goto :goto_9c

    :catch_99
    move-object v1, p2

    goto :goto_a5

    :catchall_9b
    move-exception p1

    .line 318
    :goto_9c
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 319
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 318
    :catch_a5
    :goto_a5
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_90
.end method

.method public a(JLcom/yandex/metrica/impl/ob/bl;)V
    .registers 7

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "start_time"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    invoke-static {}, Lcom/yandex/metrica/impl/utils/m;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "server_time_offset"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    new-instance p1, Lcom/yandex/metrica/impl/k;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->i:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/k;->a()V

    .line 122
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bn;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->h:Landroid/content/ContentValues;

    .line 170
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 172
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    monitor-enter p1

    .line 173
    :try_start_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0

    :catchall_13
    move-exception p1

    .line 170
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/bj;Lcom/yandex/metrica/impl/a$a;)V
    .registers 7

    .line 126
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 127
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bj;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bj;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bj;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bj;->b()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "session_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    new-instance p2, Lcom/yandex/metrica/impl/k;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->i:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/yandex/metrica/impl/k;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->j:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/ob/u;)Lcom/yandex/metrica/impl/k;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/k;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/k;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/yandex/metrica/impl/k;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/a$a;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bn;->b(Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/u;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bn$a;->a(Lcom/yandex/metrica/impl/ob/u;)V

    return-void
.end method

.method public b(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reports"

    const/4 v3, 0x0

    const-string v4, "session_id = ? AND session_type = ?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number ASC"

    const/4 v9, 0x0

    .line 401
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_3b
    .catchall {:try_start_5 .. :try_end_2e} :catchall_34

    .line 410
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_41

    :catchall_34
    move-exception p1

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_3b
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    :goto_41
    return-object p1
.end method

.method public b(Landroid/content/ContentValues;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 182
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    monitor-enter p1

    .line 183
    :try_start_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit p1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    :catchall_16
    move-exception p1

    .line 180
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public c(JLcom/yandex/metrica/impl/ob/bl;)Landroid/content/ContentValues;
    .registers 11

    .line 518
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 520
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 523
    :try_start_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bn;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bo;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 525
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x1

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 527
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 528
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 529
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_4c
    .catchall {:try_start_b .. :try_end_40} :catchall_42

    move-object v0, p1

    goto :goto_4c

    :catchall_42
    move-exception p1

    .line 535
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 536
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 535
    :catch_4c
    :cond_4c
    :goto_4c
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 536
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 660
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 661
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bn;->e:Lcom/yandex/metrica/impl/ob/bn$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bn$a;->a()V

    return-void
.end method
