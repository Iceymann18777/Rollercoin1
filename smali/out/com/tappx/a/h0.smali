.class public final Lcom/tappx/a/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/b0;


# instance fields
.field private final a:Lcom/tappx/a/t5;

.field private final b:Lcom/tappx/a/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/tappx/a/j6;->a(Landroid/content/Context;)Lcom/tappx/a/t5;

    move-result-object p1

    new-instance v0, Lcom/tappx/a/e0;

    invoke-direct {v0}, Lcom/tappx/a/e0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/h0;-><init>(Lcom/tappx/a/t5;Lcom/tappx/a/e0;)V

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/t5;Lcom/tappx/a/e0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tappx/a/h0;->b:Lcom/tappx/a/e0;

    .line 4
    iput-object p1, p0, Lcom/tappx/a/h0;->a:Lcom/tappx/a/t5;

    .line 5
    invoke-virtual {p2, p0}, Lcom/tappx/a/e0;->a(Lcom/tappx/a/b0;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "http"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method


# virtual methods
.method public a(Lcom/tappx/a/d0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tappx/a/d0;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tappx/a/h0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/d0;->b()Lcom/tappx/a/f0$a;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 3
    new-instance v0, Lcom/tappx/a/a0;

    sget-object v1, Lcom/tappx/a/a0$a;->c:Lcom/tappx/a/a0$a;

    invoke-direct {v0, v1}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;)V

    invoke-interface {p1, v0}, Lcom/tappx/a/f0$a;->a(Lcom/tappx/a/a0;)V

    :cond_1a
    return-void

    .line 6
    :cond_1b
    new-instance v0, Lcom/tappx/a/i0;

    invoke-direct {v0, p1}, Lcom/tappx/a/i0;-><init>(Lcom/tappx/a/d0;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/tappx/a/s5;->b(Ljava/lang/Object;)Lcom/tappx/a/s5;

    .line 8
    iget-object p1, p0, Lcom/tappx/a/h0;->a:Lcom/tappx/a/t5;

    invoke-virtual {p1, v0}, Lcom/tappx/a/t5;->a(Lcom/tappx/a/s5;)Lcom/tappx/a/s5;

    return-void
.end method

.method public a(Lcom/tappx/a/d0;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/d0<",
            "*>;I)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/tappx/a/h0;->b:Lcom/tappx/a/e0;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tappx/a/e0;->a(Lcom/tappx/a/d0;J)V

    return-void
.end method

.method public b(Lcom/tappx/a/d0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h0;->b:Lcom/tappx/a/e0;

    invoke-virtual {v0, p1}, Lcom/tappx/a/e0;->a(Lcom/tappx/a/d0;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/tappx/a/h0;->a:Lcom/tappx/a/t5;

    invoke-virtual {v0, p1}, Lcom/tappx/a/t5;->a(Ljava/lang/Object;)V

    return-void
.end method
