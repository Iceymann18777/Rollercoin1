.class public Lcom/yandex/metrica/impl/ob/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bt;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(Landroid/database/Cursor;[Ljava/lang/String;)Z
    .registers 3

    .line 69
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 71
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    :try_start_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_46

    const/4 v4, 0x0

    .line 49
    :try_start_19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_40

    if-nez v4, :cond_31

    .line 55
    :try_start_2d
    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_46

    return v1

    .line 53
    :cond_31
    :try_start_31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/yandex/metrica/impl/ob/bu;->a(Landroid/database/Cursor;[Ljava/lang/String;)Z

    move-result v3
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_40

    and-int/2addr v0, v3

    .line 55
    :try_start_3c
    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_c

    :catchall_40
    move-exception p1

    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    :cond_45
    return v0

    :catch_46
    return v1
.end method
