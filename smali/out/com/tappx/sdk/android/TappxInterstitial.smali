.class public final Lcom/tappx/sdk/android/TappxInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/sdk/android/ITappxInterstitial;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/tappx/a/h2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/sdk/android/TappxInterstitial;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/tappx/a/h2;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/h2;-><init>(Lcom/tappx/sdk/android/TappxInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    .line 4
    invoke-virtual {v0, p2}, Lcom/tappx/a/f2;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0}, Lcom/tappx/a/h2;->a()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->a:Landroid/content/Context;

    return-object v0
.end method

.method public isReady()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0}, Lcom/tappx/a/h2;->e()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxInterstitial;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method public loadAd(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/h2;->a(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method public setAutoShowWhenReady(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/h2;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/tappx/sdk/android/TappxInterstitialListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/h2;->a(Lcom/tappx/sdk/android/TappxInterstitialListener;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxInterstitial;->b:Lcom/tappx/a/h2;

    invoke-virtual {v0}, Lcom/tappx/a/h2;->f()V

    return-void
.end method
