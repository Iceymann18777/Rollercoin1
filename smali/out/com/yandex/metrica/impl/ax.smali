.class Lcom/yandex/metrica/impl/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ax$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ay;

.field private c:Lcom/yandex/metrica/impl/j;

.field private d:Landroid/os/Handler;

.field private e:Lcom/yandex/metrica/impl/ob/dw;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ax;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->d:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ay;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/j;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->c:Lcom/yandex/metrica/impl/j;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ob/dw;)Lcom/yandex/metrica/impl/ob/dw;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->e:Lcom/yandex/metrica/impl/ob/dw;

    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/b;)V
    .registers 4

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/w;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/w;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/w;)V

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->c:Lcom/yandex/metrica/impl/j;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/j;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->e:Lcom/yandex/metrica/impl/ob/dw;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .registers 6

    monitor-enter p0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/b;

    if-nez v0, :cond_27

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/aa;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    sget-object v2, Lcom/yandex/metrica/impl/aw;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/b;)V

    .line 64
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->a()V

    .line 66
    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 69
    :cond_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/yandex/metrica/e;Z)Lcom/yandex/metrica/impl/z;
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/z;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/z;-><init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ay;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/b;)V

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/z;->a(Lcom/yandex/metrica/e;Z)V

    .line 49
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/z;->a()V

    .line 51
    iget-object p2, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/z;)V

    .line 53
    iget-object p2, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 41
    :cond_2d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Failed to activate AppMetrica with provided API Key. API Key %s has already been used by another reporter."

    .line 41
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
