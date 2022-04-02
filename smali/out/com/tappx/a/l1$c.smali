.class public Lcom/tappx/a/l1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/d1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/d1$a<",
        "Lcom/tappx/a/z1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/t2;

.field private final b:Lcom/tappx/a/v;


# direct methods
.method public constructor <init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/l1$c;->a:Lcom/tappx/a/t2;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/l1$c;->b:Lcom/tappx/a/v;

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/d1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tappx/a/d1<",
            "Lcom/tappx/a/z1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tappx/a/l1;

    iget-object v1, p0, Lcom/tappx/a/l1$c;->a:Lcom/tappx/a/t2;

    iget-object v2, p0, Lcom/tappx/a/l1$c;->b:Lcom/tappx/a/v;

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/l1;-><init>(Lcom/tappx/a/t2;Lcom/tappx/a/v;)V

    return-object v0
.end method

.method public a(Lcom/tappx/a/u1;)Z
    .registers 2

    .line 2
    instance-of p1, p1, Lcom/tappx/a/z1;

    return p1
.end method
