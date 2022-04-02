.class Lcom/tappx/a/d4$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d4$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:[Landroid/view/View;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;

.field d:I

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/tappx/a/d4$j$a$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/d4$j$a$a;-><init>(Lcom/tappx/a/d4$j$a;)V

    iput-object v0, p0, Lcom/tappx/a/d4$j$a;->e:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcom/tappx/a/d4$j$a;->b:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, Lcom/tappx/a/d4$j$a;->a:[Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;[Landroid/view/View;Lcom/tappx/a/d4$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/d4$j$a;-><init>(Landroid/os/Handler;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/d4$j$a;)[Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/d4$j$a;->a:[Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .registers 2

    .line 2
    iget v0, p0, Lcom/tappx/a/d4$j$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tappx/a/d4$j$a;->d:I

    if-nez v0, :cond_12

    .line 3
    iget-object v0, p0, Lcom/tappx/a/d4$j$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tappx/a/d4$j$a;->c:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method static synthetic b(Lcom/tappx/a/d4$j$a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/d4$j$a;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d4$j$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tappx/a/d4$j$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tappx/a/d4$j$a;->c:Ljava/lang/Runnable;

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/tappx/a/d4$j$a;->c:Ljava/lang/Runnable;

    .line 3
    iget-object p1, p0, Lcom/tappx/a/d4$j$a;->a:[Landroid/view/View;

    array-length p1, p1

    iput p1, p0, Lcom/tappx/a/d4$j$a;->d:I

    .line 4
    iget-object p1, p0, Lcom/tappx/a/d4$j$a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tappx/a/d4$j$a;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
