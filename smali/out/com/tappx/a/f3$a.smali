.class Lcom/tappx/a/f3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/f3;


# direct methods
.method constructor <init>(Lcom/tappx/a/f3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/f3$a;->a:Lcom/tappx/a/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/f3$a;->a:Lcom/tappx/a/f3;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tappx/a/f3;->a(Lcom/tappx/a/f3;J)J

    .line 2
    iget-object v0, p0, Lcom/tappx/a/f3$a;->a:Lcom/tappx/a/f3;

    invoke-static {v0}, Lcom/tappx/a/f3;->a(Lcom/tappx/a/f3;)Lcom/tappx/a/f3$b;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tappx/a/f3$a;->a:Lcom/tappx/a/f3;

    invoke-static {v0}, Lcom/tappx/a/f3;->a(Lcom/tappx/a/f3;)Lcom/tappx/a/f3$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/f3$b;->a()V

    :cond_18
    return-void
.end method
