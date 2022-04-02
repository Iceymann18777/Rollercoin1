.class Lcom/tappx/a/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m;


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
        "Lcom/tappx/a/m<",
        "Lcom/tappx/a/y1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/l1;


# direct methods
.method constructor <init>(Lcom/tappx/a/l1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l1$a;->a:Lcom/tappx/a/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/y1;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l1$a;->a:Lcom/tappx/a/l1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/l1;Lcom/tappx/a/v$b;)Lcom/tappx/a/v$b;

    .line 3
    iget-object v0, p0, Lcom/tappx/a/l1$a;->a:Lcom/tappx/a/l1;

    invoke-static {v0, p1}, Lcom/tappx/a/l1;->a(Lcom/tappx/a/l1;Lcom/tappx/a/y1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "hxsTS1PgJe7SvMvbIVXAleqYGWt1TgQOogRt9pTwP9Y"

    .line 4
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/l1$a;->a(Lcom/tappx/a/y1;)V

    return-void
.end method
