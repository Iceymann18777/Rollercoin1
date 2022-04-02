.class Lcom/tappx/a/i0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/u5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/i0;-><init>(Lcom/tappx/a/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/d0;


# direct methods
.method constructor <init>(Lcom/tappx/a/d0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/i0$a;->a:Lcom/tappx/a/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/z5;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i0$a;->a:Lcom/tappx/a/d0;

    invoke-virtual {v0}, Lcom/tappx/a/d0;->b()Lcom/tappx/a/f0$a;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    instance-of v1, p1, Lcom/tappx/a/z;

    if-eqz v1, :cond_14

    .line 5
    check-cast p1, Lcom/tappx/a/z;

    invoke-virtual {p1}, Lcom/tappx/a/z;->a()Lcom/tappx/a/a0;

    move-result-object p1

    goto :goto_39

    .line 7
    :cond_14
    iget-object v1, p1, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/tappx/a/q5;->c:Ljava/util/Map;

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 8
    :goto_1c
    iget-object v2, p1, Lcom/tappx/a/z5;->a:Lcom/tappx/a/q5;

    if-eqz v2, :cond_23

    iget v2, v2, Lcom/tappx/a/q5;->a:I

    goto :goto_24

    :cond_23
    const/4 v2, -0x1

    .line 9
    :goto_24
    invoke-static {p1}, Lcom/tappx/a/i0;->c(Lcom/tappx/a/z5;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 10
    new-instance p1, Lcom/tappx/a/a0;

    sget-object v3, Lcom/tappx/a/a0$a;->a:Lcom/tappx/a/a0$a;

    invoke-direct {p1, v3, v1, v2}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;Ljava/util/Map;I)V

    goto :goto_39

    .line 12
    :cond_32
    new-instance p1, Lcom/tappx/a/a0;

    sget-object v3, Lcom/tappx/a/a0$a;->b:Lcom/tappx/a/a0$a;

    invoke-direct {p1, v3, v1, v2}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;Ljava/util/Map;I)V

    .line 15
    :goto_39
    invoke-interface {v0, p1}, Lcom/tappx/a/f0$a;->a(Lcom/tappx/a/a0;)V

    return-void
.end method
