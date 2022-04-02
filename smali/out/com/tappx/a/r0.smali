.class public Lcom/tappx/a/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/q0;


# instance fields
.field private a:Lcom/tappx/a/m0$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/r0;->a:Lcom/tappx/a/m0$c;

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public loadAd()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "H/rVILrKlRts/uc0QGnmA4Hk17FLoSlHY2PnqDcbgWe1PU/zQugqYichQsbmZO3F"

    .line 1
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/r0;->a:Lcom/tappx/a/m0$c;

    sget-object v1, Lcom/tappx/a/a2;->c:Lcom/tappx/a/a2;

    invoke-interface {v0, v1}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    return-void
.end method
