.class Lcom/tappx/a/a6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/a6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/a6$a$a;
    }
.end annotation


# static fields
.field public static final c:Z


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/a6$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/tappx/a/a6;->b:Z

    sput-boolean v0, Lcom/tappx/a/a6$a;->c:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tappx/a/a6$a;->b:Z

    return-void
.end method

.method private a()J
    .registers 5

    .line 19
    iget-object v0, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 23
    :cond_b
    iget-object v0, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/a6$a$a;

    iget-wide v0, v0, Lcom/tappx/a/a6$a$a;->c:J

    .line 24
    iget-object v2, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tappx/a/a6$a$a;

    iget-wide v2, v2, Lcom/tappx/a/a6$a$a;->c:J

    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x1

    .line 7
    :try_start_2
    iput-boolean v0, p0, Lcom/tappx/a/a6$a;->b:Z

    .line 9
    invoke-direct {p0}, Lcom/tappx/a/a6$a;->a()J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_5f

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_10

    monitor-exit p0

    return-void

    .line 14
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tappx/a/a6$a$a;

    iget-wide v5, v3, Lcom/tappx/a/a6$a$a;->c:J

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v4

    aput-object p1, v7, v0

    const-string p1, "(%-4d ms) %s"

    invoke-static {p1, v7}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/a6$a$a;

    .line 17
    iget-wide v7, v1, Lcom/tappx/a/a6$a$a;->c:J

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sub-long v5, v7, v5

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    iget-wide v5, v1, Lcom/tappx/a/a6$a$a;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v0

    iget-object v1, v1, Lcom/tappx/a/a6$a$a;->a:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "(+%-4d) [%2d] %s"

    invoke-static {v1, v2}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_5f

    move-wide v5, v7

    goto :goto_31

    :cond_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit p0

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/tappx/a/a6$a;->b:Z

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lcom/tappx/a/a6$a;->a:Ljava/util/List;

    new-instance v7, Lcom/tappx/a/a6$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/tappx/a/a6$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_20

    monitor-exit p0

    return-void

    .line 6
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/a6$a;->b:Z

    if-nez v0, :cond_11

    const-string v0, "Request on the loose"

    .line 2
    invoke-virtual {p0, v0}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    .line 3
    invoke-static {v1, v0}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
