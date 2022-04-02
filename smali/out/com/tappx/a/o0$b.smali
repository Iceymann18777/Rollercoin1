.class final Lcom/tappx/a/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/m0;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/tappx/a/o0;


# direct methods
.method private constructor <init>(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tappx/a/o0$b;->a:Lcom/tappx/a/m0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/o0;Lcom/tappx/a/m0;Lcom/tappx/a/o0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/o0$b;-><init>(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)V

    return-void
.end method

.method private h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->b(Lcom/tappx/a/o0;)Lcom/tappx/a/o0$b;

    move-result-object v0

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->a(Lcom/tappx/a/o0;)Lcom/tappx/a/o0$b;

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
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->h()Z

    move-result v0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-virtual {v0}, Lcom/tappx/a/p1;->e()V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tappx/a/o0;->a(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)Lcom/tappx/a/m0;

    .line 4
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0, v1}, Lcom/tappx/a/o0;->a(Lcom/tappx/a/o0;Lcom/tappx/a/o0$b;)Lcom/tappx/a/o0$b;

    .line 5
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-virtual {v0}, Lcom/tappx/a/o0;->b()V

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tappx/a/o0$b;->b:Ljava/lang/ref/WeakReference;

    .line 7
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0, p0}, Lcom/tappx/a/o0;->b(Lcom/tappx/a/o0;Lcom/tappx/a/o0$b;)Lcom/tappx/a/o0$b;

    .line 8
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-virtual {p0}, Lcom/tappx/a/o0$b;->f()Lcom/tappx/a/m0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tappx/a/o0;->b(Lcom/tappx/a/o0;Lcom/tappx/a/m0;)Lcom/tappx/a/m0;

    .line 9
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->c(Lcom/tappx/a/o0;)Lcom/tappx/a/n0$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/o0$b;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/tappx/a/n0$a;->a(Lcom/tappx/a/u1;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/tappx/a/a2;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-virtual {p1}, Lcom/tappx/a/p1;->d()V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->c(Lcom/tappx/a/o0;)Lcom/tappx/a/n0$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/o0$b;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/n0$a;->c(Lcom/tappx/a/u1;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->c(Lcom/tappx/a/o0;)Lcom/tappx/a/n0$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/o0$b;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/n0$a;->b(Lcom/tappx/a/u1;)V

    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/o0$b;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/o0$b;->c:Lcom/tappx/a/o0;

    invoke-static {v0}, Lcom/tappx/a/o0;->c(Lcom/tappx/a/o0;)Lcom/tappx/a/n0$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tappx/a/o0$b;->e()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/n0$a;->a(Lcom/tappx/a/u1;)V

    return-void
.end method

.method public e()Lcom/tappx/a/u1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o0$b;->a:Lcom/tappx/a/m0;

    invoke-virtual {v0}, Lcom/tappx/a/m0;->c()Lcom/tappx/a/u1;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/tappx/a/m0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o0$b;->a:Lcom/tappx/a/m0;

    return-object v0
.end method

.method protected g()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/o0$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
