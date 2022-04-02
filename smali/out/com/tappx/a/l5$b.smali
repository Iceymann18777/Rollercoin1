.class Lcom/tappx/a/l5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/l5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/s5;

.field private final b:Lcom/tappx/a/u5;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tappx/a/s5;Lcom/tappx/a/u5;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/l5$b;->b:Lcom/tappx/a/u5;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/l5$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    invoke-virtual {v0}, Lcom/tappx/a/s5;->t()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/tappx/a/s5;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_10
    iget-object v0, p0, Lcom/tappx/a/l5$b;->b:Lcom/tappx/a/u5;

    invoke-virtual {v0}, Lcom/tappx/a/u5;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    iget-object v1, p0, Lcom/tappx/a/l5$b;->b:Lcom/tappx/a/u5;

    iget-object v1, v1, Lcom/tappx/a/u5;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tappx/a/s5;->a(Ljava/lang/Object;)V

    goto :goto_2b

    .line 10
    :cond_22
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    iget-object v1, p0, Lcom/tappx/a/l5$b;->b:Lcom/tappx/a/u5;

    iget-object v1, v1, Lcom/tappx/a/u5;->c:Lcom/tappx/a/z5;

    invoke-virtual {v0, v1}, Lcom/tappx/a/s5;->a(Lcom/tappx/a/z5;)V

    .line 15
    :goto_2b
    iget-object v0, p0, Lcom/tappx/a/l5$b;->b:Lcom/tappx/a/u5;

    iget-boolean v0, v0, Lcom/tappx/a/u5;->d:Z

    if-eqz v0, :cond_39

    .line 16
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/tappx/a/s5;->a(Ljava/lang/String;)V

    goto :goto_40

    .line 18
    :cond_39
    iget-object v0, p0, Lcom/tappx/a/l5$b;->a:Lcom/tappx/a/s5;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/tappx/a/s5;->b(Ljava/lang/String;)V

    .line 22
    :goto_40
    iget-object v0, p0, Lcom/tappx/a/l5$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_47

    .line 23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_47
    return-void
.end method
