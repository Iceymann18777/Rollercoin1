.class public Lcom/yandex/metrica/impl/ob/ah;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ah;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/by;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 5

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ah;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->d()Z

    move-result v1

    if-nez v1, :cond_33

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->c()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 39
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/by;->c(Ljava/lang/String;)V

    .line 1386
    sget-object v2, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 44
    :cond_2e
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/by;->b()V

    :cond_33
    const/4 p1, 0x0

    return p1
.end method
