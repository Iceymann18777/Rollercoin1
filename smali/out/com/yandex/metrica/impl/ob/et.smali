.class Lcom/yandex/metrica/impl/ob/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fb;

.field private final b:Lcom/yandex/metrica/impl/ob/fb;

.field private final c:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/es;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/es;-><init>()V

    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/fb;

    const-string v2, "BLACK"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/et;->a:Lcom/yandex/metrica/impl/ob/fb;

    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/fb;

    const-string v2, "WHITE"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/et;->b:Lcom/yandex/metrica/impl/ob/fb;

    .line 13
    new-instance v1, Lcom/yandex/metrica/impl/ob/fb;

    const-string v2, "TRUST"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/et;->c:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/et;->a:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/et;->b:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/et;->c:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method
