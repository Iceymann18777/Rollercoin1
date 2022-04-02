.class public final Lcom/tappx/a/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/tappx/a/n2;

.field private final c:Lcom/tappx/a/e5;

.field private d:Lcom/tappx/a/c5$a;

.field private e:Lcom/tappx/a/f5;

.field private f:Lcom/tappx/a/t3;

.field private g:Lcom/tappx/a/p3;

.field private h:I

.field private i:Lcom/tappx/a/t3$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 175
    invoke-static {p1}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    invoke-static {}, Lcom/tappx/a/e5;->a()Lcom/tappx/a/e5;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tappx/a/y4;-><init>(Landroid/app/Activity;Lcom/tappx/a/n2;Lcom/tappx/a/e5;)V

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Lcom/tappx/a/n2;Lcom/tappx/a/e5;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/tappx/a/y4$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/y4$b;-><init>(Lcom/tappx/a/y4;)V

    iput-object v0, p0, Lcom/tappx/a/y4;->i:Lcom/tappx/a/t3$b;

    .line 172
    iput-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    .line 173
    iput-object p2, p0, Lcom/tappx/a/y4;->b:Lcom/tappx/a/n2;

    .line 174
    iput-object p3, p0, Lcom/tappx/a/y4;->c:Lcom/tappx/a/e5;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/y4;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/tappx/a/t3;
    .registers 6

    .line 24
    iget-object v0, p0, Lcom/tappx/a/y4;->c:Lcom/tappx/a/e5;

    iget v1, p0, Lcom/tappx/a/y4;->h:I

    invoke-virtual {v0, v1}, Lcom/tappx/a/e5;->a(I)Lcom/tappx/a/e5$a;

    move-result-object v0

    if-nez v0, :cond_25

    .line 26
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/tappx/a/w3;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tappx/a/t3;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    new-instance v2, Lcom/tappx/a/t3$a;

    invoke-direct {v2}, Lcom/tappx/a/t3$a;-><init>()V

    iget-object v3, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v3}, Lcom/tappx/a/f5;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tappx/a/t3$a;->a(Z)Lcom/tappx/a/t3$a;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;

    return-object v0

    .line 30
    :cond_25
    invoke-virtual {v0}, Lcom/tappx/a/e5$a;->a()Lcom/tappx/a/t3;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/tappx/a/k3;)V
    .registers 3

    .line 22
    invoke-static {p2}, Lcom/tappx/a/m3;->a(Lcom/tappx/a/k3;)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_9
    return-void
.end method

.method private a(Lcom/tappx/a/j3;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 18
    sget-object v0, Lcom/tappx/a/j3;->a:Lcom/tappx/a/j3;

    if-ne p1, v0, :cond_7

    goto :goto_c

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/tappx/a/q3;->a(Landroid/app/Activity;Lcom/tappx/a/j3;)V

    :cond_c
    :goto_c
    return-void
.end method

.method static synthetic b(Lcom/tappx/a/y4;)Lcom/tappx/a/c5$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/y4;->d:Lcom/tappx/a/c5$a;

    return-object p0
.end method

.method static synthetic c(Lcom/tappx/a/y4;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/y4;->j()V

    return-void
.end method

.method static synthetic d(Lcom/tappx/a/y4;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/y4;->l()V

    return-void
.end method

.method private e()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->b:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->j()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/y4;->i()Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()Landroid/view/View;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/y4;->h()Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tappx/a/p3;

    iget-object v2, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/tappx/a/p3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    .line 3
    new-instance v2, Lcom/tappx/a/y4$a;

    invoke-direct {v2, p0}, Lcom/tappx/a/y4$a;-><init>(Lcom/tappx/a/y4;)V

    invoke-virtual {v1, v2}, Lcom/tappx/a/p3;->setCloseListener(Lcom/tappx/a/p3$f;)V

    .line 10
    invoke-direct {p0}, Lcom/tappx/a/y4;->g()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 11
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v2, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    invoke-virtual {v2, v0, v1}, Lcom/tappx/a/p3;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v1}, Lcom/tappx/a/f5;->c()I

    move-result v1

    iget-object v2, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v2}, Lcom/tappx/a/f5;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tappx/a/p3;->a(IZ)V

    .line 15
    invoke-direct {p0}, Lcom/tappx/a/y4;->e()V

    .line 16
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v1}, Lcom/tappx/a/f5;->b()Lcom/tappx/a/k3;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/y4;->a(Landroid/view/View;Lcom/tappx/a/k3;)V

    .line 17
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    return-object v0
.end method

.method private g()Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v1}, Lcom/tappx/a/f5;->e()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/4 v3, -0x1

    if-lez v1, :cond_20

    int-to-float v1, v1

    .line 5
    iget-object v4, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result v1

    if-le v1, v2, :cond_21

    :cond_20
    const/4 v1, -0x1

    .line 12
    :cond_21
    iget-object v2, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v2}, Lcom/tappx/a/f5;->d()I

    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-lez v2, :cond_38

    int-to-float v2, v2

    .line 15
    iget-object v4, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result v2

    if-le v2, v0, :cond_37

    goto :goto_38

    :cond_37
    move v3, v2

    .line 23
    :cond_38
    :goto_38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private h()Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/tappx/a/y3;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 4
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 7
    :cond_19
    invoke-direct {p0, v0}, Lcom/tappx/a/y4;->a(Ljava/lang/String;)Lcom/tappx/a/t3;

    move-result-object v1

    iput-object v1, p0, Lcom/tappx/a/y4;->f:Lcom/tappx/a/t3;

    .line 8
    iget-object v2, p0, Lcom/tappx/a/y4;->i:Lcom/tappx/a/t3$b;

    invoke-interface {v1, v2}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/t3$b;)V

    .line 9
    iget-object v1, p0, Lcom/tappx/a/y4;->f:Lcom/tappx/a/t3;

    sget-object v2, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    new-instance v3, Lcom/tappx/a/t3$a;

    invoke-direct {v3}, Lcom/tappx/a/t3$a;-><init>()V

    iget-object v4, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v4}, Lcom/tappx/a/f5;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tappx/a/t3$a;->a(Z)Lcom/tappx/a/t3$a;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tappx/a/i3;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseEnabled(Z)V

    return-void
.end method

.method private k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {v0}, Lcom/tappx/a/f5;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget v0, Lcom/tappx/a/n;->b:I

    goto :goto_d

    :cond_b
    const/high16 v0, -0x1000000

    .line 6
    :goto_d
    iget-object v1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/tappx/a/y4;->f:Lcom/tappx/a/t3;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0}, Lcom/tappx/a/t3;->destroy()V

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 35
    iget-object v0, p0, Lcom/tappx/a/y4;->d:Lcom/tappx/a/c5$a;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/tappx/a/c5$a;->d()V

    :cond_13
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tappx/a/y4;->d:Lcom/tappx/a/c5$a;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "aavc_otZMuRlffpTHI9DsaLyI"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tappx/a/y4;->h:I

    .line 4
    invoke-static {p1}, Lcom/tappx/a/a5;->a(I)Lcom/tappx/a/c5$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/y4;->d:Lcom/tappx/a/c5$a;

    if-eqz p1, :cond_1a

    .line 5
    invoke-interface {p1}, Lcom/tappx/a/c5$a;->b()V

    .line 6
    :cond_1a
    iget-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "aavc_fagZVUC6pOQOxawVwpVy"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tappx/a/f5;

    iput-object p1, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    if-nez p1, :cond_32

    .line 8
    iget-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_32
    invoke-direct {p0}, Lcom/tappx/a/y4;->k()V

    .line 12
    iget-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 13
    iget-object p1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 14
    iget-object p1, p0, Lcom/tappx/a/y4;->e:Lcom/tappx/a/f5;

    invoke-virtual {p1}, Lcom/tappx/a/f5;->a()Lcom/tappx/a/j3;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/y4;->a(Lcom/tappx/a/j3;)V

    .line 16
    invoke-direct {p0}, Lcom/tappx/a/y4;->f()Landroid/view/View;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/y4;->f:Lcom/tappx/a/t3;

    if-eqz v0, :cond_d

    .line 3
    iget-object v1, p0, Lcom/tappx/a/y4;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t3;->a(Z)V

    :cond_d
    return-void
.end method

.method public c()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/y4;->f:Lcom/tappx/a/t3;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0}, Lcom/tappx/a/t3;->a()V

    :cond_7
    return-void
.end method

.method public d()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/y4;->g:Lcom/tappx/a/p3;

    invoke-virtual {v0}, Lcom/tappx/a/p3;->a()Z

    move-result v0

    return v0
.end method
