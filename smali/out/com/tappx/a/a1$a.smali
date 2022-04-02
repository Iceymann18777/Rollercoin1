.class Lcom/tappx/a/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/a1;


# direct methods
.method constructor <init>(Lcom/tappx/a/a1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v0}, Lcom/tappx/a/a1;->c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->b()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v1}, Lcom/tappx/a/a1;->a(Lcom/tappx/a/a1;)I

    move-result v1

    iget-object v2, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v2}, Lcom/tappx/a/a1;->b(Lcom/tappx/a/a1;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v0}, Lcom/tappx/a/a1;->c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tappx/a/m0$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v0}, Lcom/tappx/a/a1;->c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->d()V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v0}, Lcom/tappx/a/a1;->c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->c()V

    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/a1$a;->a:Lcom/tappx/a/a1;

    invoke-static {v0}, Lcom/tappx/a/a1;->c(Lcom/tappx/a/a1;)Lcom/tappx/a/m0$c;

    move-result-object v0

    sget-object v1, Lcom/tappx/a/a2;->g:Lcom/tappx/a/a2;

    invoke-interface {v0, v1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    return-void
.end method
