.class Lcom/tappx/a/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/v0;


# instance fields
.field private final a:Lcom/google/android/gms/ads/InterstitialAd;

.field private b:Z

.field private c:Lcom/tappx/a/d1$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/x0;->b:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/d1$b;Lcom/tappx/a/d1;Ljava/lang/Runnable;)V
    .registers 6

    .line 6
    iput-object p1, p0, Lcom/tappx/a/x0;->c:Lcom/tappx/a/d1$b;

    if-nez p1, :cond_b

    .line 9
    :try_start_4
    iget-object p1, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/tappx/a/x0$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tappx/a/x0$a;-><init>(Lcom/tappx/a/x0;Lcom/tappx/a/d1$b;Ljava/lang/Runnable;Lcom/tappx/a/d1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    goto :goto_19

    :catchall_16
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/tappx/a/x0;->b:Z

    :goto_19
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "XqPsOXkCkiOwfSDmQAngCTOElG/CkYie3dvHgxY0q1o"

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1
    invoke-static {v0, v2}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_13

    .line 5
    :catchall_11
    iput-boolean v1, p0, Lcom/tappx/a/x0;->b:Z

    :goto_13
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    :cond_a
    return-void
.end method

.method public loadAd()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/x0;->b:Z

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/tappx/a/x0;->c:Lcom/tappx/a/d1$b;

    if-eqz v0, :cond_1c

    .line 3
    sget-object v1, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    invoke-interface {v0, v1}, Lcom/tappx/a/d1$b;->a(Lcom/tappx/a/a2;)V

    goto :goto_1c

    .line 7
    :cond_e
    :try_start_e
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method public show()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/tappx/a/x0;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1a

    goto :goto_1a

    :cond_12
    const-string v0, "E7DpZ5iKZ4wFqPfA8T/0xoaEEF1mb1e+vYW2ILlIGMBhCfsQnXB9y+crvSN476OS+43wU0ucLzr4quLmL9S5+Q"

    const/4 v1, 0x0

    :try_start_15
    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :goto_1a
    return-void
.end method
