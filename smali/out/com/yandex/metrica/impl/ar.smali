.class public Lcom/yandex/metrica/impl/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/yandex/metrica/impl/ay;

.field private final c:Lcom/yandex/metrica/impl/ob/bz;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/ob/bz;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/ay;

    .line 30
    iput-object p2, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/ob/bz;

    .line 31
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bz;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bz;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ar;->a:Z

    if-eqz p1, :cond_1e

    .line 35
    iget-object p1, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/ob/bz;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bz;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 36
    iput-object p2, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    return-void

    .line 38
    :cond_1e
    iget-object p1, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ar;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 121
    sget-object v0, Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;->PARSE_ERROR:Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ar;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;)V

    return-void

    .line 124
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    if-eqz v0, :cond_1e

    .line 125
    iget-object v1, p0, Lcom/yandex/metrica/impl/ar;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener;->onParametersLoaded(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/yandex/metrica/impl/ar;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    :cond_1e
    return-void
.end method

.method private a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    if-eqz v0, :cond_c

    .line 133
    iget-object v1, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/yandex/metrica/DeferredDeeplinkParametersListener;->onError(Lcom/yandex/metrica/DeferredDeeplinkParametersListener$Error;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->f:Lcom/yandex/metrica/DeferredDeeplinkParametersListener;

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ar;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ar;->a()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ar;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->e:Ljava/util/Map;

    :cond_c
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_46

    const/16 v1, 0x3f

    .line 1106
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_15

    add-int/lit8 v1, v1, 0x1

    .line 1108
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_15
    const-string v1, "="

    .line 1115
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "&"

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 92
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_46

    aget-object v5, p0, v4

    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3e

    .line 95
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_3e
    const-string v6, ""

    .line 97
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_46
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ay;->b(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ar;->a:Z

    if-nez v0, :cond_36

    .line 46
    monitor-enter p0

    .line 47
    :try_start_a
    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->d:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/ob/bz;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bz;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bz;

    .line 49
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ar;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ar;->d(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/ar;->g:Landroid/os/Handler;

    if-nez p1, :cond_27

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ar;->g:Landroid/os/Handler;

    .line 54
    :cond_27
    iget-object p1, p0, Lcom/yandex/metrica/impl/ar;->g:Landroid/os/Handler;

    new-instance v0, Lcom/yandex/metrica/impl/ar$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ar$1;-><init>(Lcom/yandex/metrica/impl/ar;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw p1

    :cond_36
    return-void
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 71
    invoke-static {p1}, Lcom/yandex/metrica/impl/ar;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "appmetrica_deep_link"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method c(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ar;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_3d
    return-object v0
.end method
