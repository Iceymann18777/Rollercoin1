.class public Lcom/tappx/a/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/tappx/a/e5;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/tappx/a/e5;->a()Lcom/tappx/a/e5;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/b5;-><init>(Lcom/tappx/a/e5;)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/e5;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/b5;->a:Lcom/tappx/a/e5;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 41
    iget v0, p0, Lcom/tappx/a/b5;->b:I

    if-nez v0, :cond_5

    return-void

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/tappx/a/b5;->a:Lcom/tappx/a/e5;

    invoke-virtual {v1, v0}, Lcom/tappx/a/e5;->a(I)Lcom/tappx/a/e5$a;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 44
    :cond_e
    invoke-virtual {v0}, Lcom/tappx/a/e5$a;->a()Lcom/tappx/a/t3;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/t3;->destroy()V

    return-void
.end method

.method public a(ILcom/tappx/a/c5;Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/c5$a;Lcom/tappx/a/f5;)V
    .registers 8

    .line 1
    sget-boolean v0, Lcom/tappx/a/g;->a:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {p5}, Lcom/tappx/a/c5$a;->e()V

    return-void

    .line 5
    :cond_8
    iput p1, p0, Lcom/tappx/a/b5;->b:I

    .line 6
    invoke-static {p3, p4}, Lcom/tappx/a/w3;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tappx/a/t3;

    move-result-object p3

    .line 7
    new-instance v0, Lcom/tappx/a/b5$a;

    invoke-direct {v0, p0, p5}, Lcom/tappx/a/b5$a;-><init>(Lcom/tappx/a/b5;Lcom/tappx/a/c5$a;)V

    invoke-interface {p3, v0}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/t3$b;)V

    .line 39
    sget-object p5, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    new-instance v0, Lcom/tappx/a/t3$a;

    invoke-direct {v0}, Lcom/tappx/a/t3$a;-><init>()V

    invoke-virtual {p6}, Lcom/tappx/a/f5;->g()Z

    move-result p6

    invoke-virtual {v0, p6}, Lcom/tappx/a/t3$a;->a(Z)Lcom/tappx/a/t3$a;

    move-result-object p6

    invoke-interface {p3, p5, p4, p6}, Lcom/tappx/a/t3;->a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;

    .line 40
    iget-object p4, p0, Lcom/tappx/a/b5;->a:Lcom/tappx/a/e5;

    invoke-virtual {p4, p1, p2, p3}, Lcom/tappx/a/e5;->a(ILcom/tappx/a/c5;Lcom/tappx/a/t3;)V

    return-void
.end method
