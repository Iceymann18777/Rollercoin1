.class public Lcom/yandex/metrica/impl/ob/aq;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/aq;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 2

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/aq;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
