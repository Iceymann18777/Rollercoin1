.class Lcom/tappx/a/x3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/x3;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/x3;


# direct methods
.method constructor <init>(Lcom/tappx/a/x3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/x3$a;->a:Lcom/tappx/a/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x3$a;->a:Lcom/tappx/a/x3;

    invoke-static {v0}, Lcom/tappx/a/x3;->a(Lcom/tappx/a/x3;)Lcom/tappx/a/o3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tappx/a/o3;->a(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    goto :goto_1c

    .line 5
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method
