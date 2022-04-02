.class Lcom/tappx/a/l2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/p3$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/l2;
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
    iput-object p1, p0, Lcom/tappx/a/l2$b;->a:Lcom/tappx/a/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2$b;->a:Lcom/tappx/a/l2;

    invoke-static {v0}, Lcom/tappx/a/l2;->b(Lcom/tappx/a/l2;)V

    return-void
.end method
