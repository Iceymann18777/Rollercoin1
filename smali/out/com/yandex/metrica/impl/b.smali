.class public abstract Lcom/yandex/metrica/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/b;


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/yandex/metrica/impl/aw;

.field protected final c:Lcom/yandex/metrica/impl/ay;

.field private d:Lcom/yandex/metrica/impl/w;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x10

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x11

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x13

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/b;->a:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/aw;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    .line 70
    iput-object p4, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    .line 71
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-static {}, Lcom/yandex/metrica/impl/utils/f$a;->d()Lcom/yandex/metrica/impl/utils/f$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/utils/f$a;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/h;)V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/aw;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/j;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dw;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aw;->b(Lcom/yandex/metrica/impl/ob/dw;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/w;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    return-void
.end method

.method public b()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->b(Lcom/yandex/metrica/impl/aw;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->d()V

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/w;->b()V

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V

    .line 146
    iget-object p1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->e()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1156
    iget-object p1, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    sget-object v0, Lcom/yandex/metrica/impl/p$a;->m:Lcom/yandex/metrica/impl/p$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/p;->d(Lcom/yandex/metrica/impl/p$a;)Lcom/yandex/metrica/impl/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V

    :cond_2a
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V

    :cond_d
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Z

    move-result v0

    if-nez v0, :cond_22

    .line 167
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->e()V

    .line 170
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/w;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/w;->a()V

    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V

    .line 174
    iget-object p1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->d()V

    :cond_22
    return-void
.end method

.method c()Z
    .registers 5

    .line 277
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    .line 279
    sget-object v1, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/p$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/p;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v3, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;)V

    :cond_19
    return v0
.end method

.method d()Lcom/yandex/metrica/impl/aw;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Z

    move-result v0

    return v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Message"

    .line 211
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/h;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Event Name"

    .line 185
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/p;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/h;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Event Name"

    .line 191
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p2, 0x0

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 193
    :goto_13
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/p;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/aw;Ljava/util/Map;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Exception"

    .line 224
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/aw;)V

    return-void
.end method
