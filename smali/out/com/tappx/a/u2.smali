.class public Lcom/tappx/a/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/t2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/u2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/b0;


# direct methods
.method public constructor <init>(Lcom/tappx/a/b0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u2;->a:Lcom/tappx/a/b0;

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/u2;)Lcom/tappx/a/b0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/u2;->a:Lcom/tappx/a/b0;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "0fBLEtCaOL9UAJMNctGOmg"

    .line 2
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/tappx/a/v2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/tappx/a/v2;-><init>(Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    .line 4
    new-instance p1, Lcom/tappx/a/u2$b;

    invoke-direct {p1, p0, v0, v1}, Lcom/tappx/a/u2$b;-><init>(Lcom/tappx/a/u2;Lcom/tappx/a/v2;Lcom/tappx/a/u2$a;)V

    invoke-virtual {v0, p1}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/f0$a;)V

    .line 5
    iget-object p1, p0, Lcom/tappx/a/u2;->a:Lcom/tappx/a/b0;

    invoke-interface {p1, v0}, Lcom/tappx/a/b0;->a(Lcom/tappx/a/d0;)V

    return-void
.end method
