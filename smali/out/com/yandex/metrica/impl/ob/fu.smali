.class public abstract Lcom/yandex/metrica/impl/ob/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fu$a;,
        Lcom/yandex/metrica/impl/ob/fu$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/ob/fw;

.field private volatile d:Lcom/yandex/metrica/impl/ob/fu$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fu$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/yandex/metrica/impl/ob/fu$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/yandex/metrica/impl/ob/fu;->a:I

    .line 86
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fu;->b:Ljava/lang/String;

    .line 87
    new-instance p1, Lcom/yandex/metrica/impl/ob/fw;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/fw;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/fu;->a(Lcom/yandex/metrica/impl/ob/fw;)Lcom/yandex/metrica/impl/ob/fu;

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    :try_start_5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 240
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fw;)Lcom/yandex/metrica/impl/ob/fu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fw;",
            ")",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fu;->c:Lcom/yandex/metrica/impl/ob/fw;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fu;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/fu$a;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fu;->e:Lcom/yandex/metrica/impl/ob/fu$a;

    return-void
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/fu$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fu;->d:Lcom/yandex/metrica/impl/ob/fu$b;

    return-void
.end method

.method protected abstract b(Lcom/yandex/metrica/impl/ob/ft;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ft;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 223
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/fu;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/yandex/metrica/impl/ob/fu;->a:I

    return v0
.end method

.method protected e()Lcom/yandex/metrica/impl/ob/fu$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/fu$b<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fu;->d:Lcom/yandex/metrica/impl/ob/fu$b;

    return-object v0
.end method

.method protected f()Lcom/yandex/metrica/impl/ob/fu$a;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fu;->e:Lcom/yandex/metrica/impl/ob/fu$a;

    return-object v0
.end method

.method protected g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 182
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 183
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/fu;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .registers 2

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fu;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fu;->c:Lcom/yandex/metrica/impl/ob/fw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fw;->a()I

    move-result v0

    return v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/fw;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fu;->c:Lcom/yandex/metrica/impl/ob/fw;

    return-object v0
.end method
