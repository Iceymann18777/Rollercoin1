.class Lcom/tappx/a/x3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/o3$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/x3;


# direct methods
.method constructor <init>(Lcom/tappx/a/x3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/x3$b;->a:Lcom/tappx/a/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x3$b;->a:Lcom/tappx/a/x3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tappx/a/x3;->a(Lcom/tappx/a/x3;Z)Z

    return-void
.end method
