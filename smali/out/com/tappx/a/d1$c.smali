.class Lcom/tappx/a/d1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/d1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/d1$b;

.field final synthetic b:Lcom/tappx/a/d1;


# direct methods
.method public constructor <init>(Lcom/tappx/a/d1;Lcom/tappx/a/d1$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->a()V

    return-void
.end method

.method public a(Lcom/tappx/a/a2;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/d1;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0, p1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    return-void
.end method

.method public a(Lcom/tappx/a/d1;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/d1;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0, p1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/d1;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    invoke-virtual {v0}, Lcom/tappx/a/d1;->d()Lcom/tappx/a/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    invoke-virtual {v1}, Lcom/tappx/a/d1;->c()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/u1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->b()V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    invoke-virtual {v0}, Lcom/tappx/a/d1;->d()Lcom/tappx/a/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d1$c;->b:Lcom/tappx/a/d1;

    invoke-virtual {v1}, Lcom/tappx/a/d1;->c()Lcom/tappx/a/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/u1;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->c()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1$c;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->d()V

    return-void
.end method
