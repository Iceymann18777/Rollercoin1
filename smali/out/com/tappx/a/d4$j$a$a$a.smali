.class Lcom/tappx/a/d4$j$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/d4$j$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/tappx/a/d4$j$a$a;


# direct methods
.method constructor <init>(Lcom/tappx/a/d4$j$a$a;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d4$j$a$a$a;->b:Lcom/tappx/a/d4$j$a$a;

    iput-object p2, p0, Lcom/tappx/a/d4$j$a$a$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d4$j$a$a$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d4$j$a$a$a;->b:Lcom/tappx/a/d4$j$a$a;

    iget-object v0, v0, Lcom/tappx/a/d4$j$a$a;->a:Lcom/tappx/a/d4$j$a;

    invoke-static {v0}, Lcom/tappx/a/d4$j$a;->b(Lcom/tappx/a/d4$j$a;)V

    const/4 v0, 0x1

    return v0
.end method
