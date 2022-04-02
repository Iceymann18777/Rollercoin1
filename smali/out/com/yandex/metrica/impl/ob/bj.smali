.class public Lcom/yandex/metrica/impl/ob/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Lcom/yandex/metrica/impl/ob/bl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bj;->a:J

    return-wide v0
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/bj;
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bj;->a:J

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/bl;)Lcom/yandex/metrica/impl/ob/bj;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bj;->d:Lcom/yandex/metrica/impl/ob/bl;

    return-object p0
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/bj;
    .registers 3

    .line 44
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bj;->b:J

    return-object p0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/bl;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bj;->d:Lcom/yandex/metrica/impl/ob/bl;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bj;->b:J

    return-wide v0
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/bj;
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bj;->c:J

    return-object p0
.end method

.method public d()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/bj;->c:J

    return-wide v0
.end method
