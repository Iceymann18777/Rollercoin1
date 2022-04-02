.class Lcom/tappx/a/x$b;
.super Lcom/tappx/a/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/x$a;-><init>()V

    return-void
.end method

.method private a(Lcom/tappx/a/c0;Ljava/lang/String;)Lcom/tappx/a/y1;
    .registers 3

    .line 2
    iget-object p1, p1, Lcom/tappx/a/c0;->a:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/x$b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tappx/a/y1;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tappx/a/x$b;Ljava/util/Map;Ljava/lang/String;)Lcom/tappx/a/y1;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/x$b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tappx/a/y1;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Lcom/tappx/a/y1;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tappx/a/y1;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/tappx/a/y1;

    invoke-direct {v0, p2}, Lcom/tappx/a/y1;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tappx/a/x;->l()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 6
    :goto_14
    invoke-virtual {v0, p2}, Lcom/tappx/a/y1;->b(Z)V

    .line 7
    invoke-static {}, Lcom/tappx/a/x;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_23

    const/4 p2, 0x1

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    .line 8
    :goto_24
    invoke-virtual {v0, p2}, Lcom/tappx/a/y1;->a(Z)V

    .line 9
    invoke-static {}, Lcom/tappx/a/x;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    .line 10
    invoke-static {}, Lcom/tappx/a/x;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 11
    invoke-virtual {v0, p2}, Lcom/tappx/a/y1;->e(I)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/tappx/a/y1;->c(I)V

    .line 13
    invoke-static {}, Lcom/tappx/a/x;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    .line 14
    invoke-virtual {v0, p2}, Lcom/tappx/a/y1;->b(I)V

    .line 15
    invoke-static {}, Lcom/tappx/a/x;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_53

    const/4 v1, 0x1

    .line 16
    :cond_53
    invoke-virtual {v0, v1}, Lcom/tappx/a/y1;->c(Z)V

    .line 17
    invoke-static {}, Lcom/tappx/a/x;->f()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/tappx/a/n;->d:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    .line 18
    invoke-virtual {v0, p2}, Lcom/tappx/a/y1;->d(I)V

    .line 19
    invoke-virtual {p0, v0, p1, v2}, Lcom/tappx/a/x$a;->a(Lcom/tappx/a/u1;Ljava/util/Map;Z)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/tappx/a/c0;)Lcom/tappx/a/w1;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tappx/a/x$a;->a(Lcom/tappx/a/c0;)Lcom/tappx/a/w1;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/c0;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/tappx/a/x$b;->a(Lcom/tappx/a/c0;Ljava/lang/String;)Lcom/tappx/a/y1;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
