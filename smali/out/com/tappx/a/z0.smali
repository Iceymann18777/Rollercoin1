.class public final Lcom/tappx/a/z0;
.super Lcom/tappx/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/m0<",
        "Lcom/tappx/a/y1;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lcom/tappx/a/a1;


# direct methods
.method constructor <init>(Lcom/tappx/a/t2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/m0;-><init>(Lcom/tappx/a/t2;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/tappx/a/u1;)J
    .registers 4

    .line 1
    check-cast p1, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/z0;->a(Lcom/tappx/a/y1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/tappx/a/y1;)J
    .registers 4

    .line 5
    invoke-virtual {p1}, Lcom/tappx/a/y1;->k()I

    move-result v0

    if-lez v0, :cond_8

    int-to-long v0, v0

    return-wide v0

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lcom/tappx/a/m0;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/y1;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/m0;->d()Lcom/tappx/a/t2;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tappx/a/u1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tappx/a/a1;

    invoke-direct {v0, p1}, Lcom/tappx/a/a1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/z0;->f:Lcom/tappx/a/a1;

    .line 4
    invoke-virtual {v0, p3, p2}, Lcom/tappx/a/a1;->a(Lcom/tappx/a/y1;Lcom/tappx/a/m0$c;)V

    return-void
.end method

.method protected bridge synthetic b(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    .registers 4

    .line 1
    check-cast p3, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tappx/a/z0;->a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/y1;)V

    return-void
.end method

.method protected e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z0;->f:Lcom/tappx/a/a1;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tappx/a/a1;->a()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tappx/a/z0;->f:Lcom/tappx/a/a1;

    return-void
.end method
