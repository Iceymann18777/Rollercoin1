.class Lcom/yandex/metrica/impl/bd$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bd;->a()Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/yandex/metrica/impl/ai$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/bd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bd$a;-><init>(B)V

    const/16 v2, 0x1d

    invoke-virtual {p0, v2, v0}, Lcom/yandex/metrica/impl/bd$1;->put(ILjava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/bd$b;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/bd$b;-><init>(B)V

    const/16 v1, 0x27

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bd$1;->put(ILjava/lang/Object;)V

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/bd$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bd$c;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/bd$1;->put(ILjava/lang/Object;)V

    return-void
.end method
