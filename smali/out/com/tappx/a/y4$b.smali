.class Lcom/tappx/a/y4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/y4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/y4;


# direct methods
.method constructor <init>(Lcom/tappx/a/y4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->a(Lcom/tappx/a/y4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 2
    iget-object p1, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {p1}, Lcom/tappx/a/y4;->c(Lcom/tappx/a/y4;)V

    goto :goto_d

    .line 4
    :cond_8
    iget-object p1, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {p1}, Lcom/tappx/a/y4;->d(Lcom/tappx/a/y4;)V

    :goto_d
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->b(Lcom/tappx/a/y4;)Lcom/tappx/a/c5$a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->b(Lcom/tappx/a/y4;)Lcom/tappx/a/c5$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/c5$a;->c()V

    :cond_11
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->b(Lcom/tappx/a/y4;)Lcom/tappx/a/c5$a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->b(Lcom/tappx/a/y4;)Lcom/tappx/a/c5$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/c5$a;->a()V

    .line 2
    :cond_11
    iget-object v0, p0, Lcom/tappx/a/y4$b;->a:Lcom/tappx/a/y4;

    invoke-static {v0}, Lcom/tappx/a/y4;->a(Lcom/tappx/a/y4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
