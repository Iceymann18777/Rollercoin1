.class Lcom/tappx/a/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/r1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/v1;Lcom/tappx/sdk/android/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/m<",
        "Lcom/tappx/a/w1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/r1;


# direct methods
.method constructor <init>(Lcom/tappx/a/r1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/r1$a;->a:Lcom/tappx/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/w1;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/r1$a;->a:Lcom/tappx/a/r1;

    invoke-static {v0, p1}, Lcom/tappx/a/r1;->a(Lcom/tappx/a/r1;Lcom/tappx/a/w1;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/tappx/a/w1;

    invoke-virtual {p0, p1}, Lcom/tappx/a/r1$a;->a(Lcom/tappx/a/w1;)V

    return-void
.end method
