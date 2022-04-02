.class public Lcom/yandex/metrica/impl/ob/ad;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 3

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ad;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->h(Lcom/yandex/metrica/impl/h;)V

    const/4 p1, 0x0

    return p1
.end method
