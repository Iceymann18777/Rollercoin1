.class Lcom/tappx/a/m0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/m0$c;

.field final synthetic b:Lcom/tappx/a/m0;


# direct methods
.method private constructor <init>(Lcom/tappx/a/m0;Lcom/tappx/a/m0$c;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lcom/tappx/a/m0$d;->b:Lcom/tappx/a/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tappx/a/m0;Lcom/tappx/a/m0$c;Lcom/tappx/a/m0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/m0$d;-><init>(Lcom/tappx/a/m0;Lcom/tappx/a/m0$c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0$d;->b:Lcom/tappx/a/m0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/m0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0, p1}, Lcom/tappx/a/m0$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/tappx/a/a2;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/tappx/a/m0$d;->b:Lcom/tappx/a/m0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/m0;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0, p1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->b()V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->c()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m0$d;->a:Lcom/tappx/a/m0$c;

    invoke-interface {v0}, Lcom/tappx/a/m0$c;->d()V

    return-void
.end method
