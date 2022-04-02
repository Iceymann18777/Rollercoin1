.class public Lcom/tappx/a/o0;
.super Lcom/tappx/a/p1;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/o0$b;
    }
.end annotation


# instance fields
.field private d:Lcom/tappx/a/n0$a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/m0$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tappx/a/m0;

.field private g:Lcom/tappx/a/m0;

.field private h:Lcom/tappx/a/o0$b;

.field private i:Lcom/tappx/a/o0$b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tappx/a/m0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/o0;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)Lcom/tappx/a/m0;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/o0;->f:Lcom/tappx/a/m0;

    return-object p1
.end method

.method private a(Lcom/tappx/a/m0;)Lcom/tappx/a/o0$b;
    .registers 4

    .line 16
    new-instance v0, Lcom/tappx/a/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/tappx/a/o0$b;-><init>(Lcom/tappx/a/o0;Lcom/tappx/a/m0;Lcom/tappx/a/o0$a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tappx/a/o0;)Lcom/tappx/a/o0$b;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/a/o0;->h:Lcom/tappx/a/o0$b;

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/o0;Lcom/tappx/a/o0$b;)Lcom/tappx/a/o0$b;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/o0;->h:Lcom/tappx/a/o0$b;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)Lcom/tappx/a/m0;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/o0;->g:Lcom/tappx/a/m0;

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/o0;)Lcom/tappx/a/o0$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/o0;->i:Lcom/tappx/a/o0$b;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/o0;Lcom/tappx/a/o0$b;)Lcom/tappx/a/o0$b;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/o0;->i:Lcom/tappx/a/o0$b;

    return-object p1
.end method

.method static synthetic c(Lcom/tappx/a/o0;)Lcom/tappx/a/n0$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/o0;->d:Lcom/tappx/a/n0$a;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/tappx/a/a2;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/tappx/a/o0;->d:Lcom/tappx/a/n0$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/tappx/a/n0$a;->a(Lcom/tappx/a/a2;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/tappx/a/n0$a;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/tappx/a/o0;->d:Lcom/tappx/a/n0$a;

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/u1;)Z
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/tappx/a/o0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/m0$b;

    .line 8
    invoke-interface {v1, p2}, Lcom/tappx/a/m0$b;->a(Lcom/tappx/a/u1;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-interface {v1}, Lcom/tappx/a/m0$b;->a()Lcom/tappx/a/m0;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/o0;->f:Lcom/tappx/a/m0;

    .line 10
    invoke-direct {p0, v0}, Lcom/tappx/a/o0;->a(Lcom/tappx/a/m0;)Lcom/tappx/a/o0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/o0;->h:Lcom/tappx/a/o0$b;

    .line 11
    iget-object v1, p0, Lcom/tappx/a/o0;->f:Lcom/tappx/a/m0;

    invoke-virtual {v1, p1, v0, p2}, Lcom/tappx/a/m0;->a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/tappx/a/o0;->g:Lcom/tappx/a/m0;

    if-eqz v0, :cond_19

    .line 5
    iget-object v0, p0, Lcom/tappx/a/o0;->i:Lcom/tappx/a/o0$b;

    invoke-virtual {v0}, Lcom/tappx/a/o0$b;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 6
    invoke-direct {p0, v0}, Lcom/tappx/a/o0;->a(Landroid/view/View;)V

    .line 7
    :cond_f
    iget-object v0, p0, Lcom/tappx/a/o0;->g:Lcom/tappx/a/m0;

    invoke-virtual {v0}, Lcom/tappx/a/m0;->b()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tappx/a/o0;->g:Lcom/tappx/a/m0;

    .line 9
    iput-object v0, p0, Lcom/tappx/a/o0;->i:Lcom/tappx/a/o0$b;

    :cond_19
    return-void
.end method

.method protected c()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/o0;->f:Lcom/tappx/a/m0;

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/m0;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tappx/a/o0;->f:Lcom/tappx/a/m0;

    .line 5
    iput-object v0, p0, Lcom/tappx/a/o0;->h:Lcom/tappx/a/o0$b;

    :cond_c
    return-void
.end method
