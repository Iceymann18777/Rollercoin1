.class final Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "VastVideoViewControllerTwo.kt"

# interfaces
.implements Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewControllerTwo;->createWebView(Lcom/mopub/mobileads/VastCompanionAdConfigTwo;)Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Lcom/mopub/mobileads/VastCompanionAdConfigTwo;)V
    .registers 3

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->$this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVastWebViewClick()V
    .registers 6

    .line 436
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->broadcastAction(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->setClosing(Z)V

    .line 439
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->$this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    .line 441
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 438
    invoke-static {v0, v4, v2, v4, v3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 445
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->$this_createWebView$inlined:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    .line 446
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$1;->this$0:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfigTwo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDspCreativeId()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
