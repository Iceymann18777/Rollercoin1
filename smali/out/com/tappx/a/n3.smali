.class public abstract Lcom/tappx/a/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/n3$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Lcom/tappx/a/n3$a;

.field private final d:Lcom/tappx/a/n2;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/tappx/a/n3$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/n3;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/n3;->d:Lcom/tappx/a/n2;

    .line 4
    iput-object p2, p0, Lcom/tappx/a/n3;->c:Lcom/tappx/a/n3$a;

    .line 5
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/tappx/a/n3;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tappx/a/n3;->b:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private k()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n3;->d:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->j()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x53

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/n3;->l()Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/tappx/a/n3;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tappx/a/i3;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method protected a(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    iget-object p1, p0, Lcom/tappx/a/n3;->c:Lcom/tappx/a/n3$a;

    invoke-interface {p1}, Lcom/tappx/a/n3$a;->onFinish()V

    :cond_7
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Lcom/tappx/a/n3$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n3;->c:Lcom/tappx/a/n3$a;

    return-object v0
.end method

.method protected b(Z)V
    .registers 3

    const-string v0, "Video cannot be played."

    .line 2
    invoke-static {v0}, Lcom/tappx/a/j4;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 4
    iget-object p1, p0, Lcom/tappx/a/n3;->c:Lcom/tappx/a/n3$a;

    invoke-interface {p1}, Lcom/tappx/a/n3$a;->onFinish()V

    :cond_c
    return-void
.end method

.method protected c()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n3;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n3;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected abstract e()Landroid/widget/VideoView;
.end method

.method public abstract f()V
.end method

.method public g()V
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v1, p0, Lcom/tappx/a/n3;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/tappx/a/n3;->e()Landroid/widget/VideoView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/n3;->k()V

    .line 6
    iget-object v0, p0, Lcom/tappx/a/n3;->c:Lcom/tappx/a/n3$a;

    iget-object v1, p0, Lcom/tappx/a/n3;->b:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/tappx/a/n3$a;->onSetContentView(Landroid/view/View;)V

    return-void
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method
