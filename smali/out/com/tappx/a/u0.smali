.class public Lcom/tappx/a/u0;
.super Lcom/tappx/a/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/u0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d1<",
        "Lcom/tappx/a/x1;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/tappx/a/x1;

.field private g:Lcom/tappx/a/v0;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/d1;-><init>(Lcom/tappx/a/t2;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/u0;)Lcom/tappx/a/x1;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/u0;->f:Lcom/tappx/a/x1;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/tappx/a/u1;)J
    .registers 4

    .line 2
    check-cast p1, Lcom/tappx/a/x1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/u0;->a(Lcom/tappx/a/x1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/tappx/a/x1;)J
    .registers 7

    .line 21
    invoke-virtual {p1}, Lcom/tappx/a/x1;->j()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    return-wide v0

    .line 25
    :cond_c
    invoke-super {p0, p1}, Lcom/tappx/a/d1;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/x1;)V
    .registers 6

    .line 3
    invoke-virtual {p3}, Lcom/tappx/a/x1;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object p3, p0, Lcom/tappx/a/u0;->f:Lcom/tappx/a/x1;

    const-string p3, "EecDzDUbtS5qsctGaW8eDzBBqoEJJw2EaiO9g7mmMkc"

    const/4 v1, 0x0

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p3, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/tappx/a/v0$a;->a(Landroid/content/Context;)Lcom/tappx/a/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/u0;->g:Lcom/tappx/a/v0;

    .line 8
    invoke-interface {p1, v0}, Lcom/tappx/a/v0;->a(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/tappx/a/u0;->g:Lcom/tappx/a/v0;

    new-instance p3, Lcom/tappx/a/u0$a;

    invoke-direct {p3, p0}, Lcom/tappx/a/u0$a;-><init>(Lcom/tappx/a/u0;)V

    invoke-interface {p1, p2, p0, p3}, Lcom/tappx/a/v0;->a(Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lcom/tappx/a/u0;->g:Lcom/tappx/a/v0;

    invoke-interface {p1}, Lcom/tappx/a/v0;->loadAd()V
    :try_end_26
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_26} :catch_27

    goto :goto_32

    :catch_27
    move-exception p1

    goto :goto_2a

    :catch_29
    move-exception p1

    .line 18
    :goto_2a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    sget-object p1, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p2, p1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    :goto_32
    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    .registers 4

    .line 1
    check-cast p3, Lcom/tappx/a/x1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/u0;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/x1;)V

    return-void
.end method

.method protected e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u0;->g:Lcom/tappx/a/v0;

    if-eqz v0, :cond_c

    .line 3
    :try_start_4
    invoke-interface {v0}, Lcom/tappx/a/v0;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u0;->g:Lcom/tappx/a/v0;

    if-eqz v0, :cond_c

    .line 3
    :try_start_4
    invoke-interface {v0}, Lcom/tappx/a/v0;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method
