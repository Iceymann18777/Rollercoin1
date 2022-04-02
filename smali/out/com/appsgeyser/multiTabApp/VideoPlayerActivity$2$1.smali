.class Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2$1;->this$1:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 75
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2$1;->this$1:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity$2;->this$0:Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;->access$100(Lcom/appsgeyser/multiTabApp/VideoPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
