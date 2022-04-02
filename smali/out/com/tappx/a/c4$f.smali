.class Lcom/tappx/a/c4$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/k4$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/h4;

.field final synthetic b:Lcom/tappx/a/c4;


# direct methods
.method constructor <init>(Lcom/tappx/a/c4;Lcom/tappx/a/h4;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/c4$f;->b:Lcom/tappx/a/c4;

    iput-object p2, p0, Lcom/tappx/a/c4$f;->a:Lcom/tappx/a/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/f4;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4$f;->b:Lcom/tappx/a/c4;

    iget-object v1, p0, Lcom/tappx/a/c4$f;->a:Lcom/tappx/a/h4;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/c4;Lcom/tappx/a/h4;Ljava/lang/String;)V

    return-void
.end method
