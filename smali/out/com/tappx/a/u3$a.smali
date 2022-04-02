.class Lcom/tappx/a/u3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/x3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/u3;


# direct methods
.method constructor <init>(Lcom/tappx/a/u3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "EO6JnLxOUsi6kIdAfPMA//Kib626NzkhHKkXIfYGxxc"

    .line 1
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/t3$b;->d()V

    :cond_19
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/t3$b;->b()V

    :cond_11
    return-void
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "xhf99ytwwl8bVeOsPAy3pg"

    .line 1
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v0}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/u3$a;->a:Lcom/tappx/a/u3;

    invoke-static {v1}, Lcom/tappx/a/u3;->b(Lcom/tappx/a/u3;)Lcom/tappx/a/x3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t3$b;->a(Landroid/view/View;)V

    :cond_1f
    return-void
.end method
