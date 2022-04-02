.class Lcom/tappx/a/s0$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/s0;->a(Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/m0$c;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tappx/a/s0;


# direct methods
.method constructor <init>(Lcom/tappx/a/s0;Lcom/tappx/a/m0$c;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tappx/a/s0$a;->c:Lcom/tappx/a/s0;

    iput-object p2, p0, Lcom/tappx/a/s0$a;->a:Lcom/tappx/a/m0$c;

    iput-object p3, p0, Lcom/tappx/a/s0$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 1

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "1HPYA2lkbaNURYCXsP4iRrPA2bcLu2GoZBfTi2x2iws"

    .line 1
    invoke-static {v0, p1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/tappx/a/s0$a;->a:Lcom/tappx/a/m0$c;

    if-eqz p1, :cond_11

    .line 3
    sget-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p1, v0}, Lcom/tappx/a/m0$c;->a(Lcom/tappx/a/a2;)V

    :cond_11
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s0$a;->a:Lcom/tappx/a/m0$c;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcom/tappx/a/m0$c;->a()V

    :cond_7
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sQBMFfIvnZat9SH496KzHfKib626NzkhHKkXIfYGxxc"

    .line 1
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/s0$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/s0$a;->a:Lcom/tappx/a/m0$c;

    if-eqz v0, :cond_1a

    .line 4
    iget-object v1, p0, Lcom/tappx/a/s0$a;->c:Lcom/tappx/a/s0;

    invoke-static {v1}, Lcom/tappx/a/s0;->a(Lcom/tappx/a/s0;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/a/m0$c;->a(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method public onAdOpened()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s0$a;->a:Lcom/tappx/a/m0$c;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcom/tappx/a/m0$c;->d()V

    :cond_7
    return-void
.end method
