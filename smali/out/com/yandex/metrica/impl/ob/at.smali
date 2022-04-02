.class public Lcom/yandex/metrica/impl/ob/at;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ay;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/ay;

    new-instance v1, Lcom/yandex/metrica/impl/ob/z;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/z;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ay;-><init>(Lcom/yandex/metrica/impl/ob/aa;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->a:Lcom/yandex/metrica/impl/ob/ay;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->a:Lcom/yandex/metrica/impl/ob/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ay;->a(Lcom/yandex/metrica/impl/h;)Z

    move-result p1

    return p1
.end method
