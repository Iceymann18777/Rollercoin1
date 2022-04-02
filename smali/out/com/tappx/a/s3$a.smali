.class Lcom/tappx/a/s3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/s3;


# direct methods
.method constructor <init>(Lcom/tappx/a/s3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v0}, Lcom/tappx/a/s3;->a(Lcom/tappx/a/s3;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-virtual {v2}, Lcom/tappx/a/s3;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-lez v0, :cond_39

    .line 4
    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1}, Lcom/tappx/a/s3;->c(Lcom/tappx/a/s3;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v2}, Lcom/tappx/a/s3;->b(Lcom/tappx/a/s3;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1}, Lcom/tappx/a/s3;->c(Lcom/tappx/a/s3;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v2}, Lcom/tappx/a/s3;->b(Lcom/tappx/a/s3;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_39
    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1}, Lcom/tappx/a/s3;->d(Lcom/tappx/a/s3;)I

    move-result v1

    if-ne v0, v1, :cond_42

    return-void

    .line 8
    :cond_42
    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1, v0}, Lcom/tappx/a/s3;->a(Lcom/tappx/a/s3;I)I

    .line 9
    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1}, Lcom/tappx/a/s3;->e(Lcom/tappx/a/s3;)Lcom/tappx/a/s3$b;

    move-result-object v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/tappx/a/s3$a;->a:Lcom/tappx/a/s3;

    invoke-static {v1}, Lcom/tappx/a/s3;->e(Lcom/tappx/a/s3;)Lcom/tappx/a/s3$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tappx/a/s3$b;->a(I)V

    :cond_58
    return-void
.end method
