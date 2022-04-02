.class Landroidx/media2/widget/MediaControlView$21;
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

    .line 1185
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 1188
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez p1, :cond_7

    return-void

    .line 1189
    :cond_7
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1190
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1193
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v4, p1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 1194
    :goto_28
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    if-eqz p1, :cond_2f

    iget-wide v4, v4, Landroidx/media2/widget/MediaControlView;->mDuration:J

    goto :goto_33

    :cond_2f
    invoke-virtual {v4}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v4

    :goto_33
    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    .line 1195
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1196
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v4, v1, v2, v0}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    if-eqz p1, :cond_46

    .line 1198
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$21;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    :cond_46
    return-void
.end method
