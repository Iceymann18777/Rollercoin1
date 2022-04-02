.class Lcom/tappx/a/h2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/e1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/h2;


# direct methods
.method constructor <init>(Lcom/tappx/a/h2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/a2;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    iget-boolean v1, v0, Lcom/tappx/a/f2;->k:Z

    if-eqz v1, :cond_7

    return-void

    .line 10
    :cond_7
    invoke-virtual {v0, p1}, Lcom/tappx/a/f2;->b(Lcom/tappx/a/a2;)Lcom/tappx/sdk/android/TappxAdError;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {v0, p1}, Lcom/tappx/a/h2;->a(Lcom/tappx/a/h2;Lcom/tappx/sdk/android/TappxAdError;)V

    return-void
.end method

.method public a(Lcom/tappx/a/u1;)V
    .registers 3

    .line 12
    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->h(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->h(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {v0}, Lcom/tappx/a/h2;->b(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitial;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialClicked(Lcom/tappx/sdk/android/TappxInterstitial;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/tappx/a/u1;Lcom/tappx/a/d1;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    iget-boolean v1, v0, Lcom/tappx/a/f2;->k:Z

    if-eqz v1, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {v0, p1}, Lcom/tappx/a/h2;->a(Lcom/tappx/a/h2;Lcom/tappx/a/u1;)Lcom/tappx/a/u1;

    .line 3
    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {v0}, Lcom/tappx/a/h2;->d(Lcom/tappx/a/h2;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {v0, p2}, Lcom/tappx/a/h2;->a(Lcom/tappx/a/h2;Lcom/tappx/a/d1;)Lcom/tappx/a/d1;

    .line 5
    iget-object p2, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p2, p1}, Lcom/tappx/a/h2;->b(Lcom/tappx/a/h2;Lcom/tappx/a/u1;)V

    .line 6
    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->e(Lcom/tappx/a/h2;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->f(Lcom/tappx/a/h2;)Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 7
    :goto_2c
    iget-object p2, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p2}, Lcom/tappx/a/h2;->g(Lcom/tappx/a/h2;)V

    if-eqz p1, :cond_38

    .line 8
    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-virtual {p1}, Lcom/tappx/a/h2;->f()V

    :cond_38
    return-void
.end method

.method public b(Lcom/tappx/a/u1;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->h(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {p1}, Lcom/tappx/a/h2;->h(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tappx/a/h2$b;->a:Lcom/tappx/a/h2;

    invoke-static {v0}, Lcom/tappx/a/h2;->b(Lcom/tappx/a/h2;)Lcom/tappx/sdk/android/TappxInterstitial;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tappx/sdk/android/TappxInterstitialListener;->onInterstitialDismissed(Lcom/tappx/sdk/android/TappxInterstitial;)V

    :cond_17
    return-void
.end method
