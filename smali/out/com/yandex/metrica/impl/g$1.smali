.class Lcom/yandex/metrica/impl/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/g;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/g;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/yandex/metrica/impl/g$1;->a:Lcom/yandex/metrica/impl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/g$1;->a:Lcom/yandex/metrica/impl/g;

    invoke-static {v0}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/c;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 85
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 89
    :cond_41
    iget-object v0, p0, Lcom/yandex/metrica/impl/g$1;->a:Lcom/yandex/metrica/impl/g;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
