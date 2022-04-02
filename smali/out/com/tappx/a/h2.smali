.class public Lcom/tappx/a/h2;
.super Lcom/tappx/a/f2;
.source "SourceFile"


# instance fields
.field private final l:Lcom/tappx/sdk/android/TappxInterstitial;

.field private final m:Lcom/tappx/a/f3;

.field private final n:Lcom/tappx/a/e1;

.field private o:Lcom/tappx/sdk/android/TappxInterstitialListener;

.field private p:Lcom/tappx/a/u1;

.field private q:Lcom/tappx/a/d1;

.field private r:Z

.field private s:Z

.field private final t:Lcom/tappx/a/f3$b;

.field private u:Lcom/tappx/a/e1$a;


# direct methods
.method public constructor <init>(Lcom/tappx/sdk/android/TappxInterstitial;Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/tappx/a/v1;->c:Lcom/tappx/a/v1;

    invoke-direct {p0, p2, v0}, Lcom/tappx/a/f2;-><init>(Landroid/content/Context;Lcom/tappx/a/v1;)V

    .line 41
    new-instance v0, Lcom/tappx/a/h2$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/h2$a;-><init>(Lcom/tappx/a/h2;)V

    iput-object v0, p0, Lcom/tappx/a/h2;->t:Lcom/tappx/a/f3$b;

    .line 88
    new-instance v0, Lcom/tappx/a/h2$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/h2$b;-><init>(Lcom/tappx/a/h2;)V

    iput-object v0, p0, Lcom/tappx/a/h2;->u:Lcom/tappx/a/e1$a;

    .line 89
    iput-object p1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    .line 90
    invoke-static {p2}, Lcom/tappx/a/i;->a(Landroid/content/Context;)Lcom/tappx/a/i;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/tappx/a/i;->b()Lcom/tappx/a/e1;

    move-result-object p2

    iput-object p2, p0, Lcom/tappx/a/h2;->n:Lcom/tappx/a/e1;

    .line 92
    iget-object v0, p0, Lcom/tappx/a/h2;->u:Lcom/tappx/a/e1$a;

    invoke-interface {p2, v0}, Lcom/tappx/a/e1;->a(Lcom/tappx/a/e1$a;)V

    .line 93
    invoke-virtual {p1}, Lcom/tappx/a/i;->a()Lcom/tappx/a/f3;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    .line 94
    iget-object p2, p0, Lcom/tappx/a/h2;->t:Lcom/tappx/a/f3$b;

    invoke-virtual {p1, p2}, Lcom/tappx/a/f3;->a(Lcom/tappx/a/f3$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/h2;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/h2;Lcom/tappx/a/u1;)Lcom/tappx/a/u1;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/h2;->p:Lcom/tappx/a/u1;

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/h2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/h2;->j()V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/h2;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/tappx/a/h2;->b(Lcom/tappx/sdk/android/TappxAdError;)V

    return-void
.end method

.method private a(Lcom/tappx/a/u1;)V
    .registers 6

    .line 21
    invoke-virtual {p1}, Lcom/tappx/a/u1;->c()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_1f

    .line 24
    iget-object p1, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {p1, v0, v1}, Lcom/tappx/a/f3;->a(J)V

    .line 25
    iget-object p1, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {p1}, Lcom/tappx/a/f3;->d()V

    goto :goto_24

    .line 27
    :cond_1f
    iget-object p1, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {p1}, Lcom/tappx/a/f3;->e()V

    :goto_24
    return-void
.end method

.method static synthetic b(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitial;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/h2;Lcom/tappx/a/u1;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/h2;->a(Lcom/tappx/a/u1;)V

    return-void
.end method

.method private b(Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    .line 4
    iget-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/tappx/a/h2;->r:Z

    return-void

    .line 8
    :cond_8
    iget-object v0, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialLoadFailed(Lcom/tappx/sdk/android/TappxInterstitial;Lcom/tappx/sdk/android/TappxAdError;)V

    :cond_11
    return-void
.end method

.method static synthetic c(Lcom/tappx/a/h2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/h2;->k()V

    return-void
.end method

.method static synthetic d(Lcom/tappx/a/h2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/h2;->g()V

    return-void
.end method

.method static synthetic e(Lcom/tappx/a/h2;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tappx/a/h2;->s:Z

    return p0
.end method

.method static synthetic f(Lcom/tappx/a/h2;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tappx/a/h2;->r:Z

    return p0
.end method

.method private g()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/d1;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    :cond_a
    return-void
.end method

.method static synthetic g(Lcom/tappx/a/h2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/h2;->i()V

    return-void
.end method

.method static synthetic h(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitialListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    return-object p0
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    .line 3
    invoke-virtual {p0}, Lcom/tappx/a/f2;->c()V

    return-void
.end method

.method private i()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    return-void

    .line 5
    :cond_8
    iget-object v0, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-interface {v0, v1}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialLoaded(Lcom/tappx/sdk/android/TappxInterstitial;)V

    :cond_11
    return-void
.end method

.method private j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {v0}, Lcom/tappx/a/f3;->e()V

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/h2;->h()V

    return-void
.end method

.method private k()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/h2;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {v0}, Lcom/tappx/a/f3;->e()V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-interface {v0, v1}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialShown(Lcom/tappx/sdk/android/TappxInterstitial;)V

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    invoke-virtual {v0}, Lcom/tappx/a/d1;->g()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    :cond_20
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 15
    invoke-super {p0}, Lcom/tappx/a/f2;->a()V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/tappx/a/h2;->a(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    .line 18
    invoke-direct {p0}, Lcom/tappx/a/h2;->g()V

    .line 19
    iget-object v0, p0, Lcom/tappx/a/h2;->n:Lcom/tappx/a/e1;

    invoke-interface {v0}, Lcom/tappx/a/o1;->destroy()V

    .line 20
    iget-object v0, p0, Lcom/tappx/a/h2;->m:Lcom/tappx/a/f3;

    invoke-virtual {v0}, Lcom/tappx/a/f3;->e()V

    return-void
.end method

.method public a(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/tappx/a/h2;->g()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    .line 14
    invoke-super {p0, p1}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method protected a(Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    .line 6
    iget-boolean v0, p0, Lcom/tappx/a/h2;->r:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/tappx/a/h2;->r:Z

    return-void

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    if-eqz v0, :cond_11

    .line 11
    iget-object v1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialLoadFailed(Lcom/tappx/sdk/android/TappxInterstitial;Lcom/tappx/sdk/android/TappxAdError;)V

    :cond_11
    return-void
.end method

.method public a(Lcom/tappx/sdk/android/TappxInterstitialListener;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/tappx/a/h2;->o:Lcom/tappx/sdk/android/TappxInterstitialListener;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/tappx/a/h2;->s:Z

    return-void
.end method

.method protected b(Lcom/tappx/a/w1;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/tappx/a/h2;->n:Lcom/tappx/a/e1;

    invoke-virtual {p0}, Lcom/tappx/a/f2;->b()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/tappx/a/o1;->a(Landroid/content/Context;Lcom/tappx/a/w1;)V

    return-void
.end method

.method protected d()V
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/tappx/a/f2;->d()V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/h2;->n:Lcom/tappx/a/e1;

    invoke-interface {v0}, Lcom/tappx/a/o1;->a()V

    return-void
.end method

.method public e()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/h2;->q:Lcom/tappx/a/d1;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public f()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    iget-object v1, p0, Lcom/tappx/a/h2;->l:Lcom/tappx/sdk/android/TappxInterstitial;

    invoke-virtual {v1}, Lcom/tappx/sdk/android/TappxInterstitial;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    new-instance v1, Lcom/tappx/a/h2$c;

    invoke-direct {v1, p0}, Lcom/tappx/a/h2$c;-><init>(Lcom/tappx/a/h2;)V

    invoke-virtual {v0, v1}, Lcom/tappx/a/n2;->a(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 11
    :cond_1f
    invoke-direct {p0}, Lcom/tappx/a/h2;->k()V

    :goto_22
    return-void
.end method
