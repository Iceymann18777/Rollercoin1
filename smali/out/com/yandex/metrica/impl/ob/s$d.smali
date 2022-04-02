.class Lcom/yandex/metrica/impl/ob/s$d;
.super Lcom/yandex/metrica/impl/ob/s$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V
    .registers 3

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/s$f;-><init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 3

    .line 199
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$d;->c()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->C()Lcom/yandex/metrica/impl/ob/by;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$d;->c()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/s$d;->e()Lcom/yandex/metrica/impl/ob/db;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->C()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/db;->c()V

    return-void

    .line 211
    :cond_16
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/db;->b()V

    return-void
.end method
