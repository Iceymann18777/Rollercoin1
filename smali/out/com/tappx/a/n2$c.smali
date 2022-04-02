.class Lcom/tappx/a/n2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/k2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/n2$f;

.field final synthetic b:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;Lcom/tappx/a/n2$f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n2$c;->b:Lcom/tappx/a/n2;

    iput-object p2, p0, Lcom/tappx/a/n2$c;->a:Lcom/tappx/a/n2$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/n2$c;->a:Lcom/tappx/a/n2$f;

    invoke-interface {v0}, Lcom/tappx/a/n2$f;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2$c;->b:Lcom/tappx/a/n2;

    invoke-static {v0}, Lcom/tappx/a/n2;->b(Lcom/tappx/a/n2;)Lcom/tappx/a/q2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tappx/a/q2;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/n2$c;->a:Lcom/tappx/a/n2$f;

    invoke-interface {v0, p1, p2}, Lcom/tappx/a/n2$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2$c;->b:Lcom/tappx/a/n2;

    invoke-static {v0}, Lcom/tappx/a/n2;->b(Lcom/tappx/a/n2;)Lcom/tappx/a/q2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tappx/a/q2;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/n2$c;->a:Lcom/tappx/a/n2$f;

    invoke-interface {v0}, Lcom/tappx/a/n2$f;->b()V

    return-void
.end method
