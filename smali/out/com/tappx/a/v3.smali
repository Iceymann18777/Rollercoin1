.class public Lcom/tappx/a/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t3;


# instance fields
.field private a:Lcom/tappx/a/t3$b;

.field private final b:Landroid/content/Context;

.field private c:Lcom/tappx/a/d4;

.field private d:Lcom/tappx/a/d4$h;

.field private e:Lcom/tappx/a/d4$k;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/tappx/a/v3$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/v3$a;-><init>(Lcom/tappx/a/v3;)V

    iput-object v0, p0, Lcom/tappx/a/v3;->d:Lcom/tappx/a/d4$h;

    .line 52
    new-instance v0, Lcom/tappx/a/v3$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/v3$b;-><init>(Lcom/tappx/a/v3;)V

    iput-object v0, p0, Lcom/tappx/a/v3;->e:Lcom/tappx/a/d4$k;

    .line 53
    iput-object p1, p0, Lcom/tappx/a/v3;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/v3;)Lcom/tappx/a/t3$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/v3;->a:Lcom/tappx/a/t3$b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;
    .registers 5

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "3ZJsjFJl8424bBJ0FHBsPsvg6JPdFtnXjH4FLENWtoY"

    .line 3
    invoke-static {v0, p3}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    if-nez p3, :cond_26

    .line 5
    new-instance p3, Lcom/tappx/a/d4;

    iget-object v0, p0, Lcom/tappx/a/v3;->b:Landroid/content/Context;

    invoke-direct {p3, v0, p1}, Lcom/tappx/a/d4;-><init>(Landroid/content/Context;Lcom/tappx/a/b4;)V

    iput-object p3, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    .line 6
    iget-object p1, p0, Lcom/tappx/a/v3;->d:Lcom/tappx/a/d4$h;

    invoke-virtual {p3, p1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4$h;)V

    .line 7
    iget-object p1, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    invoke-virtual {p1, p2}, Lcom/tappx/a/d4;->a(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    iget-object p2, p0, Lcom/tappx/a/v3;->e:Lcom/tappx/a/d4$k;

    invoke-virtual {p1, p2}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4$k;)V

    .line 10
    :cond_26
    iget-object p1, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    invoke-virtual {p1}, Lcom/tappx/a/d4;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0}, Lcom/tappx/a/d4;->g()V

    :cond_7
    return-void
.end method

.method public a(Lcom/tappx/a/t3$b;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/v3;->a:Lcom/tappx/a/t3$b;

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0, p1}, Lcom/tappx/a/d4;->b(Z)V

    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tappx/a/d4;->a(Lcom/tappx/a/d4$h;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    invoke-virtual {v0}, Lcom/tappx/a/d4;->b()V

    .line 4
    iput-object v1, p0, Lcom/tappx/a/v3;->c:Lcom/tappx/a/d4;

    :cond_f
    return-void
.end method
