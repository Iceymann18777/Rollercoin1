.class Lcom/tappx/a/t5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/t5;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tappx/a/t5;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/t5$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/s5;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/s5<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tappx/a/s5;->o()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/tappx/a/t5$a;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
