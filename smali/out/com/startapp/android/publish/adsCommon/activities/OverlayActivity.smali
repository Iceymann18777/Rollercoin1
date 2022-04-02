.class public Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;
.super Landroid/app/Activity;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/ads/a/b;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Landroid/os/Bundle;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->f:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->g:I

    return-void
.end method

.method private a()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->getByIndex(I)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/ads/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    if-nez v0, :cond_1e

    .line 73
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->finish()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    if-eqz v0, :cond_7

    .line 175
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->q()V

    .line 177
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->r()Z

    move-result v0

    if-nez v0, :cond_b

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-eqz v0, :cond_19

    .line 82
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a()V

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->u()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    .line 88
    :cond_19
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->overridePendingTransition(II)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoAd"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fullscreen"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz v1, :cond_2c

    .line 41
    :cond_23
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_2c
    const/4 v3, 0x2

    const-string v4, "AppWallActivity"

    const-string v5, "AppWallActivity::onCreate"

    .line 45
    invoke-static {v4, v3, v5}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "activityShouldLockOrientation"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->d:Z

    if-nez p1, :cond_52

    if-nez v1, :cond_52

    .line 49
    invoke-static {p0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    :cond_52
    if-eqz p1, :cond_63

    const/4 v1, -0x1

    const-string v3, "activityLockedOrientation"

    .line 53
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->g:I

    .line 54
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->d:Z

    .line 57
    :cond_63
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const-string v4, "orientation"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->c:I

    .line 58
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->c:I

    if-eq v1, v3, :cond_88

    const/4 v0, 0x1

    :cond_88
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_95

    .line 61
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a()V

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/os/Bundle;)V

    goto :goto_97

    .line 64
    :cond_95
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->e:Landroid/os/Bundle;

    :goto_97
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onDestroy"

    .line 154
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_18

    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->v()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;Z)V

    .line 162
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/ads/a/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 94
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 4

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "OverlayActivity::onPause"

    .line 101
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_17

    .line 105
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->s()V

    .line 107
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;)V

    :cond_17
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onResume"

    .line 126
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->f:Z

    if-eqz v0, :cond_14

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->c()V

    .line 131
    :cond_14
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 132
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->c:I

    iget-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->d:Z

    invoke-static {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;IZ)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->g:I

    goto :goto_27

    .line 134
    :cond_24
    invoke-static {p0, v0}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V

    .line 137
    :goto_27
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_30

    .line 138
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->u()V

    :cond_30
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onSaveInstanceState"

    .line 114
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_22

    .line 118
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/a/b;->b(Landroid/os/Bundle;)V

    .line 119
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->g:I

    const-string v1, "activityLockedOrientation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->d:Z

    const-string v1, "activityShouldLockOrientation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_22
    return-void
.end method

.method protected onStop()V
    .registers 4

    const-string v0, "AppWallActivity"

    const/4 v1, 0x2

    const-string v2, "AppWallActivity::onStop"

    .line 144
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 147
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->b:Z

    if-nez v0, :cond_14

    .line 148
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;->a:Lcom/startapp/android/publish/ads/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/b;->t()V

    :cond_14
    return-void
.end method
