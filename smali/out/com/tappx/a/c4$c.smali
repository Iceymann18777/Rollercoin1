.class Lcom/tappx/a/c4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c4;->a(Lcom/tappx/a/q4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/o3;


# direct methods
.method constructor <init>(Lcom/tappx/a/c4;Lcom/tappx/a/o3;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/c4$c;->a:Lcom/tappx/a/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4$c;->a:Lcom/tappx/a/o3;

    invoke-virtual {v0, p2}, Lcom/tappx/a/o3;->a(Landroid/view/MotionEvent;)V

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    goto :goto_18

    .line 6
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_18

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method
