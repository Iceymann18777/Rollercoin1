.class Lcom/tappx/a/g2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/n0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/g2;


# direct methods
.method constructor <init>(Lcom/tappx/a/g2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/a2;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    iget-boolean v1, v0, Lcom/tappx/a/f2;->k:Z

    if-eqz v1, :cond_7

    return-void

    .line 10
    :cond_7
    invoke-virtual {v0, p1}, Lcom/tappx/a/f2;->b(Lcom/tappx/a/a2;)Lcom/tappx/sdk/android/TappxAdError;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;Lcom/tappx/sdk/android/TappxAdError;)V

    .line 12
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->d(Lcom/tappx/a/g2;)V

    return-void
.end method

.method public a(Lcom/tappx/a/u1;)V
    .registers 4

    .line 13
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v1}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBanner;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerClicked(Lcom/tappx/sdk/android/TappxBanner;)V

    .line 14
    :cond_17
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-virtual {p1}, Lcom/tappx/a/u1;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tappx/a/f2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tappx/a/u1;Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    iget-boolean v1, v0, Lcom/tappx/a/f2;->k:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;Z)Z

    .line 3
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;Lcom/tappx/a/u1;)Lcom/tappx/a/u1;

    .line 4
    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0, p2}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p2}, Lcom/tappx/a/g2;->d(Lcom/tappx/a/g2;)V

    .line 6
    iget-object p2, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p2}, Lcom/tappx/a/g2;->e(Lcom/tappx/a/g2;)V

    .line 7
    iget-object p2, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p2, p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;Lcom/tappx/a/u1;)V

    .line 8
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->f(Lcom/tappx/a/g2;)V

    return-void
.end method

.method public b(Lcom/tappx/a/u1;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->g(Lcom/tappx/a/g2;)Lcom/tappx/a/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/f3;->a()V

    .line 2
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBanner;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerExpanded(Lcom/tappx/sdk/android/TappxBanner;)V

    :cond_20
    return-void
.end method

.method public c(Lcom/tappx/a/u1;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->g(Lcom/tappx/a/g2;)Lcom/tappx/a/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tappx/a/f3;->c()V

    .line 2
    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {p1}, Lcom/tappx/a/g2;->b(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBannerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tappx/a/g2$a;->a:Lcom/tappx/a/g2;

    invoke-static {v0}, Lcom/tappx/a/g2;->a(Lcom/tappx/a/g2;)Lcom/tappx/sdk/android/TappxBanner;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tappx/sdk/android/TappxBannerListener;->onBannerCollapsed(Lcom/tappx/sdk/android/TappxBanner;)V

    :cond_20
    return-void
.end method
