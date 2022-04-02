.class public Lcom/tappx/a/b1;
.super Lcom/tappx/a/d1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d1<",
        "Lcom/tappx/a/y1;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/tappx/a/c1;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/d1;-><init>(Lcom/tappx/a/t2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/tappx/a/u1;)J
    .registers 4

    .line 1
    check-cast p1, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/b1;->a(Lcom/tappx/a/y1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/tappx/a/y1;)J
    .registers 4

    .line 5
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result p1

    if-lez p1, :cond_8

    int-to-long v0, p1

    return-wide v0

    .line 9
    :cond_8
    sget p1, Lcom/tappx/a/n;->d:I

    int-to-long v0, p1

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/y1;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/d1;->d()Lcom/tappx/a/t2;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tappx/a/u1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tappx/a/c1;

    invoke-direct {v0, p1}, Lcom/tappx/a/c1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/b1;->f:Lcom/tappx/a/c1;

    .line 4
    invoke-virtual {v0, p3, p2, p0}, Lcom/tappx/a/c1;->a(Lcom/tappx/a/y1;Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;)V

    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    .registers 4

    .line 1
    check-cast p3, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/b1;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/y1;)V

    return-void
.end method

.method protected e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b1;->f:Lcom/tappx/a/c1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/c1;->a()V

    :cond_7
    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b1;->f:Lcom/tappx/a/c1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/tappx/a/c1;->b()V

    :cond_7
    return-void
.end method
