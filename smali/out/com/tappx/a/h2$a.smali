.class Lcom/tappx/a/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/h2;


# direct methods
.method constructor <init>(Lcom/tappx/a/h2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/h2$a;->a:Lcom/tappx/a/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h2$a;->a:Lcom/tappx/a/h2;

    invoke-static {v0}, Lcom/tappx/a/h2;->a(Lcom/tappx/a/h2;)V

    return-void
.end method
