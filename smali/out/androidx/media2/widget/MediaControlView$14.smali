.class Landroidx/media2/widget/MediaControlView$14;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .registers 2

    .line 919
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 922
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 923
    :goto_b
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v1, v1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    if-nez v1, :cond_34

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 924
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->setProgress()J

    move-result-wide v0

    .line 925
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$14;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v2, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    rem-long/2addr v0, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media2/widget/MediaControlView;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    :cond_34
    return-void
.end method
