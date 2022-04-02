.class public Lcom/tappx/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/w$j;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/b0;

.field private final b:Lcom/tappx/a/y$a;

.field private final c:Lcom/tappx/a/s$a;

.field private final d:Lcom/tappx/a/q$a;

.field private final e:Lcom/tappx/a/u$b;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tappx/a/b0;Lcom/tappx/a/y$a;Lcom/tappx/a/s$a;Lcom/tappx/a/q$a;Lcom/tappx/a/u$b;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/w;->b:Lcom/tappx/a/y$a;

    .line 4
    iput-object p4, p0, Lcom/tappx/a/w;->d:Lcom/tappx/a/q$a;

    .line 5
    iput-object p3, p0, Lcom/tappx/a/w;->c:Lcom/tappx/a/s$a;

    .line 6
    iput-object p5, p0, Lcom/tappx/a/w;->e:Lcom/tappx/a/u$b;

    .line 7
    iput-object p6, p0, Lcom/tappx/a/w;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/tappx/a/a0;)Lcom/tappx/a/v$a;
    .registers 3

    .line 19
    sget-object v0, Lcom/tappx/a/w$i;->a:[I

    invoke-virtual {p1}, Lcom/tappx/a/a0;->a()Lcom/tappx/a/a0$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    .line 27
    sget-object p1, Lcom/tappx/a/v$a;->a:Lcom/tappx/a/v$a;

    return-object p1

    .line 28
    :cond_18
    sget-object p1, Lcom/tappx/a/v$a;->d:Lcom/tappx/a/v$a;

    return-object p1

    .line 29
    :cond_1b
    sget-object p1, Lcom/tappx/a/v$a;->c:Lcom/tappx/a/v$a;

    return-object p1
.end method

.method public a(JLcom/tappx/a/p2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tappx/a/p2;",
            "Lcom/tappx/a/m<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/tappx/a/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/tappx/a/v$b;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/tappx/a/w;->e:Lcom/tappx/a/u$b;

    new-instance v1, Lcom/tappx/a/w$g;

    invoke-direct {v1, p0, p4}, Lcom/tappx/a/w$g;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V

    new-instance v2, Lcom/tappx/a/w$h;

    invoke-direct {v2, p0, p5}, Lcom/tappx/a/w$h;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tappx/a/u$b;->a(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;JLcom/tappx/a/p2;)Lcom/tappx/a/u;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    invoke-interface {p2, p1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    .line 76
    new-instance p2, Lcom/tappx/a/w$j;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/tappx/a/w$j;-><init>(Lcom/tappx/a/d0;Lcom/tappx/a/w$a;)V

    return-object p2
.end method

.method public a(Lcom/tappx/a/b2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/b2;",
            "Lcom/tappx/a/m<",
            "Lcom/tappx/a/w1;",
            ">;",
            "Lcom/tappx/a/h<",
            "Lcom/tappx/a/v$a;",
            ">;)",
            "Lcom/tappx/a/v$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/w;->b:Lcom/tappx/a/y$a;

    iget-object v1, p0, Lcom/tappx/a/w;->f:Ljava/lang/String;

    new-instance v2, Lcom/tappx/a/w$a;

    invoke-direct {v2, p0, p2}, Lcom/tappx/a/w$a;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V

    new-instance p2, Lcom/tappx/a/w$b;

    invoke-direct {p2, p0, p3}, Lcom/tappx/a/w$b;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/tappx/a/y$a;->a(Ljava/lang/String;Lcom/tappx/a/b2;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/y;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "upDm/dcl7UFgv/WqQEFY8gxmh3157yb0PYmjrJydiuLWTs98xZyVkrKHoj9tmnz38qJvrbo3OSEcqRch9gbHFw"

    .line 16
    invoke-static {p3, p2}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    invoke-interface {p2, p1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    .line 18
    new-instance p2, Lcom/tappx/a/w$j;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/tappx/a/w$j;-><init>(Lcom/tappx/a/d0;Lcom/tappx/a/w$a;)V

    return-object p2
.end method

.method public a(Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/m<",
            "Lcom/tappx/a/j2;",
            ">;",
            "Lcom/tappx/a/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/tappx/a/v$b;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/tappx/a/w;->d:Lcom/tappx/a/q$a;

    new-instance v1, Lcom/tappx/a/w$e;

    invoke-direct {v1, p0, p1}, Lcom/tappx/a/w$e;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V

    new-instance p1, Lcom/tappx/a/w$f;

    invoke-direct {p1, p0, p2}, Lcom/tappx/a/w$f;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V

    invoke-virtual {v0, v1, p1}, Lcom/tappx/a/q$a;->a(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/q;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    invoke-interface {p2, p1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    .line 63
    new-instance p2, Lcom/tappx/a/w$j;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/tappx/a/w$j;-><init>(Lcom/tappx/a/d0;Lcom/tappx/a/w$a;)V

    return-object p2
.end method

.method public a(Lcom/tappx/a/z1;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/z1;",
            "Lcom/tappx/a/m<",
            "Lcom/tappx/a/y1;",
            ">;",
            "Lcom/tappx/a/h<",
            "Lcom/tappx/a/v$a;",
            ">;)",
            "Lcom/tappx/a/v$b;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/tappx/a/w;->c:Lcom/tappx/a/s$a;

    iget-object v1, p0, Lcom/tappx/a/w;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tappx/a/z1;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/tappx/a/w$c;

    invoke-direct {v2, p0, p2}, Lcom/tappx/a/w$c;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V

    new-instance p2, Lcom/tappx/a/w$d;

    invoke-direct {p2, p0, p3}, Lcom/tappx/a/w$d;-><init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/tappx/a/s$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/s;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    invoke-interface {p2, p1}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    .line 50
    new-instance p2, Lcom/tappx/a/w$j;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/tappx/a/w$j;-><init>(Lcom/tappx/a/d0;Lcom/tappx/a/w$a;)V

    return-object p2
.end method

.method public a(Lcom/tappx/a/v$b;)V
    .registers 3

    .line 30
    instance-of v0, p1, Lcom/tappx/a/w$j;

    if-nez v0, :cond_5

    return-void

    .line 32
    :cond_5
    check-cast p1, Lcom/tappx/a/w$j;

    .line 33
    iget-object v0, p0, Lcom/tappx/a/w;->a:Lcom/tappx/a/b0;

    invoke-virtual {p1}, Lcom/tappx/a/w$j;->a()Lcom/tappx/a/d0;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tappx/a/b0;->b(Lcom/tappx/a/d0;)V

    return-void
.end method
