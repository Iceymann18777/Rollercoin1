.class Lcom/tappx/a/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w;->a(Lcom/tappx/a/z1;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/h;

.field final synthetic b:Lcom/tappx/a/w;


# direct methods
.method constructor <init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/w$d;->b:Lcom/tappx/a/w;

    iput-object p2, p0, Lcom/tappx/a/w$d;->a:Lcom/tappx/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/a0;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/tappx/a/a0;->a()Lcom/tappx/a/a0$a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/tappx/a/a0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "w4andMWX7t5Jfk790BgWUrMNcOuo2+YQaoHGCbc1pcv+JGcCt9DRPjxTYUAbO5pE"

    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/w$d;->b:Lcom/tappx/a/w;

    invoke-virtual {v0, p1}, Lcom/tappx/a/w;->a(Lcom/tappx/a/a0;)Lcom/tappx/a/v$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tappx/a/w$d;->a:Lcom/tappx/a/h;

    invoke-interface {v0, p1}, Lcom/tappx/a/h;->a(Ljava/lang/Object;)V

    return-void
.end method
