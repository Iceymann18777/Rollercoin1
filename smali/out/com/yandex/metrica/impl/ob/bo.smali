.class public Lcom/yandex/metrica/impl/ob/bo;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)V
    .registers 6

    .line 23
    sget v0, Lcom/yandex/metrica/impl/ob/bm;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/bs;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bs;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 39
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bs;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bo;->a:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bs;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
