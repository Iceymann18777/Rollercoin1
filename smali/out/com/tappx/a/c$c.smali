.class Lcom/tappx/a/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/l$a<",
        "Lcom/tappx/a/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c;


# direct methods
.method constructor <init>(Lcom/tappx/a/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/v;
    .registers 9

    .line 2
    new-instance v7, Lcom/tappx/a/w;

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-static {v0}, Lcom/tappx/a/c;->b(Lcom/tappx/a/c;)Lcom/tappx/a/b0;

    move-result-object v1

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-virtual {v0}, Lcom/tappx/a/c;->n()Lcom/tappx/a/y$a;

    move-result-object v2

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-static {v0}, Lcom/tappx/a/c;->c(Lcom/tappx/a/c;)Lcom/tappx/a/s$a;

    move-result-object v3

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-static {v0}, Lcom/tappx/a/c;->d(Lcom/tappx/a/c;)Lcom/tappx/a/q$a;

    move-result-object v4

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-virtual {v0}, Lcom/tappx/a/c;->i()Lcom/tappx/a/u$b;

    move-result-object v5

    iget-object v0, p0, Lcom/tappx/a/c$c;->a:Lcom/tappx/a/c;

    invoke-static {v0}, Lcom/tappx/a/c;->e(Lcom/tappx/a/c;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tappx/a/w;-><init>(Lcom/tappx/a/b0;Lcom/tappx/a/y$a;Lcom/tappx/a/s$a;Lcom/tappx/a/q$a;Lcom/tappx/a/u$b;Ljava/lang/String;)V

    return-object v7
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/c$c;->a()Lcom/tappx/a/v;

    move-result-object v0

    return-object v0
.end method
