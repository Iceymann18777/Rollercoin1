.class Lcom/tappx/a/i5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/i5;->a(Lcom/tappx/a/s5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/s5;

.field final synthetic b:Lcom/tappx/a/i5;


# direct methods
.method constructor <init>(Lcom/tappx/a/i5;Lcom/tappx/a/s5;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/i5$a;->b:Lcom/tappx/a/i5;

    iput-object p2, p0, Lcom/tappx/a/i5$a;->a:Lcom/tappx/a/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/i5$a;->b:Lcom/tappx/a/i5;

    invoke-static {v0}, Lcom/tappx/a/i5;->a(Lcom/tappx/a/i5;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/i5$a;->a:Lcom/tappx/a/s5;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    .line 4
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_13
    return-void
.end method
