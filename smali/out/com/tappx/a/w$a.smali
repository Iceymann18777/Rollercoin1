.class Lcom/tappx/a/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w;->a(Lcom/tappx/a/b2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/f0$b<",
        "Lcom/tappx/a/w1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/m;


# direct methods
.method constructor <init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/w$a;->a:Lcom/tappx/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/w1;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0SvrL3Mu6kpegPQCJvH2Z3Pn/6HNDFPvXWhwtIQHwo9OKbwcnbuQeVUXYNnm0mlw"

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/w$a;->a:Lcom/tappx/a/m;

    invoke-interface {v0, p1}, Lcom/tappx/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/w1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/w$a;->a(Lcom/tappx/a/w1;)V

    return-void
.end method
