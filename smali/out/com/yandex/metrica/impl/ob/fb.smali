.class Lcom/yandex/metrica/impl/ob/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ev;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    .line 19
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fb;->b:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 21
    invoke-interface {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ev;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fb;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ev;->a(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x2

    .line 1055
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_13

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fb;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ev;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1056
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pin has bad length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fb;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/ev;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_f
    return-object v0
.end method

.method c()J
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ev;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fb;->a:Lcom/yandex/metrica/impl/ob/ev;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ev;->b()V

    return-void
.end method
