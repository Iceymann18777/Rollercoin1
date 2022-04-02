.class Lcom/tappx/a/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/u0;->a(Landroid/content/Context;Lcom/tappx/a/d1$b;Lcom/tappx/a/x1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/u0;


# direct methods
.method constructor <init>(Lcom/tappx/a/u0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/u0$a;->a:Lcom/tappx/a/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u0$a;->a:Lcom/tappx/a/u0;

    invoke-virtual {v0}, Lcom/tappx/a/d1;->d()Lcom/tappx/a/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/u0$a;->a:Lcom/tappx/a/u0;

    invoke-static {v1}, Lcom/tappx/a/u0;->a(Lcom/tappx/a/u0;)Lcom/tappx/a/x1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tappx/a/u1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/t2;->a(Ljava/lang/String;)V

    return-void
.end method
