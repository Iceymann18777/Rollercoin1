.class public Lcom/tappx/a/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/s3$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:I

.field private c:J

.field private d:Lcom/tappx/a/s3$b;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tappx/a/s3;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/tappx/a/s3;->b:I

    .line 35
    new-instance v0, Lcom/tappx/a/s3$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/s3$a;-><init>(Lcom/tappx/a/s3;)V

    iput-object v0, p0, Lcom/tappx/a/s3;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/s3;I)I
    .registers 2

    .line 2
    iput p1, p0, Lcom/tappx/a/s3;->b:I

    return p1
.end method

.method static synthetic a(Lcom/tappx/a/s3;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/tappx/a/s3;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tappx/a/s3;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/s3;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/tappx/a/s3;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/s3;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/tappx/a/s3;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/tappx/a/s3;->b:I

    return p0
.end method

.method static synthetic e(Lcom/tappx/a/s3;)Lcom/tappx/a/s3$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/s3;->d:Lcom/tappx/a/s3$b;

    return-object p0
.end method


# virtual methods
.method a()J
    .registers 3

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    .line 3
    sget-wide v0, Lcom/tappx/a/n$a;->k:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    move-wide p1, v0

    .line 6
    :cond_7
    invoke-virtual {p0}, Lcom/tappx/a/s3;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tappx/a/s3;->c:J

    .line 7
    iget-object p1, p0, Lcom/tappx/a/s3;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public a(Lcom/tappx/a/s3$b;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/tappx/a/s3;->d:Lcom/tappx/a/s3$b;

    return-void
.end method

.method public b()Z
    .registers 6

    .line 2
    iget-wide v0, p0, Lcom/tappx/a/s3;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/tappx/a/s3;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tappx/a/s3;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method
