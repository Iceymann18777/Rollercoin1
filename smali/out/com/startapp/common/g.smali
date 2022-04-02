.class public final Lcom/startapp/common/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:Ljava/util/concurrent/ThreadFactory;

.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static final f:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final g:Ljava/util/concurrent/Executor;

.field private static final h:Ljava/util/concurrent/Executor;

.field private static final i:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 25
    const-class v0, Lcom/startapp/common/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/common/g;->a:Ljava/lang/String;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_11

    const/16 v0, 0xa

    goto :goto_13

    :cond_11
    const/16 v0, 0x14

    :goto_13
    sput v0, Lcom/startapp/common/g;->b:I

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1b

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x8

    :goto_1d
    sput v0, Lcom/startapp/common/g;->c:I

    .line 31
    new-instance v0, Lcom/startapp/common/g$1;

    invoke-direct {v0}, Lcom/startapp/common/g$1;-><init>()V

    sput-object v0, Lcom/startapp/common/g;->d:Ljava/util/concurrent/ThreadFactory;

    .line 39
    new-instance v0, Lcom/startapp/common/g$2;

    invoke-direct {v0}, Lcom/startapp/common/g$2;-><init>()V

    sput-object v0, Lcom/startapp/common/g;->e:Ljava/util/concurrent/ThreadFactory;

    .line 47
    new-instance v0, Lcom/startapp/common/g$3;

    invoke-direct {v0}, Lcom/startapp/common/g$3;-><init>()V

    sput-object v0, Lcom/startapp/common/g;->f:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 54
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/startapp/common/g;->b:I

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/startapp/common/g;->d:Ljava/util/concurrent/ThreadFactory;

    sget-object v9, Lcom/startapp/common/g;->f:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/startapp/common/g;->g:Ljava/util/concurrent/Executor;

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v12, Lcom/startapp/common/g;->c:I

    const-wide/16 v13, 0x14

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v17, Lcom/startapp/common/g;->e:Ljava/util/concurrent/ThreadFactory;

    sget-object v18, Lcom/startapp/common/g;->f:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v10, v0

    move v11, v12

    invoke-direct/range {v10 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/startapp/common/g;->h:Ljava/util/concurrent/Executor;

    .line 74
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/startapp/common/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/startapp/common/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/startapp/common/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    .line 83
    :try_start_1
    sget-object v1, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    invoke-virtual {p0, v1}, Lcom/startapp/common/g$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 84
    sget-object p0, Lcom/startapp/common/g;->g:Ljava/util/concurrent/Executor;

    goto :goto_e

    .line 86
    :cond_c
    sget-object p0, Lcom/startapp/common/g;->h:Ljava/util/concurrent/Executor;

    :goto_e
    move-object v0, p0

    .line 89
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_2a

    .line 91
    :catch_13
    sget-object p0, Lcom/startapp/common/g;->a:Ljava/lang/String;

    const/4 p1, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeWithPriority failed to execute! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2a
    return-void
.end method
