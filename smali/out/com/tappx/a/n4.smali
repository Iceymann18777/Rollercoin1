.class Lcom/tappx/a/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/n4;->a:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->b:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->d:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->e:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->f:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->g:Landroid/graphics/Rect;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->h:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tappx/a/n4;->i:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tappx/a/n4;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tappx/a/q3;->f(FLandroid/content/Context;)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tappx/a/n4;->a:Landroid/content/Context;

    .line 2
    invoke-static {v1, v2}, Lcom/tappx/a/q3;->f(FLandroid/content/Context;)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tappx/a/n4;->a:Landroid/content/Context;

    .line 3
    invoke-static {v2, v3}, Lcom/tappx/a/q3;->f(FLandroid/content/Context;)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/tappx/a/n4;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1, v3}, Lcom/tappx/a/q3;->f(FLandroid/content/Context;)I

    move-result p1

    .line 5
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Rect;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/tappx/a/n4;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method a(II)V
    .registers 5

    .line 6
    iget-object v0, p0, Lcom/tappx/a/n4;->b:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    iget-object p1, p0, Lcom/tappx/a/n4;->b:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/tappx/a/n4;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/n4;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(IIII)V
    .registers 6

    .line 8
    iget-object v0, p0, Lcom/tappx/a/n4;->f:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p1, p0, Lcom/tappx/a/n4;->f:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/tappx/a/n4;->g:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/n4;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method b()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method b(IIII)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/tappx/a/n4;->h:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object p1, p0, Lcom/tappx/a/n4;->h:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/tappx/a/n4;->i:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/n4;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method c()Landroid/graphics/Rect;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/n4;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method c(IIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->d:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object p1, p0, Lcom/tappx/a/n4;->d:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/tappx/a/n4;->e:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/n4;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method d()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method e()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method f()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method g()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n4;->c:Landroid/graphics/Rect;

    return-object v0
.end method
