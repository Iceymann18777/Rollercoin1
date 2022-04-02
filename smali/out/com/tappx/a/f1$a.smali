.class final Lcom/tappx/a/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/d1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/d1;

.field final synthetic b:Lcom/tappx/a/f1;


# direct methods
.method public constructor <init>(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tappx/a/f1$a;->a:Lcom/tappx/a/d1;

    return-void
.end method

.method private g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {v0}, Lcom/tappx/a/f1;->b(Lcom/tappx/a/f1;)Lcom/tappx/a/f1$a;

    move-result-object v0

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {v0}, Lcom/tappx/a/f1;->a(Lcom/tappx/a/f1;)Lcom/tappx/a/f1$a;

    move-result-object v0

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/tappx/a/a2;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/tappx/a/f1$a;->h()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 10
    :cond_7
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-virtual {p1}, Lcom/tappx/a/p1;->d()V

    return-void
.end method

.method public a(Lcom/tappx/a/d1;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/f1$a;->h()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-virtual {p1}, Lcom/tappx/a/p1;->e()V

    .line 3
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tappx/a/f1;->a(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;

    .line 4
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {p1, v0}, Lcom/tappx/a/f1;->a(Lcom/tappx/a/f1;Lcom/tappx/a/f1$a;)Lcom/tappx/a/f1$a;

    .line 5
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-virtual {p1}, Lcom/tappx/a/f1;->b()V

    .line 6
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {p1, p0}, Lcom/tappx/a/f1;->b(Lcom/tappx/a/f1;Lcom/tappx/a/f1$a;)Lcom/tappx/a/f1$a;

    .line 7
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-virtual {p0}, Lcom/tappx/a/f1$a;->f()Lcom/tappx/a/d1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tappx/a/f1;->b(Lcom/tappx/a/f1;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;

    .line 8
    iget-object p1, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {p1}, Lcom/tappx/a/f1;->c(Lcom/tappx/a/f1;)Lcom/tappx/a/e1$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tappx/a/f1$a;->e()Lcom/tappx/a/u1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/f1$a;->f()Lcom/tappx/a/d1;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tappx/a/e1$a;->a(Lcom/tappx/a/u1;Lcom/tappx/a/d1;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {v0}, Lcom/tappx/a/f1;->c(Lcom/tappx/a/f1;)Lcom/tappx/a/e1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/f1$a;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/e1$a;->a(Lcom/tappx/a/u1;)V

    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/f1$a;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/f1$a;->b:Lcom/tappx/a/f1;

    invoke-static {v0}, Lcom/tappx/a/f1;->c(Lcom/tappx/a/f1;)Lcom/tappx/a/e1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/f1$a;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/e1$a;->b(Lcom/tappx/a/u1;)V

    return-void
.end method

.method public e()Lcom/tappx/a/u1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f1$a;->a:Lcom/tappx/a/d1;

    invoke-virtual {v0}, Lcom/tappx/a/d1;->c()Lcom/tappx/a/u1;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/tappx/a/d1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f1$a;->a:Lcom/tappx/a/d1;

    return-object v0
.end method
