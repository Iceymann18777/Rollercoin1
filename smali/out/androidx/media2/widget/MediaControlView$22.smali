.class Landroidx/media2/widget/MediaControlView$22;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1203
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1206
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez p1, :cond_7

    return-void

    .line 1207
    :cond_7
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1208
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1210
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v0

    .line 1211
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    .line 1216
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, p1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3f

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1217
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, v4}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    :cond_3f
    return-void
.end method
