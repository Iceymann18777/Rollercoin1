.class public final Lcom/google/android/gms/internal/ads/zzabq;
.super Lcom/google/android/gms/internal/ads/zzabn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzbzn:Ljava/lang/Object;

.field private zzbzo:Landroid/widget/PopupWindow;

.field private zzbzp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzabm;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzabm;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzn:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzp:Z

    return-void
.end method

.method private final zznv()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzn:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2a
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabq;->zznv()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzabn;->cancel()V

    return-void
.end method

.method protected final zznu()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_6e

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_25

    return-void

    :cond_25
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabq;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzn:Ljava/lang/Object;

    monitor-enter v3

    :try_start_41
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzp:Z

    if-eqz v5, :cond_47

    monitor-exit v3

    return-void

    :cond_47
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v2, "Displaying the 1x1 popup off the screen."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_6b

    :try_start_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67
    .catchall {:try_start_5d .. :try_end_66} :catchall_6b

    goto :goto_69

    :catch_67
    :try_start_67
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzbzo:Landroid/widget/PopupWindow;

    :goto_69
    monitor-exit v3

    return-void

    :catchall_6b
    move-exception v0

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :goto_6e
    return-void
.end method

.method protected final zzz(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabq;->zznv()V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzabn;->zzz(I)V

    return-void
.end method
