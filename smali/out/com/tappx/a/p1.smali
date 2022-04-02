.class abstract Lcom/tappx/a/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/o1;


# instance fields
.field private a:I

.field private b:Lcom/tappx/a/w1;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tappx/a/p1;->a:I

    return-void
.end method

.method private a(Lcom/tappx/a/w1;)V
    .registers 5

    .line 6
    invoke-virtual {p1}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "{"

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/u1;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 9
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "vowRFCKLTs9aEktGgLPt1r38zreZaMrbDBiCU39LXJU"

    .line 10
    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private f()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/p1;->c()V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/p1;->b:Lcom/tappx/a/w1;

    invoke-virtual {v0}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tappx/a/p1;->a:I

    if-gt v0, v1, :cond_17

    .line 4
    sget-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-virtual {p0, v0}, Lcom/tappx/a/p1;->a(Lcom/tappx/a/a2;)V

    return-void

    .line 7
    :cond_17
    iget-object v0, p0, Lcom/tappx/a/p1;->b:Lcom/tappx/a/w1;

    invoke-virtual {v0}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tappx/a/p1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/u1;

    .line 8
    iget v1, p0, Lcom/tappx/a/p1;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tappx/a/p1;->a:I

    const-string v1, "mo5jy7IL/t1GLb3J/P8gjQ"

    .line 9
    invoke-static {v1}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tappx/a/u1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Lcom/tappx/a/u1;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "w73w5GD8aw/6JbEwVsPDUQ"

    invoke-static {v2, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/tappx/a/p1;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/tappx/a/p1;->a(Landroid/content/Context;Lcom/tappx/a/u1;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 15
    invoke-direct {p0}, Lcom/tappx/a/p1;->f()V

    :cond_62
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/tappx/a/p1;->c()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tappx/a/w1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/tappx/a/p1;->a(Lcom/tappx/a/w1;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/p1;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/p1;->b:Lcom/tappx/a/w1;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tappx/a/p1;->a:I

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/p1;->f()V

    return-void
.end method

.method protected abstract a(Lcom/tappx/a/a2;)V
.end method

.method protected abstract a(Landroid/content/Context;Lcom/tappx/a/u1;)Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/p1;->f()V

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/p1;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/p1;->b()V

    return-void
.end method

.method e()V
    .registers 1

    return-void
.end method
