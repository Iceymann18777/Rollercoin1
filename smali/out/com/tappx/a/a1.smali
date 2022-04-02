.class public Lcom/tappx/a/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Lcom/tappx/a/t3;

.field private e:Lcom/tappx/a/m0$c;

.field private f:Lcom/tappx/a/t3$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/tappx/a/a1$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/a1$a;-><init>(Lcom/tappx/a/a1;)V

    iput-object v0, p0, Lcom/tappx/a/a1;->f:Lcom/tappx/a/t3$b;

    .line 26
    iput-object p1, p0, Lcom/tappx/a/a1;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/a1;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/tappx/a/a1;->b:I

    return p0
.end method

.method static synthetic b(Lcom/tappx/a/a1;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/tappx/a/a1;->c:I

    return p0
.end method

.method static synthetic c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/a1;->e:Lcom/tappx/a/m0$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/a1;->d:Lcom/tappx/a/t3;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/tappx/a/t3;->destroy()V

    :cond_7
    return-void
.end method

.method public a(Lcom/tappx/a/y1;Lcom/tappx/a/m0$c;)V
    .registers 6

    .line 3
    iput-object p2, p0, Lcom/tappx/a/a1;->e:Lcom/tappx/a/m0$c;

    .line 4
    invoke-virtual {p1}, Lcom/tappx/a/y1;->h()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/tappx/a/a1;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tappx/a/w3;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tappx/a/t3;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/a1;->d:Lcom/tappx/a/t3;

    .line 6
    iget-object v1, p0, Lcom/tappx/a/a1;->f:Lcom/tappx/a/t3$b;

    invoke-interface {v0, v1}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/t3$b;)V

    .line 7
    iget-object v0, p0, Lcom/tappx/a/a1;->d:Lcom/tappx/a/t3;

    sget-object v1, Lcom/tappx/a/b4;->a:Lcom/tappx/a/b4;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;

    .line 9
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/tappx/a/a1;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    invoke-virtual {p1}, Lcom/tappx/a/y1;->l()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/tappx/a/y1;->j()I

    move-result p1

    int-to-float v0, v0

    const/4 v1, 0x1

    .line 13
    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tappx/a/a1;->b:I

    int-to-float p1, p1

    .line 14
    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tappx/a/a1;->c:I

    return-void
.end method
