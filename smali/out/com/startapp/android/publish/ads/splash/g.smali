.class public Lcom/startapp/android/publish/ads/splash/g;
.super Lcom/startapp/android/publish/ads/a/b;
.source "StartAppSDK"


# instance fields
.field private d:Lcom/startapp/android/publish/ads/splash/SplashConfig;

.field private e:Lcom/startapp/android/publish/ads/splash/h;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/b;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/g;->d:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/g;->f:Z

    .line 20
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/g;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string p1, "SplashMode"

    const/4 v0, 0x3

    const-string v1, "onCreate"

    .line 24
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->a()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SplashConfig"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/g;->d:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string p2, "SplashMode"

    const/4 v0, 0x3

    const-string v1, "onKeyDown"

    .line 33
    invoke-static {p2, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-boolean p2, p0, Lcom/startapp/android/publish/ads/splash/g;->f:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3b

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2b

    .line 36
    iget-boolean p2, p0, Lcom/startapp/android/publish/ads/splash/g;->g:Z

    if-nez p2, :cond_3b

    .line 37
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/splash/g;->g:Z

    .line 38
    iget-object p1, p0, Lcom/startapp/android/publish/ads/splash/g;->e:Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/splash/h;->g()V

    .line 40
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->b()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "Test Mode"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_2b
    const/16 p2, 0x18

    if-ne p1, p2, :cond_3b

    .line 45
    iget-boolean p2, p0, Lcom/startapp/android/publish/ads/splash/g;->g:Z

    if-eqz p2, :cond_3b

    .line 46
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v1

    :cond_3b
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3f

    return v1

    :cond_3f
    return v0
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public s()V
    .registers 4

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onPause"

    .line 61
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/g;->e:Lcom/startapp/android/publish/ads/splash/h;

    if-eqz v0, :cond_f

    .line 63
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->a()V

    :cond_f
    return-void
.end method

.method public t()V
    .registers 4

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onStop"

    .line 69
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/g;->e:Lcom/startapp/android/publish/ads/splash/h;

    if-eqz v0, :cond_f

    .line 71
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->b()V

    :cond_f
    return-void
.end method

.method public u()V
    .registers 5

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onResume"

    .line 78
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/g;->d:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    if-eqz v0, :cond_3e

    .line 82
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AdPreference"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 84
    check-cast v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    goto :goto_20

    .line 86
    :cond_1b
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 89
    :goto_20
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->a()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "testMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/splash/g;->f:Z

    .line 90
    new-instance v1, Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/g;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/splash/g;->d:Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/startapp/android/publish/ads/splash/h;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/splash/g;->e:Lcom/startapp/android/publish/ads/splash/h;

    const/4 v0, 0x0

    .line 91
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/splash/h;->a(Landroid/os/Bundle;)V

    :cond_3e
    return-void
.end method

.method public v()V
    .registers 4

    const-string v0, "SplashMode"

    const/4 v1, 0x3

    const-string v2, "onDestroy"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
