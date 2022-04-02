.class public Lcom/tappx/a/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/tappx/a/b2;->g:I

    .line 18
    iput v0, p0, Lcom/tappx/a/b2;->h:I

    return-void
.end method

.method private a(IIII)I
    .registers 5

    if-lt p1, p2, :cond_6

    if-gt p1, p3, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-nez p2, :cond_a

    return p4

    :cond_a
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x78

    const/4 v2, -0x1

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tappx/a/b2;->a(IIII)I

    move-result p1

    iput p1, p0, Lcom/tappx/a/b2;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/tappx/a/b2;->k:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 5

    const/16 v0, 0x76c

    const/16 v1, 0x834

    const/4 v2, -0x1

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tappx/a/b2;->a(IIII)I

    move-result p1

    iput p1, p0, Lcom/tappx/a/b2;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/b2;->h:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/b2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/b2;->j:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->e:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/b2;->d:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/b2;->g:I

    return v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/b2;->k:Z

    return v0
.end method
