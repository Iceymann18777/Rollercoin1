.class Lcom/tappx/a/v2;
.super Lcom/tappx/a/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tappx/a/f0$b<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/tappx/a/d0;-><init>(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/v2;->f:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/tappx/a/g0;

    const/16 p2, 0x2710

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/tappx/a/g0;-><init>(IIF)V

    invoke-virtual {p1, p3}, Lcom/tappx/a/g0;->a(Z)Lcom/tappx/a/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/g0;)V

    .line 4
    sget-object p1, Lcom/tappx/a/d0$b;->a:Lcom/tappx/a/d0$b;

    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/d0$b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tappx/a/c0;)Lcom/tappx/a/f0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/c0;",
            ")",
            "Lcom/tappx/a/f0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/tappx/a/f0;->a(Ljava/lang/Object;)Lcom/tappx/a/f0;

    move-result-object p1

    return-object p1
.end method

.method public a()[B
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public c()Ljava/util/Map;
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

.method public d()Lcom/tappx/a/d0$a;
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/d0$a;->b:Lcom/tappx/a/d0$a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/v2;->f:Ljava/lang/String;

    return-object v0
.end method
