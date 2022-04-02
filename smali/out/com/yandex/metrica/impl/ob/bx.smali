.class public Lcom/yandex/metrica/impl/ob/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bv;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bo;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bo;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bo;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bx;->a:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method
