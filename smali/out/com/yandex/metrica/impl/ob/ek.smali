.class Lcom/yandex/metrica/impl/ob/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fb;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ek;->a:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method


# virtual methods
.method public a([Ljava/security/cert/X509Certificate;)Z
    .registers 7

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ek;->a:Lcom/yandex/metrica/impl/ob/fb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fb;->b()Ljava/util/Set;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 19
    :cond_e
    array-length v1, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_23

    aget-object v4, p1, v3

    .line 20
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    return v2
.end method
