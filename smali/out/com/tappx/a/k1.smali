.class public Lcom/tappx/a/k1;
.super Lcom/tappx/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/k1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/m0<",
        "Lcom/tappx/a/z1;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/tappx/a/v;

.field private g:Lcom/tappx/a/a1;

.field private h:Lcom/tappx/a/m0$c;

.field private i:Lcom/tappx/a/v$b;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/m0;-><init>(Lcom/tappx/a/t2;)V

    .line 2
    iput-object p2, p0, Lcom/tappx/a/k1;->f:Lcom/tappx/a/v;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/k1;)Lcom/tappx/a/m0$c;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/a/k1;->h:Lcom/tappx/a/m0$c;

    return-object p0
.end method

.method static synthetic a(Lcom/tappx/a/k1;Lcom/tappx/a/y1;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/k1;->b(Lcom/tappx/a/y1;)V

    return-void
.end method

.method private a(Lcom/tappx/a/y1;)V
    .registers 4

    .line 8
    invoke-virtual {p0}, Lcom/tappx/a/m0;->d()Lcom/tappx/a/t2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/u1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/tappx/a/k1;->g:Lcom/tappx/a/a1;

    iget-object v1, p0, Lcom/tappx/a/k1;->h:Lcom/tappx/a/m0$c;

    invoke-virtual {v0, p1, v1}, Lcom/tappx/a/a1;->a(Lcom/tappx/a/y1;Lcom/tappx/a/m0$c;)V

    return-void
.end method

.method static synthetic b(Lcom/tappx/a/k1;Lcom/tappx/a/y1;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/k1;->a(Lcom/tappx/a/y1;)V

    return-void
.end method

.method private b(Lcom/tappx/a/y1;)V
    .registers 4

    .line 3
    sget v0, Lcom/tappx/a/n;->d:I

    .line 4
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result v1

    if-lez v1, :cond_c

    .line 5
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result v0

    :cond_c
    int-to-long v0, v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/tappx/a/m0;->a(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/tappx/a/u1;)J
    .registers 4

    .line 3
    check-cast p1, Lcom/tappx/a/z1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/k1;->a(Lcom/tappx/a/z1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/tappx/a/z1;)J
    .registers 4

    .line 10
    invoke-virtual {p1}, Lcom/tappx/a/z1;->i()I

    move-result v0

    if-lez v0, :cond_c

    .line 11
    invoke-virtual {p1}, Lcom/tappx/a/z1;->i()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 13
    :cond_c
    invoke-super {p0, p1}, Lcom/tappx/a/m0;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/z1;)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "7qjY7245E0dfSy30XptPQ6Kjsb63PLX1qtOqZ64iM50"

    .line 4
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, Lcom/tappx/a/k1;->h:Lcom/tappx/a/m0$c;

    .line 6
    new-instance p2, Lcom/tappx/a/a1;

    invoke-direct {p2, p1}, Lcom/tappx/a/a1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tappx/a/k1;->g:Lcom/tappx/a/a1;

    .line 7
    iget-object p1, p0, Lcom/tappx/a/k1;->f:Lcom/tappx/a/v;

    new-instance p2, Lcom/tappx/a/k1$a;

    invoke-direct {p2, p0}, Lcom/tappx/a/k1$a;-><init>(Lcom/tappx/a/k1;)V

    new-instance v0, Lcom/tappx/a/k1$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/k1$b;-><init>(Lcom/tappx/a/k1;)V

    invoke-interface {p1, p3, p2, v0}, Lcom/tappx/a/v;->a(Lcom/tappx/a/z1;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/k1;->i:Lcom/tappx/a/v$b;

    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    .registers 4

    .line 2
    check-cast p3, Lcom/tappx/a/z1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/k1;->a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/z1;)V

    return-void
.end method

.method protected e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/k1;->i:Lcom/tappx/a/v$b;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tappx/a/k1;->f:Lcom/tappx/a/v;

    invoke-interface {v1, v0}, Lcom/tappx/a/v;->a(Lcom/tappx/a/v$b;)V

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tappx/a/k1;->g:Lcom/tappx/a/a1;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/tappx/a/a1;->a()V

    :cond_10
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tappx/a/k1;->g:Lcom/tappx/a/a1;

    return-void
.end method
