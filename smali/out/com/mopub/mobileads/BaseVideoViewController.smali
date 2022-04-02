.class public abstract Lcom/mopub/mobileads/BaseVideoViewController;
.super Ljava/lang/Object;
.source "BaseVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    }
.end annotation


# instance fields
.field private final mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

.field private mBroadcastIdentifier:Ljava/lang/Long;

.field private final mContext:Landroid/content/Context;

.field private final mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBroadcastIdentifier:Ljava/lang/Long;

    .line 47
    iput-object p3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 48
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method broadcastAction(Ljava/lang/String;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBroadcastIdentifier:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 104
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_1b

    .line 106
    :cond_e
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tried to broadcast a video event without a broadcast identifier to send to."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method

.method protected getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected abstract getVideoView()Landroid/view/View;
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method protected abstract onBackPressed()V
.end method

.method protected abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected onCreate()V
    .registers 5

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getVideoView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetContentView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract onDestroy()V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method protected videoCompleted(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 98
    iget-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    :cond_7
    return-void
.end method

.method protected videoError(Z)V
    .registers 6

    .line 89
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Video cannot be played."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, "com.mopub.action.interstitial.fail"

    .line 90
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseVideoViewController;->broadcastAction(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 92
    iget-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->mBaseVideoViewControllerListener:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    :cond_19
    return-void
.end method
