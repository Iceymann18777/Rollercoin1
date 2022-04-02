.class public Lcom/tappx/a/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/tappx/a/d1$b;

.field private c:Lcom/tappx/a/d5;

.field private d:Lcom/tappx/a/d1;

.field private e:Lcom/tappx/a/c5$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/tappx/a/c1$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/c1$a;-><init>(Lcom/tappx/a/c1;)V

    iput-object v0, p0, Lcom/tappx/a/c1;->e:Lcom/tappx/a/c5$a;

    .line 37
    iput-object p1, p0, Lcom/tappx/a/c1;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/c1;)Lcom/tappx/a/d1;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/c1;->d:Lcom/tappx/a/d1;

    return-object p0
.end method

.method private a(I)Lcom/tappx/a/j3;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 17
    sget-object p1, Lcom/tappx/a/j3;->a:Lcom/tappx/a/j3;

    return-object p1

    .line 18
    :cond_9
    sget-object p1, Lcom/tappx/a/j3;->c:Lcom/tappx/a/j3;

    return-object p1

    .line 20
    :cond_c
    sget-object p1, Lcom/tappx/a/j3;->b:Lcom/tappx/a/j3;

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/c1;)Lcom/tappx/a/d1$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/c1;->b:Lcom/tappx/a/d1$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/tappx/a/c1;->c:Lcom/tappx/a/d5;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/tappx/a/d5;->a()V

    :cond_7
    return-void
.end method

.method public a(Lcom/tappx/a/y1;Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lcom/tappx/a/c1;->b:Lcom/tappx/a/d1$b;

    .line 3
    iput-object p3, p0, Lcom/tappx/a/c1;->d:Lcom/tappx/a/d1;

    .line 4
    new-instance p2, Lcom/tappx/a/d5;

    invoke-direct {p2}, Lcom/tappx/a/d5;-><init>()V

    iput-object p2, p0, Lcom/tappx/a/c1;->c:Lcom/tappx/a/d5;

    .line 5
    iget-object p3, p0, Lcom/tappx/a/c1;->e:Lcom/tappx/a/c5$a;

    invoke-virtual {p2, p3}, Lcom/tappx/a/d5;->a(Lcom/tappx/a/c5$a;)V

    .line 6
    invoke-virtual {p1}, Lcom/tappx/a/u1;->a()Lcom/tappx/a/t1;

    move-result-object p2

    invoke-static {p2}, Lcom/tappx/a/b3;->a(Lcom/tappx/a/t1;)Lcom/tappx/a/k3;

    move-result-object p2

    .line 7
    new-instance p3, Lcom/tappx/a/f5;

    invoke-direct {p3}, Lcom/tappx/a/f5;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/tappx/a/y1;->i()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->a(I)Lcom/tappx/a/f5;

    move-result-object p3

    .line 9
    invoke-virtual {p1}, Lcom/tappx/a/y1;->o()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->c(Z)Lcom/tappx/a/f5;

    move-result-object p3

    .line 10
    invoke-virtual {p1}, Lcom/tappx/a/y1;->l()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->c(I)Lcom/tappx/a/f5;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lcom/tappx/a/y1;->j()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->b(I)Lcom/tappx/a/f5;

    move-result-object p3

    .line 12
    invoke-virtual {p1}, Lcom/tappx/a/y1;->n()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->b(Z)Lcom/tappx/a/f5;

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcom/tappx/a/y1;->m()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->a(Z)Lcom/tappx/a/f5;

    move-result-object p3

    .line 14
    invoke-virtual {p1}, Lcom/tappx/a/u1;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tappx/a/c1;->a(I)Lcom/tappx/a/j3;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tappx/a/f5;->a(Lcom/tappx/a/j3;)Lcom/tappx/a/f5;

    move-result-object p3

    .line 15
    invoke-virtual {p3, p2}, Lcom/tappx/a/f5;->a(Lcom/tappx/a/k3;)Lcom/tappx/a/f5;

    move-result-object p2

    .line 16
    iget-object p3, p0, Lcom/tappx/a/c1;->c:Lcom/tappx/a/d5;

    iget-object v0, p0, Lcom/tappx/a/c1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tappx/a/y1;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/tappx/a/d5;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/f5;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c1;->c:Lcom/tappx/a/d5;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/d5;->b()V

    :cond_7
    return-void
.end method
