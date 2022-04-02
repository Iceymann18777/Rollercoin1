.class public Lcom/yandex/metrica/impl/ob/ae;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 3

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ae;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/bi;->a(Z)V

    return v0
.end method
