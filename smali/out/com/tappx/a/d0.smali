.class public abstract Lcom/tappx/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/d0$b;,
        Lcom/tappx/a/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/tappx/a/f0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/f0$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/tappx/a/f0$a;

.field private c:Z

.field private d:Lcom/tappx/a/g0;

.field private e:Lcom/tappx/a/d0$b;


# direct methods
.method protected constructor <init>(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/f0$b<",
            "TT;>;",
            "Lcom/tappx/a/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tappx/a/d0$b;->b:Lcom/tappx/a/d0$b;

    iput-object v0, p0, Lcom/tappx/a/d0;->e:Lcom/tappx/a/d0$b;

    .line 5
    iput-object p1, p0, Lcom/tappx/a/d0;->a:Lcom/tappx/a/f0$b;

    .line 6
    iput-object p2, p0, Lcom/tappx/a/d0;->b:Lcom/tappx/a/f0$a;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/tappx/a/c0;)Lcom/tappx/a/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/c0;",
            ")",
            "Lcom/tappx/a/f0<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/tappx/a/d0$b;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/tappx/a/d0;->e:Lcom/tappx/a/d0$b;

    return-void
.end method

.method public a(Lcom/tappx/a/f0$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d0;->b:Lcom/tappx/a/f0$a;

    return-void
.end method

.method public a(Lcom/tappx/a/g0;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/d0;->d:Lcom/tappx/a/g0;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/tappx/a/d0;->a:Lcom/tappx/a/f0$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/tappx/a/f0$b;->a(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/tappx/a/d0;->c:Z

    return-void
.end method

.method public abstract a()[B
.end method

.method public b()Lcom/tappx/a/f0$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d0;->b:Lcom/tappx/a/f0$a;

    return-object v0
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/tappx/a/d0$a;
.end method

.method public e()Lcom/tappx/a/d0$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d0;->e:Lcom/tappx/a/d0$b;

    return-object v0
.end method

.method public f()Lcom/tappx/a/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d0;->d:Lcom/tappx/a/g0;

    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method protected h()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/d0;->c:Z

    return v0
.end method
