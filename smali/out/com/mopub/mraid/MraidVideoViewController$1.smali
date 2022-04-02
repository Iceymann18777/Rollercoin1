.class Lcom/mopub/mraid/MraidVideoViewController$1;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
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

    .line 46
    iput-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController$1;->this$0:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    return-void
.end method
