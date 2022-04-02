.class Lcom/tappx/a/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/e0;->a(Lcom/tappx/a/d0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/d0;

.field final synthetic b:Lcom/tappx/a/e0;


# direct methods
.method constructor <init>(Lcom/tappx/a/e0;Lcom/tappx/a/d0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/e0$a;->b:Lcom/tappx/a/e0;

    iput-object p2, p0, Lcom/tappx/a/e0$a;->a:Lcom/tappx/a/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/e0$a;->b:Lcom/tappx/a/e0;

    invoke-static {v0}, Lcom/tappx/a/e0;->a(Lcom/tappx/a/e0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/e0$a;->a:Lcom/tappx/a/d0;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lcom/tappx/a/e0$a;->b:Lcom/tappx/a/e0;

    invoke-static {v0}, Lcom/tappx/a/e0;->b(Lcom/tappx/a/e0;)Lcom/tappx/a/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/e0$a;->a:Lcom/tappx/a/d0;

    invoke-interface {v0, v1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    return-void
.end method
