.class Lcom/tappx/a/d4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/d4;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/d4;


# direct methods
.method constructor <init>(Lcom/tappx/a/d4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v1

    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    .line 2
    invoke-static {v0}, Lcom/tappx/a/d4;->l(Lcom/tappx/a/d4;)Lcom/tappx/a/k4;

    move-result-object v0

    iget-object v2, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v2}, Lcom/tappx/a/d4;->k(Lcom/tappx/a/d4;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tappx/a/k4;->b(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    .line 3
    invoke-static {v0}, Lcom/tappx/a/d4;->l(Lcom/tappx/a/d4;)Lcom/tappx/a/k4;

    move-result-object v0

    iget-object v3, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v3}, Lcom/tappx/a/d4;->k(Lcom/tappx/a/d4;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tappx/a/k4;->d(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    .line 4
    invoke-static {v0}, Lcom/tappx/a/d4;->l(Lcom/tappx/a/d4;)Lcom/tappx/a/k4;

    move-result-object v0

    iget-object v4, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v4}, Lcom/tappx/a/d4;->k(Lcom/tappx/a/d4;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tappx/a/k4;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    .line 5
    invoke-static {v0}, Lcom/tappx/a/d4;->l(Lcom/tappx/a/d4;)Lcom/tappx/a/k4;

    move-result-object v0

    iget-object v5, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v5}, Lcom/tappx/a/d4;->k(Lcom/tappx/a/d4;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tappx/a/k4;->c(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    .line 6
    invoke-static {v0}, Lcom/tappx/a/d4;->m(Lcom/tappx/a/d4;)Z

    move-result v6

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/tappx/a/c4;->a(ZZZZZ)V

    .line 13
    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->d(Lcom/tappx/a/d4;)Lcom/tappx/a/v4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/v4;)V

    .line 14
    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->c(Lcom/tappx/a/d4;)Lcom/tappx/a/b4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/b4;)V

    .line 15
    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/c4;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c4;->a(Z)V

    .line 16
    iget-object v0, p0, Lcom/tappx/a/d4$f;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c4;->e()V

    return-void
.end method
