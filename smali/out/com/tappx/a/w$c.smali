.class Lcom/tappx/a/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w;->a(Lcom/tappx/a/z1;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/f0$b<",
        "Lcom/tappx/a/y1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/m;


# direct methods
.method constructor <init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/w$c;->a:Lcom/tappx/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/y1;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "+QDdaoqvt3qJgm+ZybmeEWKfNA+0iZtjtThflGW6n9w"

    .line 2
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/w$c;->a:Lcom/tappx/a/m;

    invoke-interface {v0, p1}, Lcom/tappx/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/y1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/w$c;->a(Lcom/tappx/a/y1;)V

    return-void
.end method
