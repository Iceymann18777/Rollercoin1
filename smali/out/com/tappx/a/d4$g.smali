.class Lcom/tappx/a/d4$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/d4;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tappx/a/d4;


# direct methods
.method constructor <init>(Lcom/tappx/a/d4;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    iput-object p2, p0, Lcom/tappx/a/d4$g;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/tappx/a/d4$g;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->k(Lcom/tappx/a/d4;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Lcom/tappx/a/n4;->a(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->f(Lcom/tappx/a/d4;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    iget-object v2, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v2}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 11
    invoke-virtual {v2, v4, v6, v7, v1}, Lcom/tappx/a/n4;->c(IIII)V

    .line 15
    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->g(Lcom/tappx/a/d4;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 16
    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v1

    aget v2, v0, v3

    aget v4, v0, v5

    iget-object v6, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    .line 17
    invoke-static {v6}, Lcom/tappx/a/d4;->g(Lcom/tappx/a/d4;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    .line 18
    invoke-static {v7}, Lcom/tappx/a/d4;->g(Lcom/tappx/a/d4;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 19
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/tappx/a/n4;->b(IIII)V

    .line 23
    iget-object v1, p0, Lcom/tappx/a/d4$g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v5

    iget-object v3, p0, Lcom/tappx/a/d4$g;->a:Landroid/view/View;

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tappx/a/d4$g;->a:Landroid/view/View;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 27
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tappx/a/n4;->a(IIII)V

    .line 32
    iget-object v0, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->j(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/n4;)V

    .line 33
    iget-object v0, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c4;->b()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 34
    iget-object v0, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v0}, Lcom/tappx/a/d4;->i(Lcom/tappx/a/d4;)Lcom/tappx/a/c4;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/d4$g;->c:Lcom/tappx/a/d4;

    invoke-static {v1}, Lcom/tappx/a/d4;->e(Lcom/tappx/a/d4;)Lcom/tappx/a/n4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/n4;)V

    .line 37
    :cond_b0
    iget-object v0, p0, Lcom/tappx/a/d4$g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b7

    .line 38
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b7
    return-void
.end method
