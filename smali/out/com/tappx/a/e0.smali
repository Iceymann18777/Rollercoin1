.class Lcom/tappx/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tappx/a/d0<",
            "*>;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:Lcom/tappx/a/b0;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/tappx/a/e0;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/e0;->a:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Lcom/tappx/a/e0;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/e0;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/e0;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/e0;)Lcom/tappx/a/b0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/e0;->c:Lcom/tappx/a/b0;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tappx/a/b0;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/e0;->c:Lcom/tappx/a/b0;

    return-void
.end method

.method public a(Lcom/tappx/a/d0;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "*>;J)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/tappx/a/e0$a;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/e0$a;-><init>(Lcom/tappx/a/e0;Lcom/tappx/a/d0;)V

    .line 11
    iget-object v1, p0, Lcom/tappx/a/e0;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/tappx/a/e0;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/tappx/a/d0;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "*>;)Z"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/tappx/a/e0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_c
    iget-object v0, p0, Lcom/tappx/a/e0;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
