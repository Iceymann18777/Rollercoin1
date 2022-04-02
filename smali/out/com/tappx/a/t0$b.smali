.class public final Lcom/tappx/a/t0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/m0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tappx/a/m0$b<",
        "Lcom/tappx/a/x1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/t2;


# direct methods
.method public constructor <init>(Lcom/tappx/a/t2;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/t0$b;->a:Lcom/tappx/a/t2;

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/m0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tappx/a/m0<",
            "Lcom/tappx/a/x1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tappx/a/t0;

    iget-object v1, p0, Lcom/tappx/a/t0$b;->a:Lcom/tappx/a/t2;

    invoke-direct {v0, v1}, Lcom/tappx/a/t0;-><init>(Lcom/tappx/a/t2;)V

    return-object v0
.end method

.method public a(Lcom/tappx/a/u1;)Z
    .registers 2

    .line 2
    instance-of p1, p1, Lcom/tappx/a/x1;

    return p1
.end method
