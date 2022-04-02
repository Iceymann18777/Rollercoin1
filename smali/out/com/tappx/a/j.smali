.class public Lcom/tappx/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tappx/a/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    move-wide p1, v0

    .line 5
    :cond_a
    iput-wide p1, p0, Lcom/tappx/a/j;->a:J

    return-void
.end method

.method private b()J
    .registers 3

    .line 1
    invoke-static {}, Lcom/tappx/a/e;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tappx/a/j;->b:Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lcom/tappx/a/j;->c:J

    .line 4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    if-eqz v0, :cond_20

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    .line 7
    invoke-direct {p0}, Lcom/tappx/a/j;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tappx/a/j;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    :goto_21
    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :cond_24
    return-object v0

    :catchall_25
    move-exception v0

    .line 8
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    monitor-enter p0

    .line 10
    :try_start_1
    iput-object p1, p0, Lcom/tappx/a/j;->b:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/tappx/a/j;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tappx/a/j;->c:J

    .line 12
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method
