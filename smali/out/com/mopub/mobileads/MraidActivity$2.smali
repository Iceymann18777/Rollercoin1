.class Lcom/mopub/mobileads/MraidActivity$2;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 3

    .line 217
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    return-void
.end method

.method public onExpand()V
    .registers 1

    return-void
.end method

.method public onFailedToLoad()V
    .registers 5

    .line 202
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MraidActivity failed to load. Finishing the activity"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 207
    :cond_24
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .registers 3

    .line 197
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {p1}, Lcom/mopub/mobileads/MraidActivity;->access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen()V
    .registers 5

    .line 234
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.click"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 212
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

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

    .line 213
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity$2;->this$0:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    return-void
.end method

.method public onResize(Z)V
    .registers 2

    return-void
.end method
