.class public Lcom/yandex/metrica/impl/ob/eo;
.super Lcom/yandex/metrica/impl/ob/ek;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fb;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ek;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eo;->a:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .registers 5

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eo;->a:Lcom/yandex/metrica/impl/ob/fb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fb;->b()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 21
    :cond_e
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
