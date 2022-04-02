.class public Lcom/tappx/a/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/n1$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/tappx/a/n1$b;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/tappx/a/n1;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/tappx/a/n1$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/n1$a;-><init>(Lcom/tappx/a/n1;)V

    iput-object v0, p0, Lcom/tappx/a/n1;->c:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/tappx/a/n1;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/n1;)Lcom/tappx/a/n1$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/n1;->b:Lcom/tappx/a/n1$b;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n1;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tappx/a/n1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/n1;->b()V

    return-void
.end method

.method public a(J)V
    .registers 5

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/n1;->b()V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/n1;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tappx/a/n1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/tappx/a/n1$b;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/n1;->b:Lcom/tappx/a/n1$b;

    return-void
.end method
