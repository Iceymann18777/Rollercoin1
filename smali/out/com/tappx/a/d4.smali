.class public Lcom/tappx/a/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/d4$i;,
        Lcom/tappx/a/d4$j;,
        Lcom/tappx/a/d4$k;,
        Lcom/tappx/a/d4$h;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/tappx/a/b4;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/tappx/a/p3;

.field private f:Landroid/view/ViewGroup;

.field private final g:Lcom/tappx/a/d4$j;

.field private final h:Lcom/tappx/a/n4;

.field private i:Lcom/tappx/a/v4;

.field private j:Lcom/tappx/a/d4$h;

.field private k:Lcom/tappx/a/d4$k;

.field private l:Lcom/tappx/a/r4;

.field private m:Lcom/tappx/a/q4;

.field private n:Lcom/tappx/a/q4;

.field private final o:Lcom/tappx/a/c4;

.field private final p:Lcom/tappx/a/c4;

.field private q:Lcom/tappx/a/d4$i;

.field private r:Ljava/lang/Integer;

.field private s:Z

.field private t:Lcom/tappx/a/l4;

.field private final u:Lcom/tappx/a/k4;

.field private v:Z

.field private w:Z

.field private final x:Lcom/tappx/a/c4$h;

.field private final y:Lcom/tappx/a/c4$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tappx/a/b4;)V
    .registers 9

    .line 1
    new-instance v3, Lcom/tappx/a/c4;

    invoke-direct {v3, p2}, Lcom/tappx/a/c4;-><init>(Lcom/tappx/a/b4;)V

    new-instance v4, Lcom/tappx/a/c4;

    sget-object v0, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    invoke-direct {v4, v0}, Lcom/tappx/a/c4;-><init>(Lcom/tappx/a/b4;)V

    new-instance v5, Lcom/tappx/a/d4$j;

    invoke-direct {v5}, Lcom/tappx/a/d4$j;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tappx/a/d4;-><init>(Landroid/content/Context;Lcom/tappx/a/b4;Lcom/tappx/a/c4;Lcom/tappx/a/c4;Lcom/tappx/a/d4$j;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/b4;Lcom/tappx/a/c4;Lcom/tappx/a/c4;Lcom/tappx/a/d4$j;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    iput-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    .line 27
    new-instance v0, Lcom/tappx/a/d4$i;

    invoke-direct {v0, p0}, Lcom/tappx/a/d4$i;-><init>(Lcom/tappx/a/d4;)V

    iput-object v0, p0, Lcom/tappx/a/d4;->q:Lcom/tappx/a/d4$i;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/tappx/a/d4;->s:Z

    .line 38
    sget-object v0, Lcom/tappx/a/l4;->d:Lcom/tappx/a/l4;

    iput-object v0, p0, Lcom/tappx/a/d4;->t:Lcom/tappx/a/l4;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/tappx/a/d4;->w:Z

    .line 101
    new-instance v0, Lcom/tappx/a/d4$c;

    invoke-direct {v0, p0}, Lcom/tappx/a/d4$c;-><init>(Lcom/tappx/a/d4;)V

    iput-object v0, p0, Lcom/tappx/a/d4;->x:Lcom/tappx/a/c4$h;

    .line 180
    new-instance v0, Lcom/tappx/a/d4$d;

    invoke-direct {v0, p0}, Lcom/tappx/a/d4$d;-><init>(Lcom/tappx/a/d4;)V

    iput-object v0, p0, Lcom/tappx/a/d4;->y:Lcom/tappx/a/c4$h;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    .line 182
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3a

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    goto :goto_42

    .line 187
    :cond_3a
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    .line 190
    :goto_42
    iput-object p2, p0, Lcom/tappx/a/d4;->c:Lcom/tappx/a/b4;

    .line 191
    iput-object p3, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    .line 192
    iput-object p4, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    .line 193
    iput-object p5, p0, Lcom/tappx/a/d4;->g:Lcom/tappx/a/d4$j;

    .line 195
    sget-object p1, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    iput-object p1, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    .line 197
    iget-object p1, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 198
    new-instance p2, Lcom/tappx/a/n4;

    iget-object p3, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, p3, p1}, Lcom/tappx/a/n4;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    .line 199
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    .line 200
    new-instance p1, Lcom/tappx/a/p3;

    iget-object p2, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/tappx/a/p3;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    .line 201
    new-instance p2, Lcom/tappx/a/d4$a;

    invoke-direct {p2, p0}, Lcom/tappx/a/d4$a;-><init>(Lcom/tappx/a/d4;)V

    invoke-virtual {p1, p2}, Lcom/tappx/a/p3;->setCloseListener(Lcom/tappx/a/p3$f;)V

    .line 208
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance p2, Lcom/tappx/a/d4$b;

    invoke-direct {p2, p0}, Lcom/tappx/a/d4$b;-><init>(Lcom/tappx/a/d4;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object p2, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object p1, p0, Lcom/tappx/a/d4;->q:Lcom/tappx/a/d4$i;

    iget-object p2, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/tappx/a/d4$i;->a(Landroid/content/Context;)V

    .line 219
    iget-object p1, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    iget-object p2, p0, Lcom/tappx/a/d4;->x:Lcom/tappx/a/c4$h;

    invoke-virtual {p1, p2}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4$h;)V

    .line 220
    iget-object p1, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    iget-object p2, p0, Lcom/tappx/a/d4;->y:Lcom/tappx/a/c4$h;

    invoke-virtual {p1, p2}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4$h;)V

    .line 221
    new-instance p1, Lcom/tappx/a/k4;

    invoke-direct {p1}, Lcom/tappx/a/k4;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/d4;->u:Lcom/tappx/a/k4;

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .registers 2

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 204
    invoke-static {v0, p0}, Lcom/tappx/a/q3;->a(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->j:Lcom/tappx/a/d4$h;

    return-object p0
.end method

.method private a(Lcom/tappx/a/v4;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/tappx/a/v4;Ljava/lang/Runnable;)V
    .registers 6

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    .line 32
    iput-object p1, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    .line 33
    iget-object v1, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    invoke-virtual {v1, p1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/v4;)V

    .line 36
    iget-object v1, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v1}, Lcom/tappx/a/c4;->c()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 37
    iget-object v1, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v1, p1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/v4;)V

    .line 40
    :cond_2a
    iget-object v1, p0, Lcom/tappx/a/d4;->j:Lcom/tappx/a/d4$h;

    if-eqz v1, :cond_49

    .line 41
    sget-object v2, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    if-ne p1, v2, :cond_36

    .line 42
    invoke-interface {v1}, Lcom/tappx/a/d4$h;->c()V

    goto :goto_49

    :cond_36
    if-ne v0, v2, :cond_40

    .line 43
    sget-object v0, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    if-ne p1, v0, :cond_40

    .line 44
    invoke-interface {v1}, Lcom/tappx/a/d4$h;->a()V

    goto :goto_49

    .line 45
    :cond_40
    sget-object v0, Lcom/tappx/a/v4;->e:Lcom/tappx/a/v4;

    if-ne p1, v0, :cond_49

    .line 46
    iget-object p1, p0, Lcom/tappx/a/d4;->j:Lcom/tappx/a/d4$h;

    invoke-interface {p1}, Lcom/tappx/a/d4$h;->a()V

    .line 50
    :cond_49
    :goto_49
    invoke-direct {p0, p2}, Lcom/tappx/a/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 7

    .line 18
    iget-object v0, p0, Lcom/tappx/a/d4;->g:Lcom/tappx/a/d4$j;

    invoke-virtual {v0}, Lcom/tappx/a/d4$j;->a()V

    .line 21
    invoke-direct {p0}, Lcom/tappx/a/d4;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 27
    :cond_c
    iget-object v1, p0, Lcom/tappx/a/d4;->g:Lcom/tappx/a/d4$j;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tappx/a/d4$j;->a([Landroid/view/View;)Lcom/tappx/a/d4$j$a;

    move-result-object v1

    new-instance v2, Lcom/tappx/a/d4$g;

    invoke-direct {v2, p0, v0, p1}, Lcom/tappx/a/d4$g;-><init>(Lcom/tappx/a/d4;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/tappx/a/d4$j$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/d4;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/d4;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/tappx/a/d4;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/d4;->i()V

    return-void
.end method

.method static synthetic c(Lcom/tappx/a/d4;)Lcom/tappx/a/b4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->c:Lcom/tappx/a/b4;

    return-object p0
.end method

.method static synthetic d(Lcom/tappx/a/d4;)Lcom/tappx/a/v4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    return-object p0
.end method

.method static synthetic e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    return-object p0
.end method

.method static synthetic f(Lcom/tappx/a/d4;)Landroid/view/ViewGroup;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/d4;->l()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/tappx/a/d4;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/tappx/a/d4;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/d4;->k()I

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    return-object p0
.end method

.method private i()V
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/tappx/a/d4;->w:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tappx/a/d4;->w:Z

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/tappx/a/d4;->a(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private j()Landroid/view/View;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v0}, Lcom/tappx/a/c4;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    :goto_d
    return-object v0
.end method

.method static synthetic j(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    return-object p0
.end method

.method private k()I
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    const-string v1, "window"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/tappx/a/d4;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    return-object p0
.end method

.method private l()Landroid/view/ViewGroup;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/tappx/a/w4;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1c

    :cond_1a
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    :goto_1c
    return-object v0
.end method

.method static synthetic l(Lcom/tappx/a/d4;)Lcom/tappx/a/k4;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4;->u:Lcom/tappx/a/k4;

    return-object p0
.end method

.method private m()Z
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1c

    .line 4
    invoke-direct {p0}, Lcom/tappx/a/d4;->j()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_1c

    .line 8
    :cond_11
    iget-object v1, p0, Lcom/tappx/a/d4;->u:Lcom/tappx/a/k4;

    invoke-direct {p0}, Lcom/tappx/a/d4;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tappx/a/k4;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic m(Lcom/tappx/a/d4;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/d4;->m()Z

    move-result p0

    return p0
.end method


# virtual methods
.method a(III)I
    .registers 4

    .line 51
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method a()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/tappx/a/d4;->t:Lcom/tappx/a/l4;

    sget-object v1, Lcom/tappx/a/l4;->d:Lcom/tappx/a/l4;

    if-ne v0, v1, :cond_28

    .line 178
    iget-boolean v0, p0, Lcom/tappx/a/d4;->s:Z

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {p0}, Lcom/tappx/a/d4;->h()V

    goto :goto_2f

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 190
    invoke-static {v0}, Lcom/tappx/a/d4;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tappx/a/d4;->b(I)V

    goto :goto_2f

    .line 191
    :cond_20
    new-instance v0, Lcom/tappx/a/f4;

    const-string v1, "Context is not an Activity"

    invoke-direct {v0, v1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_28
    invoke-virtual {v0}, Lcom/tappx/a/l4;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tappx/a/d4;->b(I)V

    :goto_2f
    return-void
.end method

.method a(I)V
    .registers 2

    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/tappx/a/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(IIIILcom/tappx/a/p3$d;Z)V
    .registers 9

    .line 52
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    if-eqz v0, :cond_10a

    .line 58
    iget-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object v1, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_109

    sget-object v1, Lcom/tappx/a/v4;->e:Lcom/tappx/a/v4;

    if-ne v0, v1, :cond_10

    goto/16 :goto_109

    .line 61
    :cond_10
    sget-object v1, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_101

    .line 65
    sget-object v0, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    int-to-float p1, p1

    .line 70
    iget-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result p1

    int-to-float p2, p2

    .line 71
    iget-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result p2

    int-to-float p3, p3

    .line 72
    iget-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result p3

    int-to-float p4, p4

    .line 73
    iget-object v0, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-static {p4, v0}, Lcom/tappx/a/q3;->d(FLandroid/content/Context;)I

    move-result p4

    .line 74
    iget-object v0, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    invoke-virtual {v0}, Lcom/tappx/a/n4;->c()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    .line 75
    iget-object p3, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    invoke-virtual {p3}, Lcom/tappx/a/n4;->c()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p4

    .line 76
    new-instance p4, Landroid/graphics/Rect;

    add-int/2addr p1, v0

    add-int/2addr p2, p3

    invoke-direct {p4, v0, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p6, :cond_91

    .line 80
    iget-object p1, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    invoke-virtual {p1}, Lcom/tappx/a/n4;->e()Landroid/graphics/Rect;

    move-result-object p1

    .line 81
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-gt p2, p3, :cond_89

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-gt p2, p3, :cond_89

    .line 86
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    iget p6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p6, v0

    invoke-virtual {p0, p2, p3, p6}, Lcom/tappx/a/d4;->a(III)I

    move-result p2

    .line 87
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p6, p4, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p3, p6, p1}, Lcom/tappx/a/d4;->a(III)I

    move-result p1

    .line 88
    invoke-virtual {p4, p2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_91

    .line 89
    :cond_89
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Resize invalid)"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tappx/a/p3;->setInvisibleClose(Z)V

    .line 100
    iget-object p1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {p1, p5}, Lcom/tappx/a/p3;->setClosePosition(Lcom/tappx/a/p3$d;)V

    .line 103
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    iget p2, p4, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    invoke-virtual {p3}, Lcom/tappx/a/n4;->e()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 105
    iget p2, p4, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/tappx/a/d4;->h:Lcom/tappx/a/n4;

    invoke-virtual {p3}, Lcom/tappx/a/n4;->e()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    iget-object p2, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object p3, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    if-ne p2, p3, :cond_ed

    .line 107
    iget-object p2, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 108
    iget-object p2, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    iget-object p2, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object p3, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p6, -0x1

    invoke-direct {p4, p6, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Lcom/tappx/a/p3;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 111
    invoke-direct {p0}, Lcom/tappx/a/d4;->l()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f6

    .line 112
    :cond_ed
    sget-object p3, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    if-ne p2, p3, :cond_f6

    .line 113
    iget-object p2, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {p1, p5}, Lcom/tappx/a/p3;->setClosePosition(Lcom/tappx/a/p3$d;)V

    .line 117
    sget-object p1, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    invoke-direct {p0, p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;)V

    return-void

    .line 118
    :cond_101
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Invalid status change"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_109
    :goto_109
    return-void

    .line 119
    :cond_10a
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "View destroyed, ignoring"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tappx/a/d4$h;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/d4;->j:Lcom/tappx/a/d4$h;

    return-void
.end method

.method public a(Lcom/tappx/a/d4$k;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/tappx/a/d4;->k:Lcom/tappx/a/d4$k;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 5
    new-instance v0, Lcom/tappx/a/q4;

    iget-object v1, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tappx/a/q4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    .line 6
    iget-object v1, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    invoke-virtual {v1, v0}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/q4;)V

    .line 7
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/c4;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/net/URI;Z)V
    .registers 8

    .line 120
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    if-eqz v0, :cond_99

    .line 124
    sget-object v0, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    .line 128
    iget-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object v1, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_11

    return-void

    .line 132
    :cond_11
    invoke-virtual {p0}, Lcom/tappx/a/d4;->a()V

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_32

    .line 139
    new-instance v1, Lcom/tappx/a/q4;

    iget-object v2, p0, Lcom/tappx/a/d4;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tappx/a/q4;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    .line 140
    iget-object v2, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v2, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/q4;)V

    .line 143
    iget-object v1, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tappx/a/c4;->d(Ljava/lang/String;)V

    .line 147
    :cond_32
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v2, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object v3, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    const/4 v4, 0x4

    if-ne v2, v3, :cond_6b

    if-eqz v0, :cond_49

    .line 151
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object v2, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    invoke-virtual {v0, v2, p1}, Lcom/tappx/a/p3;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_5c

    .line 153
    :cond_49
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object v2, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {v0, v2, p1}, Lcom/tappx/a/p3;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 157
    :goto_5c
    invoke-direct {p0}, Lcom/tappx/a/d4;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8b

    .line 159
    :cond_6b
    sget-object v1, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    if-ne v2, v1, :cond_8b

    if-eqz v0, :cond_8b

    .line 163
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    invoke-virtual {v0, v1, p1}, Lcom/tappx/a/p3;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 170
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/tappx/a/d4;->a(Z)V

    .line 175
    sget-object p1, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    invoke-direct {p0, p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;)V

    return-void

    .line 176
    :cond_99
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "View destroyed, ignoring"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Z)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {v0}, Lcom/tappx/a/p3;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_b

    return-void

    .line 245
    :cond_b
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/tappx/a/d4;->k:Lcom/tappx/a/d4$k;

    if-eqz v0, :cond_19

    .line 247
    invoke-interface {v0, p1}, Lcom/tappx/a/d4$k;->a(Z)V

    :cond_19
    return-void
.end method

.method a(ZLcom/tappx/a/l4;)V
    .registers 5

    .line 248
    invoke-virtual {p0, p2}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/l4;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 253
    iput-boolean p1, p0, Lcom/tappx/a/d4;->s:Z

    .line 254
    iput-object p2, p0, Lcom/tappx/a/d4;->t:Lcom/tappx/a/l4;

    .line 256
    iget-object p1, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object p2, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    if-eq p1, p2, :cond_16

    iget-object p1, p0, Lcom/tappx/a/d4;->c:Lcom/tappx/a/b4;

    sget-object p2, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    if-ne p1, p2, :cond_19

    .line 257
    :cond_16
    invoke-virtual {p0}, Lcom/tappx/a/d4;->a()V

    :cond_19
    return-void

    .line 258
    :cond_1a
    new-instance p1, Lcom/tappx/a/f4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/tappx/a/d4;->l:Lcom/tappx/a/r4;

    if-eqz v0, :cond_9

    .line 13
    invoke-interface {v0, p1}, Lcom/tappx/a/r4;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method a(Lcom/tappx/a/l4;)Z
    .registers 8

    .line 205
    sget-object v0, Lcom/tappx/a/l4;->d:Lcom/tappx/a/l4;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 217
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_23} :catch_50

    .line 226
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 228
    invoke-virtual {p1}, Lcom/tappx/a/l4;->a()I

    move-result p1

    if-ne v3, p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 233
    :cond_31
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 234
    invoke-static {p1, v3}, Lcom/tappx/a/u4;->a(II)Z

    move-result p1

    .line 237
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_4e

    if-eqz p1, :cond_4c

    .line 238
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 239
    invoke-static {p1, v0}, Lcom/tappx/a/u4;->a(II)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_4f

    :cond_4c
    const/4 v1, 0x0

    goto :goto_4f

    :cond_4e
    move v1, p1

    :goto_4f
    return v1

    :catch_50
    return v2
.end method

.method a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/tappx/a/d4;->l:Lcom/tappx/a/r4;

    if-eqz v0, :cond_9

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/tappx/a/r4;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 17
    :cond_9
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/tappx/a/d4;->g:Lcom/tappx/a/d4$j;

    invoke-virtual {v0}, Lcom/tappx/a/d4$j;->a()V

    .line 13
    :try_start_5
    iget-object v0, p0, Lcom/tappx/a/d4;->q:Lcom/tappx/a/d4$i;

    invoke-virtual {v0}, Lcom/tappx/a/d4$i;->a()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 21
    :goto_18
    iget-boolean v0, p0, Lcom/tappx/a/d4;->v:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/tappx/a/d4;->b(Z)V

    .line 26
    :cond_20
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-static {v0}, Lcom/tappx/a/w4;->b(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/tappx/a/d4;->o:Lcom/tappx/a/c4;

    invoke-virtual {v0}, Lcom/tappx/a/c4;->a()V

    .line 30
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 31
    invoke-virtual {v0}, Lcom/tappx/a/l3;->destroy()V

    .line 32
    iput-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    .line 34
    :cond_34
    iget-object v0, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v0}, Lcom/tappx/a/c4;->a()V

    .line 35
    iget-object v0, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    if-eqz v0, :cond_42

    .line 36
    invoke-virtual {v0}, Lcom/tappx/a/l3;->destroy()V

    .line 37
    iput-object v1, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    :cond_42
    return-void

    .line 38
    :cond_43
    throw v0
.end method

.method b(I)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 40
    iget-object v1, p0, Lcom/tappx/a/d4;->t:Lcom/tappx/a/l4;

    invoke-virtual {p0, v1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/l4;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 44
    iget-object v1, p0, Lcom/tappx/a/d4;->r:Ljava/lang/Integer;

    if-nez v1, :cond_20

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tappx/a/d4;->r:Ljava/lang/Integer;

    .line 49
    :cond_20
    :try_start_20
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    return-void

    .line 50
    :cond_24
    new-instance p1, Lcom/tappx/a/f4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid vale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tappx/a/d4;->t:Lcom/tappx/a/l4;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/d4;->v:Z

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    if-eqz v0, :cond_a

    .line 6
    invoke-static {v0, p1}, Lcom/tappx/a/x4;->a(Landroid/webkit/WebView;Z)V

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    if-eqz v0, :cond_11

    .line 9
    invoke-static {v0, p1}, Lcom/tappx/a/x4;->a(Landroid/webkit/WebView;Z)V

    :cond_11
    return-void
.end method

.method public c()Landroid/widget/FrameLayout;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method d()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object v1, Lcom/tappx/a/v4;->a:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_77

    sget-object v1, Lcom/tappx/a/v4;->e:Lcom/tappx/a/v4;

    if-ne v0, v1, :cond_10

    goto :goto_77

    .line 12
    :cond_10
    sget-object v1, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/tappx/a/d4;->c:Lcom/tappx/a/b4;

    sget-object v1, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    if-ne v0, v1, :cond_1d

    .line 13
    :cond_1a
    invoke-virtual {p0}, Lcom/tappx/a/d4;->h()V

    .line 16
    :cond_1d
    iget-object v0, p0, Lcom/tappx/a/d4;->i:Lcom/tappx/a/v4;

    sget-object v1, Lcom/tappx/a/v4;->c:Lcom/tappx/a/v4;

    if-eq v0, v1, :cond_38

    sget-object v1, Lcom/tappx/a/v4;->d:Lcom/tappx/a/v4;

    if-ne v0, v1, :cond_28

    goto :goto_38

    .line 32
    :cond_28
    sget-object v1, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    if-ne v0, v1, :cond_77

    .line 33
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    sget-object v0, Lcom/tappx/a/v4;->e:Lcom/tappx/a/v4;

    invoke-direct {p0, v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;)V

    goto :goto_77

    .line 35
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v0}, Lcom/tappx/a/c4;->b()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    if-eqz v0, :cond_4f

    .line 37
    iget-object v1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/tappx/a/d4;->p:Lcom/tappx/a/c4;

    invoke-virtual {v0}, Lcom/tappx/a/c4;->a()V

    goto :goto_69

    .line 41
    :cond_4f
    iget-object v0, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    :goto_69
    invoke-direct {p0}, Lcom/tappx/a/d4;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4;->e:Lcom/tappx/a/p3;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    sget-object v0, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    invoke-direct {p0, v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;)V

    :cond_77
    :goto_77
    return-void
.end method

.method e()V
    .registers 3

    .line 2
    sget-object v0, Lcom/tappx/a/v4;->b:Lcom/tappx/a/v4;

    new-instance v1, Lcom/tappx/a/d4$e;

    invoke-direct {v1, p0}, Lcom/tappx/a/d4$e;-><init>(Lcom/tappx/a/d4;)V

    invoke-direct {p0, v0, v1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/v4;Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/tappx/a/d4;->j:Lcom/tappx/a/d4$h;

    if-eqz v0, :cond_13

    .line 19
    iget-object v1, p0, Lcom/tappx/a/d4;->d:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/tappx/a/d4$h;->a(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method f()V
    .registers 2

    .line 2
    new-instance v0, Lcom/tappx/a/d4$f;

    invoke-direct {v0, p0}, Lcom/tappx/a/d4$f;-><init>(Lcom/tappx/a/d4;)V

    invoke-direct {p0, v0}, Lcom/tappx/a/d4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/d4;->v:Z

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d4;->m:Lcom/tappx/a/q4;

    if-eqz v0, :cond_a

    .line 6
    invoke-static {v0}, Lcom/tappx/a/x4;->a(Landroid/webkit/WebView;)V

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/tappx/a/d4;->n:Lcom/tappx/a/q4;

    if-eqz v0, :cond_11

    .line 9
    invoke-static {v0}, Lcom/tappx/a/x4;->a(Landroid/webkit/WebView;)V

    :cond_11
    return-void
.end method

.method h()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 3
    iget-object v1, p0, Lcom/tappx/a/d4;->r:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 5
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tappx/a/d4;->r:Ljava/lang/Integer;

    return-void
.end method
