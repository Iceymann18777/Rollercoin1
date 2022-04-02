.class public Lcom/yandex/metrica/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/bz;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/yandex/metrica/impl/c;

.field private volatile d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bz;Lcom/yandex/metrica/impl/c;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/yandex/metrica/impl/g;->d:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bz;

    .line 63
    iput-object p3, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p2, p0, Lcom/yandex/metrica/impl/g;->c:Lcom/yandex/metrica/impl/c;

    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;->b()V

    .line 1080
    iget-object p1, p0, Lcom/yandex/metrica/impl/g;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/yandex/metrica/impl/g$1;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/g$1;-><init>(Lcom/yandex/metrica/impl/g;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/c;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/yandex/metrica/impl/g;->c:Lcom/yandex/metrica/impl/c;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/g;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/g;->d:Ljava/util/Map;

    return-object p1
.end method

.method private b()V
    .registers 7

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    new-instance v2, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/dt;-><init>()V

    .line 2035
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2036
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 2037
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2038
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v5, 0x7fffffff

    invoke-static {v3, v5}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/yandex/metrica/impl/ob/dt;->a(Ljava/lang/String;I)V

    goto :goto_1e

    .line 74
    :cond_41
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/g;->a:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bz;->n(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/g;->b()V

    return-void
.end method
