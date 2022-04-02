.class public Lcom/tappx/a/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t3;


# instance fields
.field private a:Lcom/tappx/a/t3$b;

.field private final b:Landroid/content/Context;

.field private c:Lcom/tappx/a/x3;

.field private d:Lcom/tappx/a/x3$d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/tappx/a/u3$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/u3$a;-><init>(Lcom/tappx/a/u3;)V

    iput-object v0, p0, Lcom/tappx/a/u3;->d:Lcom/tappx/a/x3$d;

    .line 32
    iput-object p1, p0, Lcom/tappx/a/u3;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/u3;)Lcom/tappx/a/t3$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/u3;->a:Lcom/tappx/a/t3$b;

    return-object p0
.end method

.method private a(Lcom/tappx/a/t3$a;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/tappx/a/t3$a;->a()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/tappx/a/u3;)Lcom/tappx/a/x3;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tappx/a/b4;Ljava/lang/String;Lcom/tappx/a/t3$a;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "h0fTNqXwKZ+DG4kdf/GC5w"

    .line 3
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    if-nez v0, :cond_30

    .line 5
    new-instance v0, Lcom/tappx/a/x3;

    iget-object v1, p0, Lcom/tappx/a/u3;->b:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/tappx/a/u3;->a(Lcom/tappx/a/t3$a;)Z

    move-result p3

    invoke-direct {v0, v1, p3}, Lcom/tappx/a/x3;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    .line 6
    iget-object p3, p0, Lcom/tappx/a/u3;->d:Lcom/tappx/a/x3$d;

    invoke-virtual {v0, p3}, Lcom/tappx/a/x3;->setListener(Lcom/tappx/a/x3$d;)V

    .line 7
    sget-object p3, Lcom/tappx/a/b4;->a:Lcom/tappx/a/b4;

    if-eq p1, p3, :cond_26

    sget-boolean p1, Lcom/tappx/a/o;->a:Z

    if-eqz p1, :cond_2b

    .line 8
    :cond_26
    iget-object p1, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    invoke-virtual {p1}, Lcom/tappx/a/l3;->a()V

    .line 10
    :cond_2b
    iget-object p1, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    invoke-virtual {p1, p2}, Lcom/tappx/a/x3;->a(Ljava/lang/String;)V

    .line 12
    :cond_30
    iget-object p1, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/tappx/a/t3$b;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u3;->a:Lcom/tappx/a/t3$b;

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tappx/a/x3;->setListener(Lcom/tappx/a/x3$d;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    invoke-virtual {v0}, Lcom/tappx/a/l3;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/tappx/a/u3;->c:Lcom/tappx/a/x3;

    :cond_f
    return-void
.end method
