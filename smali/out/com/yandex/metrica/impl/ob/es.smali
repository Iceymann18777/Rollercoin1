.class Lcom/yandex/metrica/impl/ob/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ev;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private d()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/es;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/es;->d()V

    :cond_1d
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    .line 41
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/es;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_14

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_14
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/es;->d()V

    .line 58
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/es;->d()V

    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/es;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    return-object v0
.end method
