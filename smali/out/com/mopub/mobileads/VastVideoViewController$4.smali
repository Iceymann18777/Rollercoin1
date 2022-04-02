.class Lcom/mopub/mobileads/VastVideoViewController$4;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .line 424
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 425
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p3

    .line 424
    invoke-virtual {p1, p2, p3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 426
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1400(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 427
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 428
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/VastVideoViewController;->videoError(Z)V

    .line 429
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/mopub/mobileads/VastVideoViewController;->access$1502(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 431
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 432
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 431
    invoke-virtual {p1, p3, v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    return p2
.end method
