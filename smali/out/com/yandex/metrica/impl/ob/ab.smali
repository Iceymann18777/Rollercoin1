.class public Lcom/yandex/metrica/impl/ob/ab;
.super Lcom/yandex/metrica/impl/ob/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/v<",
        "Lcom/yandex/metrica/impl/ob/af;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/aa;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/aa<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/v;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            "Lcom/yandex/metrica/impl/ob/x<",
            "Lcom/yandex/metrica/impl/ob/af;",
            ">;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/x;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/af;

    .line 26
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/af;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method
