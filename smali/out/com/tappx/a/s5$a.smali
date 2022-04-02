.class Lcom/tappx/a/s5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/s5;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/tappx/a/s5;


# direct methods
.method constructor <init>(Lcom/tappx/a/s5;Ljava/lang/String;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tappx/a/s5$a;->c:Lcom/tappx/a/s5;

    iput-object p2, p0, Lcom/tappx/a/s5$a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tappx/a/s5$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s5$a;->c:Lcom/tappx/a/s5;

    invoke-static {v0}, Lcom/tappx/a/s5;->b(Lcom/tappx/a/s5;)Lcom/tappx/a/a6$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/s5$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tappx/a/s5$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/s5$a;->c:Lcom/tappx/a/s5;

    invoke-static {v0}, Lcom/tappx/a/s5;->b(Lcom/tappx/a/s5;)Lcom/tappx/a/a6$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/s5$a;->c:Lcom/tappx/a/s5;

    invoke-virtual {v1}, Lcom/tappx/a/s5;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/a6$a;->a(Ljava/lang/String;)V

    return-void
.end method
