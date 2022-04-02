.class Lcom/tappx/a/n2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n2$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/n2;->a(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n2$b;->b:Lcom/tappx/a/n2;

    iput-object p2, p0, Lcom/tappx/a/n2$b;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/tappx/a/n2$b;->b:Lcom/tappx/a/n2;

    invoke-static {v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;)Lcom/tappx/a/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/m2;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_14

    .line 3
    iget-object p1, p0, Lcom/tappx/a/n2$b;->b:Lcom/tappx/a/n2;

    invoke-static {p1}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;)Lcom/tappx/a/m2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/m2;->a()V

    return-void

    .line 6
    :cond_14
    iget-object v1, p0, Lcom/tappx/a/n2$b;->b:Lcom/tappx/a/n2;

    invoke-static {v1, v0, p1, p2}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n2$b;->b:Lcom/tappx/a/n2;

    invoke-static {v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;)Lcom/tappx/a/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/m2;->a()V

    return-void
.end method
