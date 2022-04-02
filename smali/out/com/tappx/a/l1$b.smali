.class Lcom/tappx/a/l1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/l1;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/z1;)V
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
.field final synthetic a:Lcom/tappx/a/l1;


# direct methods
.method constructor <init>(Lcom/tappx/a/l1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l1$b;->a:Lcom/tappx/a/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/v$a;)V
    .registers 3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "hxsTS1PgJe7SvMvbIVXAlWNuK93hkAa0eyf9OlSh3dE"

    .line 2
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tappx/a/l1$b;->a:Lcom/tappx/a/l1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/l1;Lcom/tappx/a/v$b;)Lcom/tappx/a/v$b;

    .line 4
    iget-object p1, p0, Lcom/tappx/a/l1$b;->a:Lcom/tappx/a/l1;

    invoke-static {p1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/l1;)Lcom/tappx/a/d1$b;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 5
    iget-object p1, p0, Lcom/tappx/a/l1$b;->a:Lcom/tappx/a/l1;

    invoke-static {p1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/l1;)Lcom/tappx/a/d1$b;

    move-result-object p1

    sget-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p1, v0}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    :cond_21
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/v$a;

    invoke-virtual {p0, p1}, Lcom/tappx/a/l1$b;->a(Lcom/tappx/a/v$a;)V

    return-void
.end method
