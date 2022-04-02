.class Lcom/tappx/a/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/k1;->a(Landroid/content/Context;Lcom/tappx/a/m0$c;Lcom/tappx/a/z1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/h<",
        "Lcom/tappx/a/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/k1;


# direct methods
.method constructor <init>(Lcom/tappx/a/k1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/k1$b;->a:Lcom/tappx/a/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/v$a;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "wA68d1p5v8MSlvKrjle67r38zreZaMrbDBiCU39LXJU"

    .line 2
    invoke-static {p1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tappx/a/k1$b;->a:Lcom/tappx/a/k1;

    invoke-static {p1}, Lcom/tappx/a/k1;->a(Lcom/tappx/a/k1;)Lcom/tappx/a/m0$c;

    move-result-object p1

    sget-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p1, v0}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/v$a;

    invoke-virtual {p0, p1}, Lcom/tappx/a/k1$b;->a(Lcom/tappx/a/v$a;)V

    return-void
.end method
