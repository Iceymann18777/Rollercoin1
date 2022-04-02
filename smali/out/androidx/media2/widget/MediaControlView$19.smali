.class Landroidx/media2/widget/MediaControlView$19;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 1103
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8

    .line 1135
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz p1, :cond_37

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez p1, :cond_d

    goto :goto_37

    :cond_d
    if-nez p3, :cond_10

    return-void

    .line 1145
    :cond_10
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, p1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_37

    .line 1146
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v0, p1, Landroidx/media2/widget/MediaControlView;->mDuration:J

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    .line 1149
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 1150
    iget-object p2, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .line 1106
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz p1, :cond_50

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez p1, :cond_d

    goto :goto_50

    .line 1110
    :cond_d
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    .line 1117
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1118
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1119
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1123
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    if-eqz p1, :cond_33

    .line 1124
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    .line 1127
    :cond_33
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1128
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    .line 1129
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->pause()V

    :cond_50
    :goto_50
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7

    .line 1156
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz p1, :cond_41

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    if-nez p1, :cond_d

    goto :goto_41

    .line 1159
    :cond_d
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->mDragging:Z

    .line 1161
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->getLatestSeekPosition()J

    move-result-wide v1

    .line 1163
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->isCurrentMediaItemFromNetwork()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1164
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const-wide/16 v3, -0x1

    iput-wide v3, p1, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 1165
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-wide v3, p1, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    .line 1167
    :cond_2a
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroidx/media2/widget/MediaControlView;->seekTo(JZ)V

    .line 1169
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    if-eqz p1, :cond_41

    .line 1170
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->mWasPlaying:Z

    .line 1171
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media2/widget/PlayerWrapper;->play()V

    :cond_41
    :goto_41
    return-void
.end method
