.class Lcom/yandex/metrica/impl/ob/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ey;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/et;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ey;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->a()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->b()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ej;->a:Lcom/yandex/metrica/impl/ob/ey;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ey;->c()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    return-object v0
.end method
