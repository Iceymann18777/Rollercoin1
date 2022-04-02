.class public abstract Lcom/yandex/metrica/impl/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ai$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yandex/metrica/impl/ob/dg;)I
.end method

.method abstract a()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ai$a;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)V
    .registers 7

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/dg;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dg;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ai;->a(Lcom/yandex/metrica/impl/ob/dg;)I

    move-result v1

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ai;->b()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1049
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ai;->a()Landroid/util/SparseArray;

    move-result-object v3

    :goto_13
    if-gt v1, v2, :cond_23

    .line 1051
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ai$a;

    if-eqz v4, :cond_20

    .line 1054
    invoke-interface {v4, p1}, Lcom/yandex/metrica/impl/ai$a;->a(Landroid/content/Context;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 35
    :cond_23
    invoke-virtual {p0, v0, v2}, Lcom/yandex/metrica/impl/ai;->a(Lcom/yandex/metrica/impl/ob/dg;I)V

    .line 36
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dg;->k()V

    :cond_29
    return-void
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/ob/dg;I)V
.end method

.method b()I
    .registers 2

    .line 41
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    return v0
.end method
