.class public Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private zzuj:Lcom/google/android/gms/internal/ads/zzaap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final zzax()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->zzax()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaap;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaap;->zznj()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_17
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzjr;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    const-string v1, "#007 Could not call remote method."

    if-nez v0, :cond_19

    const/4 p1, 0x0

    :goto_12
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->onCreate(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    goto :goto_12
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaap;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzuj:Lcom/google/android/gms/internal/ads/zzaap;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaap;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzax()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzax()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzax()V

    return-void
.end method
