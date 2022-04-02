.class public Lcom/tappx/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/x;


# direct methods
.method public constructor <init>(Lcom/tappx/a/x;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/q$a;->a:Lcom/tappx/a/x;

    return-void
.end method


# virtual methods
.method a(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/q;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/f0$b<",
            "Lcom/tappx/a/j2;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")",
            "Lcom/tappx/a/q;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tappx/a/q;

    iget-object v1, p0, Lcom/tappx/a/q$a;->a:Lcom/tappx/a/x;

    invoke-direct {v0, v1, p1, p2}, Lcom/tappx/a/q;-><init>(Lcom/tappx/a/x;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    return-object v0
.end method
