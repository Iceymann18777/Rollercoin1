.class Lcom/tappx/a/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/l$a<",
        "Lcom/tappx/a/d2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c;


# direct methods
.method constructor <init>(Lcom/tappx/a/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c$d;->a:Lcom/tappx/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/d2;
    .registers 4

    .line 2
    new-instance v0, Lcom/tappx/a/d2;

    iget-object v1, p0, Lcom/tappx/a/c$d;->a:Lcom/tappx/a/c;

    invoke-virtual {v1}, Lcom/tappx/a/c;->m()Lcom/tappx/a/y2;

    move-result-object v1

    iget-object v2, p0, Lcom/tappx/a/c$d;->a:Lcom/tappx/a/c;

    invoke-static {v2}, Lcom/tappx/a/c;->f(Lcom/tappx/a/c;)Lcom/tappx/a/n2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/d2;-><init>(Lcom/tappx/a/y2;Lcom/tappx/a/n2;)V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/c$d;->a()Lcom/tappx/a/d2;

    move-result-object v0

    return-object v0
.end method
