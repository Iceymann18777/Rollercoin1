.class public Lcom/yandex/metrica/impl/bd;
.super Lcom/yandex/metrica/impl/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bd$c;,
        Lcom/yandex/metrica/impl/bd$b;,
        Lcom/yandex/metrica/impl/bd$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ai;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/cc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/ob/cc;

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/dg;)I
    .registers 3

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->a()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/cc;->a(I)I

    move-result p1

    :cond_d
    return p1
.end method

.method a()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ai$a;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/bd$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bd$1;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/dg;I)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/bd;->a:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cc;->b(I)Lcom/yandex/metrica/impl/ob/cc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/cc;->h()V

    .line 64
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->b()Lcom/yandex/metrica/impl/ob/dg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->k()V

    return-void
.end method
