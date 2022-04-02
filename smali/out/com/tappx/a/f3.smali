.class public Lcom/tappx/a/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/f3$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:J

.field private final c:J

.field private final d:J

.field private e:J

.field private f:Lcom/tappx/a/f3$b;

.field private g:J

.field private h:J

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JJJ)V
    .registers 15

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tappx/a/f3;-><init>(Landroid/os/Handler;JJJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;JJJ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/f3;->i:Z

    .line 64
    new-instance v0, Lcom/tappx/a/f3$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/f3$a;-><init>(Lcom/tappx/a/f3;)V

    iput-object v0, p0, Lcom/tappx/a/f3;->j:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/tappx/a/f3;->a:Landroid/os/Handler;

    .line 66
    iput-wide p2, p0, Lcom/tappx/a/f3;->b:J

    .line 67
    iput-wide p4, p0, Lcom/tappx/a/f3;->c:J

    .line 68
    iput-wide p6, p0, Lcom/tappx/a/f3;->d:J

    .line 69
    invoke-virtual {p0, p6, p7}, Lcom/tappx/a/f3;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/f3;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/tappx/a/f3;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tappx/a/f3;)Lcom/tappx/a/f3$b;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/a/f3;->f:Lcom/tappx/a/f3$b;

    return-object p0
.end method

.method private f()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f3;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tappx/a/f3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 4
    invoke-direct {p0}, Lcom/tappx/a/f3;->g()V

    .line 5
    iget-wide v0, p0, Lcom/tappx/a/f3;->g:J

    invoke-direct {p0}, Lcom/tappx/a/f3;->f()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tappx/a/f3;->h:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tappx/a/f3;->g:J

    return-void
.end method

.method public a(J)V
    .registers 6

    .line 6
    iget-wide v0, p0, Lcom/tappx/a/f3;->b:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    .line 7
    :cond_7
    iget-wide v0, p0, Lcom/tappx/a/f3;->c:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    .line 8
    :cond_e
    iput-wide p1, p0, Lcom/tappx/a/f3;->e:J

    return-void
.end method

.method public a(Lcom/tappx/a/f3$b;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/f3;->f:Lcom/tappx/a/f3$b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/tappx/a/f3;->i:Z

    if-nez p1, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/tappx/a/f3;->e()V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/tappx/a/f3;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/tappx/a/f3;->a(J)V

    return-void
.end method

.method public c()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f3;->i:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-wide v0, p0, Lcom/tappx/a/f3;->e:J

    .line 3
    iget-wide v2, p0, Lcom/tappx/a/f3;->g:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_14

    cmp-long v4, v2, v0

    if-gez v4, :cond_14

    sub-long/2addr v0, v2

    .line 6
    :cond_14
    invoke-direct {p0}, Lcom/tappx/a/f3;->g()V

    .line 7
    iget-object v2, p0, Lcom/tappx/a/f3;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tappx/a/f3;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-direct {p0}, Lcom/tappx/a/f3;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tappx/a/f3;->h:J

    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f3;->i:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tappx/a/f3;->g:J

    .line 3
    invoke-virtual {p0}, Lcom/tappx/a/f3;->c()V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/f3;->a()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tappx/a/f3;->g:J

    return-void
.end method
