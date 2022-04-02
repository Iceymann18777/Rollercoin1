.class Lcom/tappx/a/d4$j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/d4$j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/d4$j$a;


# direct methods
.method constructor <init>(Lcom/tappx/a/d4$j$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d4$j$a$a;->a:Lcom/tappx/a/d4$j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$j$a$a;->a:Lcom/tappx/a/d4$j$a;

    invoke-static {v0}, Lcom/tappx/a/d4$j$a;->a(Lcom/tappx/a/d4$j$a;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_19

    goto :goto_26

    .line 11
    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/tappx/a/d4$j$a$a$a;

    invoke-direct {v5, p0, v3}, Lcom/tappx/a/d4$j$a$a$a;-><init>(Lcom/tappx/a/d4$j$a$a;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2b

    .line 12
    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/tappx/a/d4$j$a$a;->a:Lcom/tappx/a/d4$j$a;

    invoke-static {v3}, Lcom/tappx/a/d4$j$a;->b(Lcom/tappx/a/d4$j$a;)V

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2e
    return-void
.end method
