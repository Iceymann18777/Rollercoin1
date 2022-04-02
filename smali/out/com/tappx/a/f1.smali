.class public Lcom/tappx/a/f1;
.super Lcom/tappx/a/p1;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/e1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/f1$a;
    }
.end annotation


# instance fields
.field private d:Lcom/tappx/a/e1$a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/d1$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tappx/a/d1;

.field private g:Lcom/tappx/a/d1;

.field private h:Lcom/tappx/a/f1$a;

.field private i:Lcom/tappx/a/f1$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tappx/a/d1$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/f1;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/f1;->f:Lcom/tappx/a/d1;

    return-object p1
.end method

.method private a(Lcom/tappx/a/d1;)Lcom/tappx/a/f1$a;
    .registers 3

    .line 12
    new-instance v0, Lcom/tappx/a/f1$a;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/f1$a;-><init>(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tappx/a/f1;)Lcom/tappx/a/f1$a;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/a/f1;->h:Lcom/tappx/a/f1$a;

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/f1;Lcom/tappx/a/f1$a;)Lcom/tappx/a/f1$a;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/f1;->h:Lcom/tappx/a/f1$a;

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/f1;->g:Lcom/tappx/a/d1;

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/f1;)Lcom/tappx/a/f1$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/f1;->i:Lcom/tappx/a/f1$a;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/f1;Lcom/tappx/a/f1$a;)Lcom/tappx/a/f1$a;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/f1;->i:Lcom/tappx/a/f1$a;

    return-object p1
.end method

.method static synthetic c(Lcom/tappx/a/f1;)Lcom/tappx/a/e1$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/f1;->d:Lcom/tappx/a/e1$a;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/tappx/a/a2;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/tappx/a/f1;->d:Lcom/tappx/a/e1$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/tappx/a/e1$a;->a(Lcom/tappx/a/a2;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/tappx/a/e1$a;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/tappx/a/f1;->d:Lcom/tappx/a/e1$a;

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/u1;)Z
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/tappx/a/f1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/d1$a;

    .line 8
    invoke-interface {v1, p2}, Lcom/tappx/a/d1$a;->a(Lcom/tappx/a/u1;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-interface {v1}, Lcom/tappx/a/d1$a;->a()Lcom/tappx/a/d1;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/f1;->f:Lcom/tappx/a/d1;

    .line 10
    invoke-direct {p0, v0}, Lcom/tappx/a/f1;->a(Lcom/tappx/a/d1;)Lcom/tappx/a/f1$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/f1;->h:Lcom/tappx/a/f1$a;

    .line 11
    iget-object v1, p0, Lcom/tappx/a/f1;->f:Lcom/tappx/a/d1;

    invoke-virtual {v1, p1, v0, p2}, Lcom/tappx/a/d1;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/tappx/a/f1;->g:Lcom/tappx/a/d1;

    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/tappx/a/d1;->b()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tappx/a/f1;->g:Lcom/tappx/a/d1;

    .line 7
    iput-object v0, p0, Lcom/tappx/a/f1;->i:Lcom/tappx/a/f1$a;

    :cond_c
    return-void
.end method

.method protected c()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/f1;->f:Lcom/tappx/a/d1;

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/d1;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tappx/a/f1;->f:Lcom/tappx/a/d1;

    .line 5
    iput-object v0, p0, Lcom/tappx/a/f1;->h:Lcom/tappx/a/f1$a;

    :cond_c
    return-void
.end method
