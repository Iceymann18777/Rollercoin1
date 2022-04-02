.class public Lcom/yandex/metrica/impl/ob/az;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/az;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 1333
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    const/4 p1, 0x0

    return p1
.end method
