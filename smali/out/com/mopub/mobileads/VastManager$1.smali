.class Lcom/mopub/mobileads/VastManager$1;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastManager;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastManager;

.field final synthetic val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    iput-object p2, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 5

    if-eqz p1, :cond_18

    .line 128
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastManager;->access$000(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 129
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    invoke-static {p1}, Lcom/mopub/mobileads/VastManager;->access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastManager$1;->val$vastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_2f

    .line 131
    :cond_18
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Failed to download VAST video."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/mopub/mobileads/VastManager$1;->this$0:Lcom/mopub/mobileads/VastManager;

    invoke-static {p1}, Lcom/mopub/mobileads/VastManager;->access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    :goto_2f
    return-void
.end method
