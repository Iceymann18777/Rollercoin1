.class Lcom/tappx/a/c4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/o3$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c4;->a(Lcom/tappx/a/q4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/c4;


# direct methods
.method constructor <init>(Lcom/tappx/a/c4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c4$b;->a:Lcom/tappx/a/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4$b;->a:Lcom/tappx/a/c4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;Z)Z

    return-void
.end method
