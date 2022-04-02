.class Lcom/tappx/a/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/k2$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/v;

.field private final b:Lcom/tappx/a/t;


# direct methods
.method public constructor <init>(Lcom/tappx/a/v;Lcom/tappx/a/t;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/k2;->a:Lcom/tappx/a/v;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/k2;->b:Lcom/tappx/a/t;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/k2;)Lcom/tappx/a/t;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/k2;->b:Lcom/tappx/a/t;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/tappx/a/k2$c;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/tappx/a/k2;->a:Lcom/tappx/a/v;

    new-instance v1, Lcom/tappx/a/k2$a;

    invoke-direct {v1, p0, p1}, Lcom/tappx/a/k2$a;-><init>(Lcom/tappx/a/k2;Lcom/tappx/a/k2$c;)V

    new-instance v2, Lcom/tappx/a/k2$b;

    invoke-direct {v2, p0, p1}, Lcom/tappx/a/k2$b;-><init>(Lcom/tappx/a/k2;Lcom/tappx/a/k2$c;)V

    invoke-interface {v0, v1, v2}, Lcom/tappx/a/v;->a(Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;

    return-void
.end method
