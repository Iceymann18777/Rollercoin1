.class public abstract Lcom/tappx/a/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/d1$c;,
        Lcom/tappx/a/d1$b;,
        Lcom/tappx/a/d1$a;
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

.field private c:Lcom/tappx/a/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/tappx/a/d1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/d1<",
            "TT;>.c;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/tappx/a/t2;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/n1;

    invoke-direct {v0}, Lcom/tappx/a/n1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/d1;-><init>(Lcom/tappx/a/t2;Lcom/tappx/a/n1;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tappx/a/t2;Lcom/tappx/a/n1;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tappx/a/d1;->a:Lcom/tappx/a/t2;

    .line 4
    iput-object p2, p0, Lcom/tappx/a/d1;->b:Lcom/tappx/a/n1;

    .line 5
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

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public a()V
    .registers 3

    .line 20
    iget-boolean v0, p0, Lcom/tappx/a/d1;->d:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "wUWo9wuOBqc42QHm8/JVjGXXMTT2DoYHEa3wguYezUW0KEhBaolGwT3KPMo6Sz+d"

    .line 21
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/tappx/a/d1;->e:Lcom/tappx/a/d1$c;

    if-eqz v0, :cond_15

    .line 23
    sget-object v1, Lcom/tappx/a/a2;->e:Lcom/tappx/a/a2;

    invoke-virtual {v0, v1}, Lcom/tappx/a/d1$c;->a(Lcom/tappx/a/a2;)V

    :cond_15
    return-void
.end method

.method protected a(J)V
    .registers 8

    .line 9
    sget-wide v0, Lcom/tappx/a/n$a;->c:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_18

    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "tJ/RDdwmde5sNRNl2OtVTfCw4OuAfiMIPu/zkSLGIT2zwNm3C7thqGQX04tsdosL"

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-wide p1, Lcom/tappx/a/n$a;->c:J

    goto :goto_2d

    .line 12
    :cond_18
    sget-wide v0, Lcom/tappx/a/n$a;->d:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_2d

    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "w73w5GD8aw/6JbEwVsPDUQ"

    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-wide p1, Lcom/tappx/a/n$a;->d:J

    .line 16
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/tappx/a/d1;->b:Lcom/tappx/a/n1;

    invoke-virtual {v0, p1, p2}, Lcom/tappx/a/n1;->a(J)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    .registers 7

    .line 1
    :try_start_0
    iput-object p3, p0, Lcom/tappx/a/d1;->c:Lcom/tappx/a/u1;

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p3}, Lcom/tappx/a/d1;->a(Z)V

    .line 3
    new-instance v0, Lcom/tappx/a/d1$c;

    invoke-direct {v0, p0, p2}, Lcom/tappx/a/d1$c;-><init>(Lcom/tappx/a/d1;Lcom/tappx/a/d1$b;)V

    iput-object v0, p0, Lcom/tappx/a/d1;->e:Lcom/tappx/a/d1$c;

    .line 4
    invoke-virtual {p0}, Lcom/tappx/a/d1;->f()V
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_10} :catch_2a

    const-string v0, "w73w5GD8aw/6JbEwVsPDUQ"

    const/4 v1, 0x1

    :try_start_13
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {v0, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p3, p0, Lcom/tappx/a/d1;->e:Lcom/tappx/a/d1$c;

    iget-object v0, p0, Lcom/tappx/a/d1;->c:Lcom/tappx/a/u1;

    invoke-virtual {p0, p1, p3, v0}, Lcom/tappx/a/d1;->b(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 8
    :catch_2a
    sget-object p1, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    invoke-interface {p2, p1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    :goto_2f
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/tappx/a/d1;->d:Z

    if-eqz p1, :cond_9

    .line 19
    iget-object p1, p0, Lcom/tappx/a/d1;->b:Lcom/tappx/a/n1;

    invoke-virtual {p1}, Lcom/tappx/a/n1;->a()V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1;->b:Lcom/tappx/a/n1;

    invoke-virtual {v0}, Lcom/tappx/a/n1;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/d1;->e()V

    return-void
.end method

.method protected abstract b(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/u1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tappx/a/d1$b;",
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
    iget-object v0, p0, Lcom/tappx/a/d1;->c:Lcom/tappx/a/u1;

    return-object v0
.end method

.method public d()Lcom/tappx/a/t2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1;->a:Lcom/tappx/a/t2;

    return-object v0
.end method

.method protected abstract e()V
.end method

.method f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d1;->c:Lcom/tappx/a/u1;

    invoke-virtual {p0, v0}, Lcom/tappx/a/d1;->a(Lcom/tappx/a/u1;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/tappx/a/d1;->a(J)V

    return-void
.end method

.method public abstract g()V
.end method
