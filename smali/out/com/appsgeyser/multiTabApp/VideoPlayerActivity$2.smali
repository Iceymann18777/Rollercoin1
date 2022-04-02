.class Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->access$100(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 71
    new-instance v0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2$1;-><init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method
