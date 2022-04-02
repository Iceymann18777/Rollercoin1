.class public Lcom/tappx/a/e5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/e5$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/tappx/a/e5;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tappx/a/e5$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tappx/a/e5;

    invoke-direct {v0}, Lcom/tappx/a/e5;-><init>()V

    sput-object v0, Lcom/tappx/a/e5;->a:Lcom/tappx/a/e5;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/e5;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tappx/a/e5;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/e5;->a:Lcom/tappx/a/e5;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/tappx/a/e5;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/e5$a;

    invoke-virtual {v1}, Lcom/tappx/a/e5$a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    goto :goto_b

    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    goto :goto_31

    :goto_30
    throw v0

    :goto_31
    goto :goto_30
.end method


# virtual methods
.method public a(I)Lcom/tappx/a/e5$a;
    .registers 3

    .line 5
    sget-object v0, Lcom/tappx/a/e5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tappx/a/e5$a;

    return-object p1
.end method

.method public a(ILcom/tappx/a/c5;Lcom/tappx/a/t3;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/e5;->b()V

    .line 3
    sget-object p2, Lcom/tappx/a/e5;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v0, 0x32

    if-le p2, v0, :cond_e

    return-void

    .line 4
    :cond_e
    sget-object p2, Lcom/tappx/a/e5;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/tappx/a/e5$a;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/tappx/a/e5$a;-><init>(Lcom/tappx/a/t3;Lcom/tappx/a/c5;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
