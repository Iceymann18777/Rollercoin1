.class public Lcom/mopub/mobileads/MraidVideoPlayerActivity;
.super Lcom/mopub/mobileads/BaseVideoPlayerActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;


# static fields
.field private static final NATIVE_VIDEO_VIEW_CONTROLLER:Ljava/lang/String; = "com.mopub.nativeads.NativeVideoViewController"


# instance fields
.field private mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

.field private mBroadcastIdentifier:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;-><init>()V

    return-void
.end method

.method private createVideoViewController(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vast"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 128
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-wide v6, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    return-object v0

    :cond_26
    const-string v1, "vast_new"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 130
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-wide v6, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    return-object v0

    :cond_42
    const-string v1, "mraid"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 132
    new-instance v0, Lcom/mopub/mraid/MraidVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    return-object v0

    :cond_58
    const-string v1, "native"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    .line 134
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Bundle;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/os/Bundle;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 137
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object p1, v0, v5

    aput-object p0, v0, v6

    const-string p1, "com.mopub.nativeads.NativeVideoViewController"

    .line 139
    invoke-static {p1}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Missing native video module"

    if-eqz v2, :cond_a2

    .line 144
    :try_start_93
    const-class v2, Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-static {p1, v2, v1, v0}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/BaseVideoViewController;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_9c

    return-object p1

    .line 149
    :catch_9c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_a2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_a8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J
    .registers 4

    const-string v0, "broadcastIdentifier"

    const-wide/16 v1, -0x1

    .line 193
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getBaseVideoViewController()Lcom/mopub/mobileads/BaseVideoViewController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoViewController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onBackPressed()V

    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onBackPressed()V

    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 103
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_a

    .line 105
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 43
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getBroadcastIdentifierFromIntent(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    .line 48
    :try_start_d
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->createVideoViewController(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_13} :catch_2f

    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com_mopub_orientation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 60
    sget-object v0, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    .line 61
    instance-of v1, p1, Lcom/mopub/common/CreativeOrientation;

    if-eqz v1, :cond_26

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/mopub/common/CreativeOrientation;

    .line 64
    :cond_26
    invoke-static {p0, v0}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 66
    iget-object p1, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseVideoViewController;->onCreate()V

    return-void

    .line 53
    :catch_2f
    iget-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBroadcastIdentifier:J

    const-string p1, "com.mopub.action.interstitial.fail"

    invoke-static {p0, v0, v1, p1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onDestroy()V

    .line 90
    :cond_7
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onDestroy()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    .line 172
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_7

    .line 72
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onPause()V

    .line 74
    :cond_7
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 79
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_a

    .line 81
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->onResume()V

    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .registers 2

    .line 162
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 183
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    .line 186
    :try_start_7
    invoke-virtual {p0, p3, p2}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_30

    .line 188
    :catch_b
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method setBaseVideoViewController(Lcom/mopub/mobileads/BaseVideoViewController;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->mBaseVideoController:Lcom/mopub/mobileads/BaseVideoViewController;

    return-void
.end method
