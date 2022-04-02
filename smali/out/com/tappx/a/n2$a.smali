.class Lcom/tappx/a/n2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/n2;->a(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n2$a;->c:Lcom/tappx/a/n2;

    iput-object p2, p0, Lcom/tappx/a/n2$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/tappx/a/n2$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2$a;->c:Lcom/tappx/a/n2;

    iget-object v1, p0, Lcom/tappx/a/n2$a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/n2$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tappx/a/n2$a;->c:Lcom/tappx/a/n2;

    invoke-static {v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;)Lcom/tappx/a/m2;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/n2$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tappx/a/m2;->a(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
