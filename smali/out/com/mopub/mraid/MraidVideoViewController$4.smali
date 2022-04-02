.class Lcom/mopub/mraid/MraidVideoViewController$4;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidVideoViewController;->createInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidVideoViewController;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController$4;->this$0:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 119
    iget-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController$4;->this$0:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-static {p1}, Lcom/mopub/mraid/MraidVideoViewController;->access$300(Lcom/mopub/mraid/MraidVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    return-void
.end method
