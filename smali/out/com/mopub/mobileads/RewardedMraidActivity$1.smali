.class Lcom/mopub/mobileads/RewardedMraidActivity$1;
.super Ljava/lang/Object;
.source "RewardedMraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/RewardedMraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

.field final synthetic val$shouldRewardOnClick:Z


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/RewardedMraidActivity;Z)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iput-boolean p2, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->val$shouldRewardOnClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/RewardedMraidController;->loadJavascript(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    return-void
.end method

.method public onExpand()V
    .registers 1

    return-void
.end method

.method public onFailedToLoad()V
    .registers 5

    .line 132
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "RewardedMraidActivity failed to load. Finishing the activity"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .registers 3

    .line 127
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {p1}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/RewardedMraidController;->loadJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen()V
    .registers 5

    .line 161
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->val$shouldRewardOnClick:Z

    if-eqz v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->showPlayableCloseButton()V

    .line 164
    :cond_d
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.click"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 140
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing the activity due to a problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {p1}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    return-void
.end method

.method public onResize(Z)V
    .registers 2

    return-void
.end method
