.class public abstract Lcom/tappx/a/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/q1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/f2$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/q1;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/tappx/a/t2;

.field private final d:Lcom/tappx/a/v1;

.field private final e:Lcom/tappx/a/h1;

.field private final f:Lcom/tappx/a/s1;

.field protected final g:Lcom/tappx/a/n2;

.field protected h:Lcom/tappx/sdk/android/AdRequest;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/v1;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    new-instance v1, Lcom/tappx/a/s1;

    invoke-direct {v1, p1}, Lcom/tappx/a/s1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tappx/a/f2;-><init>(Landroid/content/Context;Lcom/tappx/a/v1;Lcom/tappx/a/n2;Lcom/tappx/a/s1;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/v1;Lcom/tappx/a/n2;Lcom/tappx/a/s1;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/f2;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tappx/a/f2;->d:Lcom/tappx/a/v1;

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/f2;->e()Lcom/tappx/a/c;

    move-result-object p1

    .line 6
    iput-object p3, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    .line 7
    invoke-virtual {p1}, Lcom/tappx/a/c;->o()Lcom/tappx/a/q1;

    move-result-object p2

    iput-object p2, p0, Lcom/tappx/a/f2;->a:Lcom/tappx/a/q1;

    .line 8
    invoke-virtual {p1}, Lcom/tappx/a/c;->g()Lcom/tappx/a/h1;

    move-result-object p2

    iput-object p2, p0, Lcom/tappx/a/f2;->e:Lcom/tappx/a/h1;

    .line 9
    iget-object p2, p0, Lcom/tappx/a/f2;->a:Lcom/tappx/a/q1;

    invoke-interface {p2, p0}, Lcom/tappx/a/q1;->a(Lcom/tappx/a/q1$a;)V

    .line 10
    invoke-virtual {p1}, Lcom/tappx/a/c;->e()Lcom/tappx/a/t2;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/f2;->c:Lcom/tappx/a/t2;

    .line 11
    iput-object p4, p0, Lcom/tappx/a/f2;->f:Lcom/tappx/a/s1;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/f2;Lcom/tappx/sdk/android/AdRequest;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/f2;->c(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method private c(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 6

    const-string v0, "mo5jy7IL/t1GLb3J/P8gjQ"

    .line 2
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CpJSwAt+xAYUOl939gSabw"

    .line 3
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/tappx/a/f2;->h:Lcom/tappx/sdk/android/AdRequest;

    if-nez p1, :cond_1c

    .line 5
    new-instance p1, Lcom/tappx/sdk/android/AdRequest;

    invoke-direct {p1}, Lcom/tappx/sdk/android/AdRequest;-><init>()V

    .line 7
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/tappx/a/f2;->f()V
    :try_end_1f
    .catch Lcom/tappx/a/f2$c; {:try_start_1c .. :try_end_1f} :catch_3b

    .line 11
    iget-object v0, p0, Lcom/tappx/a/f2;->e:Lcom/tappx/a/h1;

    invoke-virtual {v0}, Lcom/tappx/a/h1;->a()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 12
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->NETWORK_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/TappxAdError;)V

    return-void

    .line 15
    :cond_2d
    invoke-virtual {p0}, Lcom/tappx/a/f2;->d()V

    .line 16
    iget-object v0, p0, Lcom/tappx/a/f2;->a:Lcom/tappx/a/q1;

    iget-object v1, p0, Lcom/tappx/a/f2;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/tappx/a/f2;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/tappx/a/f2;->d:Lcom/tappx/a/v1;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/tappx/a/q1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/v1;Lcom/tappx/sdk/android/AdRequest;)V

    :catch_3b
    return-void
.end method

.method private e()Lcom/tappx/a/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/c;->a(Landroid/content/Context;)Lcom/tappx/a/c;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f2;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string v0, "ql/gpRHeskeYCNYrbDS7nxNb5jI2ynHn201S0j/Gqul8JUVryuBrMPjdaYQ+79ST"

    .line 2
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_11
    if-nez v1, :cond_14

    return-void

    .line 6
    :cond_14
    sget-object v0, Lcom/tappx/sdk/android/TappxAdError;->DEVELOPER_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    invoke-virtual {p0, v0}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/TappxAdError;)V

    .line 7
    new-instance v0, Lcom/tappx/a/f2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tappx/a/f2$c;-><init>(Lcom/tappx/a/f2$a;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tappx/a/f2;->k:Z

    .line 4
    iget-object v0, p0, Lcom/tappx/a/f2;->a:Lcom/tappx/a/q1;

    invoke-interface {v0}, Lcom/tappx/a/q1;->destroy()V

    return-void
.end method

.method public final a(Lcom/tappx/a/a2;)V
    .registers 5

    .line 11
    iget-boolean v0, p0, Lcom/tappx/a/f2;->k:Z

    if-eqz v0, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->b(Lcom/tappx/a/a2;)Lcom/tappx/sdk/android/TappxAdError;

    move-result-object p1

    const-string v0, "8V2SkLfQtXT7yOPHxqrPlAg6jp+lx+rvQTk+I2vfHWM"

    .line 13
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "lgaGjSo8VdlXgzQ7qLaLqzOElG/CkYie3dvHgxY0q1o"

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/TappxAdError;)V

    return-void
.end method

.method public final a(Lcom/tappx/a/w1;)V
    .registers 6

    .line 6
    iget-boolean v0, p0, Lcom/tappx/a/f2;->k:Z

    if-eqz v0, :cond_5

    return-void

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    invoke-virtual {p1}, Lcom/tappx/a/w1;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tappx/a/w1;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/tappx/a/w1;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tappx/a/n2;->a(ZILjava/lang/String;)V

    const-string v0, "ftLVnAFo4UVdmS7TEXHP3z1+tuYsCsVdhGwkH7sMMCI"

    .line 8
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "7+KAkb3Ej2KFLftBLdWrHXNw5SyHuZNhHCgeqkrxnXg"

    .line 9
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->b(Lcom/tappx/a/w1;)V

    return-void
.end method

.method public a(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->b(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method protected abstract a(Lcom/tappx/sdk/android/TappxAdError;)V
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/f2;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f2;->b:Landroid/content/Context;

    return-object v0
.end method

.method b(Lcom/tappx/a/a2;)Lcom/tappx/sdk/android/TappxAdError;
    .registers 3

    .line 10
    sget-object v0, Lcom/tappx/a/f2$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1a

    .line 23
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->UNSPECIFIED:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1

    .line 24
    :cond_1a
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->SERVER_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1

    .line 25
    :cond_1d
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->NO_FILL:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1

    .line 26
    :cond_20
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->NETWORK_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1

    .line 27
    :cond_23
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->INTERNAL_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1

    .line 28
    :cond_26
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->DEVELOPER_ERROR:Lcom/tappx/sdk/android/TappxAdError;

    return-object p1
.end method

.method protected abstract b(Lcom/tappx/a/w1;)V
.end method

.method protected b(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 4

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/f2;->f:Lcom/tappx/a/s1;

    invoke-virtual {v0}, Lcom/tappx/a/s1;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_10

    .line 8
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    new-instance v1, Lcom/tappx/a/f2$a;

    invoke-direct {v1, p0, p1}, Lcom/tappx/a/f2$a;-><init>(Lcom/tappx/a/f2;Lcom/tappx/sdk/android/AdRequest;)V

    invoke-virtual {v0, v1}, Lcom/tappx/a/n2;->a(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :catch_10
    sget-object p1, Lcom/tappx/sdk/android/TappxAdError;->NO_FILL:Lcom/tappx/sdk/android/TappxAdError;

    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/TappxAdError;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/f2;->i:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f2;->h:Lcom/tappx/sdk/android/AdRequest;

    invoke-virtual {p0, v0}, Lcom/tappx/a/f2;->b(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/tappx/a/f2;->c:Lcom/tappx/a/t2;

    invoke-interface {v0, p1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .registers 1

    return-void
.end method
