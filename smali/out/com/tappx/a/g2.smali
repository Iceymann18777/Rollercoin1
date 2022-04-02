.class public Lcom/tappx/a/g2;
.super Lcom/tappx/a/f2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/g2$c;
    }
.end annotation


# instance fields
.field private final l:Lcom/tappx/sdk/android/TappxBanner;

.field private final m:Lcom/tappx/a/n0;

.field private final n:Lcom/tappx/a/f3;

.field private o:Landroid/view/View;

.field private p:Lcom/tappx/sdk/android/TappxBannerListener;

.field private q:Z

.field private r:Z

.field private s:Lcom/tappx/a/u1;

.field private t:Z

.field private u:I

.field private final v:Lcom/tappx/a/n0$a;

.field private final w:Lcom/tappx/a/f3$b;


# direct methods
.method constructor <init>(Lcom/tappx/sdk/android/TappxBanner;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tappx/a/v1;->b:Lcom/tappx/a/v1;

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/f2;-><init>(Landroid/content/Context;Lcom/tappx/a/v1;)V

    .line 99
    new-instance v0, Lcom/tappx/a/g2$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/g2$a;-><init>(Lcom/tappx/a/g2;)V

    iput-object v0, p0, Lcom/tappx/a/g2;->v:Lcom/tappx/a/n0$a;

    .line 179
    new-instance v0, Lcom/tappx/a/g2$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/g2$b;-><init>(Lcom/tappx/a/g2;)V

    iput-object v0, p0, Lcom/tappx/a/g2;->w:Lcom/tappx/a/f3$b;

    .line 180
    iput-object p1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    .line 181
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/b;->a(Landroid/content/Context;)Lcom/tappx/a/b;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/tappx/a/b;->b()Lcom/tappx/a/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/g2;->m:Lcom/tappx/a/n0;

    .line 183
    iget-object v1, p0, Lcom/tappx/a/g2;->v:Lcom/tappx/a/n0$a;

    invoke-interface {v0, v1}, Lcom/tappx/a/n0;->a(Lcom/tappx/a/n0$a;)V

    .line 184
    invoke-virtual {p1}, Lcom/tappx/a/b;->a()Lcom/tappx/a/f3;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    .line 185
    iget-object v0, p0, Lcom/tappx/a/g2;->w:Lcom/tappx/a/f3$b;

    invoke-virtual {p1, v0}, Lcom/tappx/a/f3;->a(Lcom/tappx/a/f3$b;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/g2;Lcom/tappx/a/u1;)Lcom/tappx/a/u1;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/g2;->s:Lcom/tappx/a/u1;

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBanner;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 25
    iget-object v0, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 26
    invoke-direct {p0}, Lcom/tappx/a/g2;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/g2;Landroid/view/View;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/g2;Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/sdk/android/TappxAdError;)V

    return-void
.end method

.method private a(Lcom/tappx/a/u1;)V
    .registers 3

    .line 27
    invoke-virtual {p1}, Lcom/tappx/a/u1;->a()Lcom/tappx/a/t1;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/b3;->a(Lcom/tappx/a/t1;)Lcom/tappx/a/k3;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/m3;->a(Lcom/tappx/a/k3;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 29
    iget-object v0, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/tappx/a/g2;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/g2;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/g2;->p:Lcom/tappx/sdk/android/TappxBannerListener;

    return-object p0
.end method

.method private b(Lcom/tappx/sdk/android/TappxBanner$AdSize;)Ljava/lang/String;
    .registers 4

    .line 3
    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tappx/sdk/android/TappxBanner$AdSize;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/g2;Lcom/tappx/a/u1;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/u1;)V

    return-void
.end method

.method private b(Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/tappx/a/g2;->p:Lcom/tappx/sdk/android/TappxBannerListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-interface {v0, v1, p1}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerLoadFailed(Lcom/tappx/sdk/android/TappxBanner;Lcom/tappx/sdk/android/TappxAdError;)V

    :cond_9
    return-void
.end method

.method private c(I)V
    .registers 5

    if-nez p1, :cond_15

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Rfk0iXqG1NksAriLhvTIFrKC3X10rpfR3hyZYQqfkTdNYvQAOBsj6pQCdtEQgCZY"

    .line 4
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {v0}, Lcom/tappx/a/f3;->e()V

    .line 6
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {v0, p1}, Lcom/tappx/a/f3;->a(Z)V

    return-void

    .line 9
    :cond_15
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/f3;->a(Z)V

    if-lez p1, :cond_24

    .line 12
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tappx/a/f3;->a(J)V

    goto :goto_29

    .line 14
    :cond_24
    iget-object p1, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {p1}, Lcom/tappx/a/f3;->b()V

    :goto_29
    return-void
.end method

.method static synthetic c(Lcom/tappx/a/g2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g2;->j()V

    return-void
.end method

.method private c(Lcom/tappx/a/w1;)V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/tappx/a/g2;->q:Z

    if-nez v0, :cond_b

    .line 3
    invoke-virtual {p1}, Lcom/tappx/a/w1;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->c(I)V

    :cond_b
    return-void
.end method

.method static synthetic d(Lcom/tappx/a/g2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g2;->f()V

    return-void
.end method

.method private e()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->j()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4
    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-direct {p0}, Lcom/tappx/a/g2;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/tappx/a/g2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g2;->i()V

    return-void
.end method

.method private f()V
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/tappx/a/g2;->t:Z

    if-nez v0, :cond_5

    return-void

    .line 3
    :cond_5
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {v0}, Lcom/tappx/a/f3;->d()V

    return-void
.end method

.method static synthetic f(Lcom/tappx/a/g2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g2;->g()V

    return-void
.end method

.method static synthetic g(Lcom/tappx/a/g2;)Lcom/tappx/a/f3;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    return-object p0
.end method

.method private g()V
    .registers 5

    .line 2
    iget v0, p0, Lcom/tappx/a/g2;->u:I

    const/4 v1, 0x1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3
    :goto_a
    iget-boolean v2, p0, Lcom/tappx/a/g2;->r:Z

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/tappx/a/g2;->s:Lcom/tappx/a/u1;

    if-eqz v2, :cond_22

    iget-boolean v3, p0, Lcom/tappx/a/g2;->t:Z

    if-eqz v3, :cond_22

    if-nez v0, :cond_19

    goto :goto_22

    .line 6
    :cond_19
    iput-boolean v1, p0, Lcom/tappx/a/g2;->r:Z

    .line 7
    invoke-virtual {v2}, Lcom/tappx/a/u1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tappx/a/f2;->c(Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private h()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g2;->o:Landroid/view/View;

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/i3;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/g2;->o:Landroid/view/View;

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/tappx/a/g2;->o:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g2;->p:Lcom/tappx/sdk/android/TappxBannerListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-interface {v0, v1}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerLoaded(Lcom/tappx/sdk/android/TappxBanner;)V

    :cond_9
    return-void
.end method

.method private j()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/f2;->k:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/tappx/a/g2;->t:Z

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    const-string v0, "WYP3IlFsQbao/nmzk+V5+EDTMrEq8ygXRWqwiT3aXVk"

    .line 4
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fhrgFfJqgVZoVNjzyS7CzU1i9AA4GyPqlAJ20RCAJlg"

    .line 5
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/tappx/a/f2;->c()V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 6
    invoke-super {p0}, Lcom/tappx/a/f2;->a()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/tappx/a/g2;->a(Lcom/tappx/sdk/android/TappxBannerListener;)V

    .line 8
    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/tappx/a/g2;->m:Lcom/tappx/a/n0;

    invoke-interface {v1}, Lcom/tappx/a/o1;->destroy()V

    .line 10
    iget-object v1, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {v1}, Lcom/tappx/a/f3;->e()V

    .line 11
    iput-object v0, p0, Lcom/tappx/a/g2;->s:Lcom/tappx/a/u1;

    return-void
.end method

.method public a(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/tappx/a/g2;->u:I

    .line 32
    invoke-direct {p0}, Lcom/tappx/a/g2;->g()V

    return-void
.end method

.method public a(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 5

    .line 16
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17
    iget-object v0, p0, Lcom/tappx/a/f2;->g:Lcom/tappx/a/n2;

    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 19
    :cond_14
    invoke-super {p0, p1}, Lcom/tappx/a/f2;->a(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method protected a(Lcom/tappx/sdk/android/TappxAdError;)V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/tappx/a/g2;->p:Lcom/tappx/sdk/android/TappxBannerListener;

    if-eqz v0, :cond_9

    .line 21
    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-interface {v0, v1, p1}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerLoadFailed(Lcom/tappx/sdk/android/TappxBanner;Lcom/tappx/sdk/android/TappxAdError;)V

    .line 23
    :cond_9
    invoke-direct {p0}, Lcom/tappx/a/g2;->f()V

    return-void
.end method

.method public a(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V
    .registers 2

    if-nez p1, :cond_4

    .line 13
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    .line 14
    :cond_4
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/sdk/android/TappxBanner$AdSize;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/tappx/a/f2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tappx/sdk/android/TappxBannerListener;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/tappx/a/g2;->p:Lcom/tappx/sdk/android/TappxBannerListener;

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {v0, p1}, Lcom/tappx/a/f3;->a(Z)V

    return-void
.end method

.method public b(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 10
    :goto_5
    iput-boolean v0, p0, Lcom/tappx/a/g2;->q:Z

    .line 11
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->c(I)V

    return-void
.end method

.method protected b(Lcom/tappx/a/w1;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1}, Lcom/tappx/a/g2;->c(Lcom/tappx/a/w1;)V

    .line 8
    iget-object v0, p0, Lcom/tappx/a/g2;->m:Lcom/tappx/a/n0;

    iget-object v1, p0, Lcom/tappx/a/g2;->l:Lcom/tappx/sdk/android/TappxBanner;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/tappx/a/o1;->a(Landroid/content/Context;Lcom/tappx/a/w1;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "r+UiUzt9REOhqndIQXQTv4xLHJ5RqFQyDLMKVsbc2y8"

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iput-boolean p1, p0, Lcom/tappx/a/g2;->t:Z

    if-eqz p1, :cond_1c

    .line 15
    invoke-direct {p0}, Lcom/tappx/a/g2;->g()V

    .line 16
    iget-object p1, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {p1}, Lcom/tappx/a/f3;->c()V

    goto :goto_21

    .line 18
    :cond_1c
    iget-object p1, p0, Lcom/tappx/a/g2;->n:Lcom/tappx/a/f3;

    invoke-virtual {p1}, Lcom/tappx/a/f3;->a()V

    :goto_21
    return-void
.end method

.method protected d()V
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/tappx/a/f2;->d()V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/g2;->m:Lcom/tappx/a/n0;

    invoke-interface {v0}, Lcom/tappx/a/o1;->a()V

    return-void
.end method
