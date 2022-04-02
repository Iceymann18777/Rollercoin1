.class Lcom/tappx/a/x0$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/x0;->a(Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/d1$b;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tappx/a/d1;


# direct methods
.method constructor <init>(Lcom/tappx/a/x0;Lcom/tappx/a/d1$b;Ljava/lang/Runnable;Lcom/tappx/a/d1;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    iput-object p3, p0, Lcom/tappx/a/x0$a;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/tappx/a/x0$a;->c:Lcom/tappx/a/d1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->d()V

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
    iget-object p1, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    sget-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    invoke-interface {p1, v0}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->a()V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->c()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x0$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sQBMFfIvnZat9SH496KzHfKib626NzkhHKkXIfYGxxc"

    .line 2
    invoke-static {v1, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    iget-object v1, p0, Lcom/tappx/a/x0$a;->c:Lcom/tappx/a/d1;

    invoke-interface {v0, v1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/d1;)V

    return-void
.end method

.method public onAdOpened()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/x0$a;->a:Lcom/tappx/a/d1$b;

    invoke-interface {v0}, Lcom/tappx/a/d1$b;->b()V

    return-void
.end method
