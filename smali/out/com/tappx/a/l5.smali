.class public Lcom/tappx/a/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/v5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/l5$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/tappx/a/l5$a;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/l5$a;-><init>(Lcom/tappx/a/l5;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tappx/a/l5;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/u5<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tappx/a/l5;->a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/u5<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/s5;->u()V

    const-string v0, "post-response"

    .line 3
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/l5;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tappx/a/l5$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/tappx/a/l5$b;-><init>(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tappx/a/s5;Lcom/tappx/a/z5;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;",
            "Lcom/tappx/a/z5;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 5
    invoke-virtual {p1, v0}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/tappx/a/u5;->a(Lcom/tappx/a/z5;)Lcom/tappx/a/u5;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/tappx/a/l5;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tappx/a/l5$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/tappx/a/l5$b;-><init>(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
