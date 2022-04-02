.class Lcom/tappx/a/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/o3$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tappx/a/o3$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_15

    .line 3
    :cond_8
    iget-object p1, p0, Lcom/tappx/a/o3;->a:Lcom/tappx/a/o3$a;

    if-eqz p1, :cond_10

    .line 4
    invoke-interface {p1}, Lcom/tappx/a/o3$a;->a()V

    goto :goto_15

    :cond_10
    const-string p1, "No listener, click ignored"

    .line 6
    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public a(Lcom/tappx/a/o3$a;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/tappx/a/o3;->a:Lcom/tappx/a/o3$a;

    return-void
.end method
