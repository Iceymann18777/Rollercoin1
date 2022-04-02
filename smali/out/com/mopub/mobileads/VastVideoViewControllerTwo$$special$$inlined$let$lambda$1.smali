.class final Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "VastVideoViewControllerTwo.kt"

# interfaces
.implements Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $iconConfig$inlined:Lcom/mopub/mobileads/VastIconConfigTwo;

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastIconConfigTwo;Lcom/mopub/mobileads/VastVideoViewControllerTwo;)V
    .registers 3

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->$iconConfig$inlined:Lcom/mopub/mobileads/VastIconConfigTwo;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVastWebViewClick()V
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->$iconConfig$inlined:Lcom/mopub/mobileads/VastIconConfigTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfigTwo;->getClickTrackingUris()Ljava/util/List;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 240
    invoke-static {v0, v4, v1, v2, v3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfigTwo;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$$special$$inlined$let$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/mopub/mobileads/VastIconConfigTwo;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method
