.class Lcom/yandex/metrica/impl/ob/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fb;

.field private final b:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fe;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/en;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/yandex/metrica/impl/ob/fb;

    const-string p2, "LIB-BLACK"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/fb;

    .line 13
    new-instance p1, Lcom/yandex/metrica/impl/ob/fb;

    const-string p2, "LIB-TRUST"

    invoke-direct {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/em;->b:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/fb;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "white list isn\'t supported in custom container"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->b:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method
