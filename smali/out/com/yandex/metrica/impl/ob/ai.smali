.class public Lcom/yandex/metrica/impl/ob/ai;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ai;->a:Lcom/yandex/metrica/impl/ob/by;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 4

    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ai;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->z()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 39
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->e(Lcom/yandex/metrica/impl/h;)V

    :cond_19
    const/4 p1, 0x0

    return p1
.end method
