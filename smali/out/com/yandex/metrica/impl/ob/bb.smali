.class public Lcom/yandex/metrica/impl/ob/bb;
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
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bb;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bi;->b()V

    const/4 p1, 0x0

    return p1
.end method
