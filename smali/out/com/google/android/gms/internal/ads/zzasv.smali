.class public Lcom/google/android/gms/internal/ads/zzasv;
.super Lcom/google/android/gms/internal/ads/zzass;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzdfh:Z

.field private zzdfi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzash;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzass;-><init>(Lcom/google/android/gms/internal/ads/zzash;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqe()V

    return-void
.end method

.method private final declared-synchronized zzqf()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzdfi:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzdfi:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqf()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzdfh:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzdfh:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzasv;->zzam(Z)V

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_30

    :try_start_18
    const-string v0, "about:blank"

    invoke-super {p0, v0}, Lcom/google/android/gms/internal/ads/zzass;->loadUrl(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18 .. :try_end_1d} :catch_1f
    .catchall {:try_start_18 .. :try_end_1d} :catchall_30

    monitor-exit p0

    return-void

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzass;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_16

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzasv;->zzam(Z)V

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasv;->zzqf()V

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized isDestroyed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzdfh:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzass;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzass;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzass;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzass;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzass;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzass;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzass;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public stopLoading()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzass;->stopLoading()V

    return-void
.end method

.method protected zzam(Z)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzasu;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "Blank page loaded, 1..."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasv;->zzuk()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzass;->zzc(Lcom/google/android/gms/internal/ads/zzasu;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzuk()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasv;->zzqf()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Lcom/google/android/gms/internal/ads/zzasv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zzvw()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzass;->destroy()V

    return-void
.end method
