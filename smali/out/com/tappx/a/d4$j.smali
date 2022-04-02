.class Lcom/tappx/a/d4$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/d4$j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/tappx/a/d4$j$a;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tappx/a/d4$j;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method varargs a([Landroid/view/View;)Lcom/tappx/a/d4$j$a;
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/d4$j$a;

    iget-object v1, p0, Lcom/tappx/a/d4$j;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/tappx/a/d4$j$a;-><init>(Landroid/os/Handler;[Landroid/view/View;Lcom/tappx/a/d4$a;)V

    iput-object v0, p0, Lcom/tappx/a/d4$j;->b:Lcom/tappx/a/d4$j$a;

    return-object v0
.end method

.method a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$j;->b:Lcom/tappx/a/d4$j$a;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/tappx/a/d4$j$a;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tappx/a/d4$j;->b:Lcom/tappx/a/d4$j$a;

    :cond_a
    return-void
.end method
