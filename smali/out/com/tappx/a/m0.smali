.class public abstract Lcom/tappx/a/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/m0$d;,
        Lcom/tappx/a/m0$c;,
        Lcom/tappx/a/m0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tappx/a/u1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tappx/a/n1$b;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/t2;

.field private final b:Lcom/tappx/a/n1;

.field private c:Lcom/tappx/a/m0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/m0<",
            "TT;>.d;"
        }
    .end annotation
.end field

.field private d:Lcom/tappx/a/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/tappx/a/t2;)V
    .registers 3

    .line 5
    new-instance v0, Lcom/tappx/a/n1;

    invoke-direct {v0}, Lcom/tappx/a/n1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/m0;-><init>(Lcom/tappx/a/t2;Lcom/tappx/a/n1;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tappx/a/t2;Lcom/tappx/a/n1;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/m0;->a:Lcom/tappx/a/t2;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/m0;->b:Lcom/tappx/a/n1;

    .line 4
    invoke-virtual {p2, p0}, Lcom/tappx/a/n1;->a(Lcom/tappx/a/n1$b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tappx/a/u1;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 17
    sget-wide v0, Lcom/tappx/a/n;->a:J

    return-wide v0
.end method

.method public a()V
    .registers 3

    .line 18
    iget-boolean v0, p0, Lcom/tappx/a/m0;->e:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "tJ/RDdwmde5sNRNl2OtVTfCw4OuAfiMIPu/zkSLGIT2zwNm3C7thqGQX04tsdosL"

    .line 19
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/tappx/a/m0;->c:Lcom/tappx/a/m0$d;

    if-eqz v0, :cond_15

    .line 21
    sget-object v1, Lcom/tappx/a/a2;->e:Lcom/tappx/a/a2;

    invoke-virtual {v0, v1}, Lcom/tappx/a/m0$d;->a(Lcom/tappx/a/a2;)V

    :cond_15
    return-void
.end method

.method protected a(J)V
    .registers 8

    .line 9
    sget-wide v0, Lcom/tappx/a/n$a;->a:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_18

    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "/K518OsQwGWEySte999XTohBdjGQhBkPInQIUsTjG/cUwA8AiN+9hbf5gwErXHcf"

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-wide p1, Lcom/tappx/a/n$a;->a:J

    goto :goto_2d

    .line 12
    :cond_18
    sget-wide v0, Lcom/tappx/a/n$a;->b:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_2d

    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "wUWo9wuOBqc42QHm8/JVjGXXMTT2DoYHEa3wguYezUW0KEhBaolGwT3KPMo6Sz+d"

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-wide p1, Lcom/tappx/a/n$a;->b:J

    .line 16
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/tappx/a/m0;->b:Lcom/tappx/a/n1;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/n1;->a(J)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    .registers 7

    .line 1
    :try_start_0
    iput-object p3, p0, Lcom/tappx/a/m0;->d:Lcom/tappx/a/u1;

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p3}, Lcom/tappx/a/m0;->a(Z)V

    .line 3
    new-instance v0, Lcom/tappx/a/m0$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/tappx/a/m0$d;-><init>(Lcom/tappx/a/m0;Lcom/tappx/a/m0$c;Lcom/tappx/a/m0$a;)V

    iput-object v0, p0, Lcom/tappx/a/m0;->c:Lcom/tappx/a/m0$d;

    .line 4
    invoke-virtual {p0}, Lcom/tappx/a/m0;->f()V
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_2b

    const-string v0, "w73w5GD8aw/6JbEwVsPDUQ"

    const/4 v1, 0x1

    :try_start_14
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {v0, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p3, p0, Lcom/tappx/a/m0;->c:Lcom/tappx/a/m0$d;

    iget-object v0, p0, Lcom/tappx/a/m0;->d:Lcom/tappx/a/u1;

    invoke-virtual {p0, p1, p3, v0}, Lcom/tappx/a/m0;->b(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_2a} :catch_2b

    goto :goto_30

    .line 8
    :catch_2b
    sget-object p1, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    invoke-interface {p2, p1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    :goto_30
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/tappx/a/m0;->e:Z

    if-eqz p1, :cond_9

    .line 24
    iget-object p1, p0, Lcom/tappx/a/m0;->b:Lcom/tappx/a/n1;

    invoke-virtual {p1}, Lcom/tappx/a/n1;->a()V

    :cond_9
    return-void
.end method

.method protected b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0;->b:Lcom/tappx/a/n1;

    invoke-virtual {v0}, Lcom/tappx/a/n1;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/m0;->e()V

    return-void
.end method

.method protected abstract b(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/u1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tappx/a/m0$c;",
            "TT;)V"
        }
    .end annotation
.end method

.method c()Lcom/tappx/a/u1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0;->d:Lcom/tappx/a/u1;

    return-object v0
.end method

.method public d()Lcom/tappx/a/t2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0;->a:Lcom/tappx/a/t2;

    return-object v0
.end method

.method protected abstract e()V
.end method

.method f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0;->d:Lcom/tappx/a/u1;

    invoke-virtual {p0, v0}, Lcom/tappx/a/m0;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/tappx/a/m0;->a(J)V

    return-void
.end method
