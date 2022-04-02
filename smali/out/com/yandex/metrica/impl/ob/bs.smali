.class public Lcom/yandex/metrica/impl/ob/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bm$l;

.field private final b:Lcom/yandex/metrica/impl/ob/bm$l;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/bt;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;Landroid/util/SparseArray;Lcom/yandex/metrica/impl/ob/bt;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/bm$l;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/bt;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Lcom/yandex/metrica/impl/ob/bm$l;

    .line 40
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Lcom/yandex/metrica/impl/ob/bm$l;

    .line 41
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Landroid/util/SparseArray;

    .line 42
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bt;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bt;

    if-eqz v0, :cond_13

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bt;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/bt;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Lcom/yandex/metrica/impl/ob/bm$l;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Lcom/yandex/metrica/impl/ob/bm$l;

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const/4 v0, 0x1

    if-le p3, p2, :cond_17

    const/4 v1, 0x0

    add-int/2addr p2, v0

    :goto_5
    if-gt p2, p3, :cond_18

    .line 85
    :try_start_7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bs;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/bm$l;

    if-eqz v2, :cond_14

    .line 88
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/bm$l;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_17

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catch_17
    :cond_17
    const/4 v1, 0x1

    .line 97
    :cond_18
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bs;->d:Lcom/yandex/metrica/impl/ob/bt;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/bt;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    xor-int/2addr p2, v0

    or-int/2addr p2, v1

    if-eqz p2, :cond_29

    .line 100
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Lcom/yandex/metrica/impl/ob/bm$l;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/bs;->b:Lcom/yandex/metrica/impl/ob/bm$l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bs;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;)V

    :cond_29
    return-void
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;Lcom/yandex/metrica/impl/ob/bm$l;Lcom/yandex/metrica/impl/ob/bm$l;)V
    .registers 4

    .line 1113
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/yandex/metrica/impl/ob/bm$l;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    .line 108
    :catch_3
    invoke-virtual {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/bs;->a(Lcom/yandex/metrica/impl/ob/bm$l;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/bm$l;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 71
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bm$l;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bs;->a:Lcom/yandex/metrica/impl/ob/bm$l;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bs;->a(Lcom/yandex/metrica/impl/ob/bm$l;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
