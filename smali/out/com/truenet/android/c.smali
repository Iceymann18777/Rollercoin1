.class public final Lcom/truenet/android/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truenet/android/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/truenet/android/c$a;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private c:La/a/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/b/a/a<",
            "La/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/truenet/android/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truenet/android/c$a;-><init>(La/a/b/b/e;)V

    sput-object v0, Lcom/truenet/android/c;->a:Lcom/truenet/android/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/concurrent/ThreadFactory;JII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "JII)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "links"

    invoke-static {p2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadFactory"

    invoke-static {p3, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/truenet/android/c;->f:Ljava/util/List;

    iput-wide p4, p0, Lcom/truenet/android/c;->g:J

    iput p6, p0, Lcom/truenet/android/c;->h:I

    .line 23
    invoke-static {p7, p3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/truenet/android/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 25
    sget-object p1, Lcom/truenet/android/c$c;->a:Lcom/truenet/android/c$c;

    check-cast p1, La/a/b/a/a;

    iput-object p1, p0, Lcom/truenet/android/c;->c:La/a/b/a/a;

    return-void
.end method

.method private final a()I
    .registers 2

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget v0, p0, Lcom/truenet/android/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/truenet/android/c;->d:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 28
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final synthetic a(Lcom/truenet/android/c;)V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/truenet/android/c;->b()V

    return-void
.end method

.method private final b()V
    .registers 2

    .line 32
    monitor-enter p0

    .line 33
    :try_start_1
    iget v0, p0, Lcom/truenet/android/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/truenet/android/c;->d:I

    if-gtz v0, :cond_e

    .line 34
    iget-object v0, p0, Lcom/truenet/android/c;->c:La/a/b/a/a;

    invoke-interface {v0}, La/a/b/a/a;->a()Ljava/lang/Object;

    .line 36
    :cond_e
    sget-object v0, La/a/j;->a:La/a/j;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 32
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(La/a/b/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/b/a/a<",
            "La/a/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/truenet/android/c;->c:La/a/b/a/a;

    return-void
.end method

.method public final a(La/a/b/a/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/b/a/b<",
            "-",
            "Lcom/truenet/android/b;",
            "-",
            "Ljava/lang/Integer;",
            "La/a/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/truenet/android/c;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/truenet/android/c;->a()I

    .line 42
    new-instance v2, Lcom/truenet/android/b;

    iget-object v5, p0, Lcom/truenet/android/c;->e:Landroid/content/Context;

    iget v7, p0, Lcom/truenet/android/c;->h:I

    iget-wide v8, p0, Lcom/truenet/android/c;->g:J

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/truenet/android/b;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 44
    iget-object v4, p0, Lcom/truenet/android/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/truenet/android/c$b;

    invoke-direct {v5, v2, v1, p0, p1}, Lcom/truenet/android/c$b;-><init>(Lcom/truenet/android/b;ILcom/truenet/android/c;La/a/b/a/b;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v1, v3

    goto :goto_e

    :cond_3a
    return-void
.end method
