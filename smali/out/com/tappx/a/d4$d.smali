.class Lcom/tappx/a/d4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/c4$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d4;
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
    iput-object p1, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0}, Lcom/tappx/a/d4;->d()V

    return-void
.end method

.method public a(IIIILcom/tappx/a/p3$d;Z)V
    .registers 7

    .line 3
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/net/URI;)V
    .registers 2

    .line 7
    iget-object p1, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-static {p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 8
    iget-object p1, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-static {p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/tappx/a/d4$h;->b()V

    :cond_11
    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/d4;->a(Z)V

    return-void
.end method

.method public a(ZLcom/tappx/a/l4;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/d4;->a(ZLcom/tappx/a/l4;)V

    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/d4;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/d4;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->j(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tappx/a/c4;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tappx/a/c4;->a(Z)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$d;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0}, Lcom/tappx/a/d4;->f()V

    return-void
.end method
