.class Lcom/tappx/a/i2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/i2;->a(Lcom/tappx/a/p2;JLcom/tappx/a/i2$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/m<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/i2$c;


# direct methods
.method constructor <init>(Lcom/tappx/a/i2;Lcom/tappx/a/i2$c;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/i2$a;->a:Lcom/tappx/a/i2$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tappx/a/i2$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/tappx/a/i2$a;->a:Lcom/tappx/a/i2$c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/tappx/a/i2$c;->a(Z)V

    return-void
.end method
