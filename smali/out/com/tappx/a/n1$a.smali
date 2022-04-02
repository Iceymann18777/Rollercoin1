.class Lcom/tappx/a/n1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/n1;


# direct methods
.method constructor <init>(Lcom/tappx/a/n1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n1$a;->a:Lcom/tappx/a/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/n1$a;->a:Lcom/tappx/a/n1;

    invoke-static {v0}, Lcom/tappx/a/n1;->a(Lcom/tappx/a/n1;)Lcom/tappx/a/n1$b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tappx/a/n1$a;->a:Lcom/tappx/a/n1;

    invoke-static {v0}, Lcom/tappx/a/n1;->a(Lcom/tappx/a/n1;)Lcom/tappx/a/n1$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tappx/a/n1$b;->a()V

    :cond_11
    return-void
.end method
