.class Lcom/moat/analytics/mobile/mpub/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/x$b;,
        Lcom/moat/analytics/mobile/mpub/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Lcom/moat/analytics/mobile/mpub/x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/x$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/moat/analytics/mobile/mpub/x<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/mpub/x;->a:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/mpub/x$a<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/x;->b:Lcom/moat/analytics/mobile/mpub/x$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/x;->c:Ljava/lang/Class;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object p1

    new-instance p2, Lcom/moat/analytics/mobile/mpub/x$1;

    invoke-direct {p2, p0}, Lcom/moat/analytics/mobile/mpub/x$1;-><init>(Lcom/moat/analytics/mobile/mpub/x;)V

    invoke-virtual {p1, p2}, Lcom/moat/analytics/mobile/mpub/w;->a(Lcom/moat/analytics/mobile/mpub/w$b;)V

    return-void
.end method

.method static a(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/x$a<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/mpub/x;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/x;-><init>(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, p0, v2

    invoke-static {v0, p0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/x;->c:Ljava/lang/Class;

    return-object p1

    :cond_1f
    const-string v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_4c

    const-class p2, Lcom/moat/analytics/mobile/mpub/x;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4c
    return-object p1

    :cond_4d
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/x;->e:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;

    if-nez v0, :cond_5f

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5f
    iget-object v0, v1, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/w$d;->b:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v0, v2, :cond_71

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/x;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;

    if-eqz v0, :cond_71

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_71
    iget-object v0, v1, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/w$d;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v0, v1, :cond_82

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/x;->e:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;

    if-eqz v0, :cond_82

    :cond_7f
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/x;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_82
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/x;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/x;->c()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/x;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/x;->e:Z

    if-nez v0, :cond_20

    :try_start_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->b:Lcom/moat/analytics/mobile/mpub/x$a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/x$a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/mpub/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception v0

    const-string v1, "OnOffTrackerProxy"

    const-string v2, "Could not create instance"

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/x;->e:Z

    :cond_20
    return-void
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_10
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/x$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/mpub/x$b;-><init>(Lcom/moat/analytics/mobile/mpub/x;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/mpub/x$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .registers 10

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/x;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/mpub/x$b;

    :try_start_1a
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/x$b;->a(Lcom/moat/analytics/mobile/mpub/x$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/x$b;->a(Lcom/moat/analytics/mobile/mpub/x$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_28
    if-ge v5, v4, :cond_38

    aget-object v7, v3, v5

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_28

    :cond_38
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/x$b;->b(Lcom/moat/analytics/mobile/mpub/x$b;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/x;->f:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_42

    goto :goto_e

    :catch_42
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    goto :goto_e

    :cond_47
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/x;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/mpub/x;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/mpub/x;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
