.class Lcom/tappx/a/k2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/k2;->a(Lcom/tappx/a/k2$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/h<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/k2$c;


# direct methods
.method constructor <init>(Lcom/tappx/a/k2;Lcom/tappx/a/k2$c;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/k2$b;->a:Lcom/tappx/a/k2$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tappx/a/k2$b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/tappx/a/k2$b;->a:Lcom/tappx/a/k2$c;

    invoke-interface {p1}, Lcom/tappx/a/k2$c;->a()V

    return-void
.end method
