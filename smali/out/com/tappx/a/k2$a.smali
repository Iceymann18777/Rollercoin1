.class Lcom/tappx/a/k2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/k2;->a(Lcom/tappx/a/k2$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/m<",
        "Lcom/tappx/a/j2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/k2$c;

.field final synthetic b:Lcom/tappx/a/k2;


# direct methods
.method constructor <init>(Lcom/tappx/a/k2;Lcom/tappx/a/k2$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/k2$a;->b:Lcom/tappx/a/k2;

    iput-object p2, p0, Lcom/tappx/a/k2$a;->a:Lcom/tappx/a/k2$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/j2;)V
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/j2;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    iget-object v1, p0, Lcom/tappx/a/k2$a;->b:Lcom/tappx/a/k2;

    invoke-static {v1}, Lcom/tappx/a/k2;->a(Lcom/tappx/a/k2;)Lcom/tappx/a/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tappx/a/t;->a(Ljava/lang/String;)V

    .line 6
    :cond_f
    invoke-virtual {p1}, Lcom/tappx/a/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7
    iget-object v0, p0, Lcom/tappx/a/k2$a;->a:Lcom/tappx/a/k2$c;

    invoke-virtual {p1}, Lcom/tappx/a/j2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tappx/a/j2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tappx/a/k2$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 9
    :cond_23
    iget-object p1, p0, Lcom/tappx/a/k2$a;->a:Lcom/tappx/a/k2$c;

    invoke-interface {p1}, Lcom/tappx/a/k2$c;->b()V

    :goto_28
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/j2;

    invoke-virtual {p0, p1}, Lcom/tappx/a/k2$a;->a(Lcom/tappx/a/j2;)V

    return-void
.end method
