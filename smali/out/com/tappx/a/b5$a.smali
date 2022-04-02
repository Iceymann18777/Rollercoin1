.class Lcom/tappx/a/b5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/b5;->a(ILcom/tappx/a/c5;Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/c5$a;Lcom/tappx/a/f5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c5$a;


# direct methods
.method constructor <init>(Lcom/tappx/a/b5;Lcom/tappx/a/c5$a;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/b5$a;->a:Lcom/tappx/a/c5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/a/b5$a;->a:Lcom/tappx/a/c5$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/tappx/a/c5$a;->e()V

    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/b5$a;->a:Lcom/tappx/a/c5$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/tappx/a/c5$a;->a()V

    :cond_7
    return-void
.end method
