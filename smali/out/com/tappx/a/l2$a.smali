.class Lcom/tappx/a/l2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/l2;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/l2;


# direct methods
.method constructor <init>(Lcom/tappx/a/l2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/l2$a;->a:Lcom/tappx/a/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2$a;->a:Lcom/tappx/a/l2;

    invoke-static {v0}, Lcom/tappx/a/l2;->a(Lcom/tappx/a/l2;)Lcom/tappx/a/p3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseEnabled(Z)V

    return-void
.end method
