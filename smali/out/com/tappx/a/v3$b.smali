.class Lcom/tappx/a/v3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/d4$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/v3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/v3;


# direct methods
.method constructor <init>(Lcom/tappx/a/v3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/v3$b;->a:Lcom/tappx/a/v3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/v3$b;->a:Lcom/tappx/a/v3;

    invoke-static {v0}, Lcom/tappx/a/v3;->a(Lcom/tappx/a/v3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/tappx/a/v3$b;->a:Lcom/tappx/a/v3;

    invoke-static {v0}, Lcom/tappx/a/v3;->a(Lcom/tappx/a/v3;)Lcom/tappx/a/t3$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tappx/a/t3$b;->a(Z)V

    :cond_11
    return-void
.end method
