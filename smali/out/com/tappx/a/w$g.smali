.class Lcom/tappx/a/w$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w;->a(JLcom/tappx/a/p2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/f0$b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/m;


# direct methods
.method constructor <init>(Lcom/tappx/a/w;Lcom/tappx/a/m;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/w$g;->a:Lcom/tappx/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tappx/a/w$g;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/w$g;->a:Lcom/tappx/a/m;

    invoke-interface {v0, p1}, Lcom/tappx/a/m;->a(Ljava/lang/Object;)V

    return-void
.end method
