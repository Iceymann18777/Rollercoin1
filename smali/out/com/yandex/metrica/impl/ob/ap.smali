.class public Lcom/yandex/metrica/impl/ob/ap;
.super Lcom/yandex/metrica/impl/ob/af;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/by;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/af;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ap;->a:Lcom/yandex/metrica/impl/ob/by;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 5

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ap;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ap;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/by;->c()Z

    move-result v1

    if-nez v1, :cond_40

    .line 34
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/CounterConfiguration;->y()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1390
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    goto :goto_23

    .line 2337
    :cond_1d
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/h;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 39
    :goto_23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ap;->a:Lcom/yandex/metrica/impl/ob/by;

    const-string v2, ""

    .line 40
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/by;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/h;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->d(Lcom/yandex/metrica/impl/h;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/t;->b(Z)V

    .line 42
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ap;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/by;->a()V

    .line 43
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ap;->a:Lcom/yandex/metrica/impl/ob/by;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/by;->e()V

    :cond_40
    const/4 p1, 0x0

    return p1
.end method
