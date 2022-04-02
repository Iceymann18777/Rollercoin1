.class public Lcom/tappx/a/l1;
.super Lcom/tappx/a/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/l1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d1<",
        "Lcom/tappx/a/z1;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/tappx/a/d1$b;

.field private final g:Lcom/tappx/a/v;

.field private h:Lcom/tappx/a/c1;

.field private i:Lcom/tappx/a/v$b;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/d1;-><init>(Lcom/tappx/a/t2;)V

    .line 2
    iput-object p2, p0, Lcom/tappx/a/l1;->g:Lcom/tappx/a/v;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/l1;)Lcom/tappx/a/d1$b;
    .registers 1

    .line 3
    iget-object p0, p0, Lcom/tappx/a/l1;->f:Lcom/tappx/a/d1$b;

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/l1;Lcom/tappx/a/v$b;)Lcom/tappx/a/v$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l1;->i:Lcom/tappx/a/v$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/l1;Lcom/tappx/a/y1;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/y1;)V

    return-void
.end method

.method private a(Lcom/tappx/a/y1;)V
    .registers 4

    .line 9
    invoke-direct {p0, p1}, Lcom/tappx/a/l1;->b(Lcom/tappx/a/y1;)V

    .line 10
    invoke-virtual {p0}, Lcom/tappx/a/d1;->d()Lcom/tappx/a/t2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/u1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/tappx/a/l1;->h:Lcom/tappx/a/c1;

    iget-object v1, p0, Lcom/tappx/a/l1;->f:Lcom/tappx/a/d1$b;

    invoke-virtual {v0, p1, v1, p0}, Lcom/tappx/a/c1;->a(Lcom/tappx/a/y1;Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;)V

    return-void
.end method

.method private b(Lcom/tappx/a/y1;)V
    .registers 4

    .line 2
    sget v0, Lcom/tappx/a/n;->d:I

    .line 3
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result v1

    if-lez v1, :cond_c

    .line 4
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result v0

    :cond_c
    int-to-long v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/tappx/a/d1;->a(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/tappx/a/u1;)J
    .registers 4

    .line 4
    check-cast p1, Lcom/tappx/a/z1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/z1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/tappx/a/z1;)J
    .registers 4

    .line 12
    invoke-virtual {p1}, Lcom/tappx/a/z1;->i()I

    move-result v0

    if-lez v0, :cond_c

    .line 13
    invoke-virtual {p1}, Lcom/tappx/a/z1;->i()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 15
    :cond_c
    invoke-super {p0, p1}, Lcom/tappx/a/d1;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/z1;)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EecDzDUbtS5qsctGaW8eD9qka7saamJrDJfaB/3470s"

    .line 5
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-object p2, p0, Lcom/tappx/a/l1;->f:Lcom/tappx/a/d1$b;

    .line 7
    new-instance p2, Lcom/tappx/a/c1;

    invoke-direct {p2, p1}, Lcom/tappx/a/c1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tappx/a/l1;->h:Lcom/tappx/a/c1;

    .line 8
    iget-object p1, p0, Lcom/tappx/a/l1;->g:Lcom/tappx/a/v;

    new-instance p2, Lcom/tappx/a/l1$a;

    invoke-direct {p2, p0}, Lcom/tappx/a/l1$a;-><init>(Lcom/tappx/a/l1;)V

    new-instance v0, Lcom/tappx/a/l1$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/l1$b;-><init>(Lcom/tappx/a/l1;)V

    invoke-interface {p1, p3, p2, v0}, Lcom/tappx/a/v;->a(Lcom/tappx/a/z1;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/l1;->i:Lcom/tappx/a/v$b;

    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    .registers 4

    .line 1
    check-cast p3, Lcom/tappx/a/z1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/l1;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/z1;)V

    return-void
.end method

.method protected e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l1;->h:Lcom/tappx/a/c1;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tappx/a/c1;->a()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/l1;->i:Lcom/tappx/a/v$b;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/tappx/a/l1;->g:Lcom/tappx/a/v;

    invoke-interface {v1, v0}, Lcom/tappx/a/v;->a(Lcom/tappx/a/v$b;)V

    :cond_10
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tappx/a/l1;->h:Lcom/tappx/a/c1;

    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l1;->h:Lcom/tappx/a/c1;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tappx/a/c1;->b()V

    :cond_7
    return-void
.end method
