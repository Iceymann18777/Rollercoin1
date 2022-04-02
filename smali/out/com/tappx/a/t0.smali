.class public Lcom/tappx/a/t0;
.super Lcom/tappx/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/t0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/m0<",
        "Lcom/tappx/a/x1;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/tappx/a/x1;

.field private g:Lcom/tappx/a/q0;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/m0;-><init>(Lcom/tappx/a/t2;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/t0;)Lcom/tappx/a/x1;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/t0;->f:Lcom/tappx/a/x1;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/x1;)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "7qjY7245E0dfSy30XptPQ/SJdTfZfiiWf+eZ42wqMQY"

    .line 2
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p3, p0, Lcom/tappx/a/t0;->f:Lcom/tappx/a/x1;

    .line 7
    invoke-virtual {p3}, Lcom/tappx/a/x1;->h()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Lcom/tappx/a/x1;->k()I

    move-result v1

    .line 9
    invoke-virtual {p3}, Lcom/tappx/a/x1;->i()I

    move-result p3

    .line 11
    :try_start_16
    invoke-static {p1}, Lcom/tappx/a/q0$a;->a(Landroid/content/Context;)Lcom/tappx/a/q0;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    .line 12
    invoke-interface {p1, v0, v1, p3}, Lcom/tappx/a/q0;->a(Ljava/lang/String;II)V

    .line 13
    iget-object p1, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    new-instance p3, Lcom/tappx/a/t0$a;

    invoke-direct {p3, p0}, Lcom/tappx/a/t0$a;-><init>(Lcom/tappx/a/t0;)V

    invoke-interface {p1, p2, p3}, Lcom/tappx/a/q0;->a(Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    invoke-interface {p1}, Lcom/tappx/a/q0;->loadAd()V
    :try_end_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_2e} :catch_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_2f

    goto :goto_3a

    :catch_2f
    move-exception p1

    goto :goto_32

    :catch_31
    move-exception p1

    .line 22
    :goto_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    sget-object p1, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p2, p1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    :goto_3a
    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    .registers 4

    .line 1
    check-cast p3, Lcom/tappx/a/x1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/t0;->a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/x1;)V

    return-void
.end method

.method protected e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    if-eqz v0, :cond_1b

    .line 2
    invoke-interface {v0}, Lcom/tappx/a/q0;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/w4;->b(Landroid/view/View;)V

    .line 4
    :try_start_b
    iget-object v0, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/tappx/a/q0;->a(Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/tappx/a/t0;->g:Lcom/tappx/a/q0;

    invoke-interface {v0}, Lcom/tappx/a/q0;->destroy()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method
