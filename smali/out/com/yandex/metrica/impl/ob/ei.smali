.class Lcom/yandex/metrica/impl/ob/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/er;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ek;

.field private final b:Lcom/yandex/metrica/impl/ob/ek;

.field private final c:Lcom/yandex/metrica/impl/ob/ek;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ey;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/ek;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ey;->a()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ek;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/ek;

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/eo;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ey;->b()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/eo;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Lcom/yandex/metrica/impl/ob/ek;

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/ek;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/ey;->c()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->c:Lcom/yandex/metrica/impl/ob/ek;

    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/ek;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;->a([Ljava/security/cert/X509Certificate;)Z

    move-result p1

    return p1
.end method

.method public b([Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Lcom/yandex/metrica/impl/ob/ek;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;->a([Ljava/security/cert/X509Certificate;)Z

    move-result p1

    return p1
.end method

.method public c([Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->c:Lcom/yandex/metrica/impl/ob/ek;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ek;->a([Ljava/security/cert/X509Certificate;)Z

    move-result p1

    return p1
.end method
