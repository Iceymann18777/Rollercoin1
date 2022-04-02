.class Lcom/tappx/a/p0$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/p0$b$a$a;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tappx/a/p0$b$a$a;


# direct methods
.method constructor <init>(Lcom/tappx/a/p0$b$a$a;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p0$b$a$a$a;->b:Lcom/tappx/a/p0$b$a$a;

    iput-object p2, p0, Lcom/tappx/a/p0$b$a$a$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/p0$b$a$a$a;->b:Lcom/tappx/a/p0$b$a$a;

    invoke-static {v0}, Lcom/tappx/a/p0$b$a$a;->a(Lcom/tappx/a/p0$b$a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tappx/a/p0$b$a$a;->a(Lcom/tappx/a/p0$b$a$a;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/tappx/a/p0$b$a$a$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
