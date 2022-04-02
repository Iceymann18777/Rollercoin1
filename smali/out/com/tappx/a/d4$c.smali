.class Lcom/tappx/a/d4$c;
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
    iput-object p1, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0}, Lcom/tappx/a/d4;->d()V

    return-void
.end method

.method public a(IIIILcom/tappx/a/p3$d;Z)V
    .registers 14

    .line 4
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tappx/a/d4;->a(IIIILcom/tappx/a/p3$d;Z)V

    return-void
.end method

.method public a(Ljava/net/URI;)V
    .registers 2

    .line 8
    iget-object p1, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/tappx/a/d4$h;->b()V

    :cond_11
    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/d4;->a(Ljava/net/URI;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/d4;->a(Z)V

    return-void
.end method

.method public a(ZLcom/tappx/a/l4;)V
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/d4;->a(ZLcom/tappx/a/l4;)V

    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/d4;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/d4;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4;)Lcom/tappx/a/d4$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/d4$h;->d()V

    :cond_11
    return-void
.end method

.method public b(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->b(Lcom/tappx/a/d4;)V

    .line 5
    :cond_7
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c4;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 6
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->j(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tappx/a/c4;->a(Z)V

    :cond_1c
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$c;->a:Lcom/tappx/a/d4;

    invoke-virtual {v0}, Lcom/tappx/a/d4;->e()V

    return-void
.end method
