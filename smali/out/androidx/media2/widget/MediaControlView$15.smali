.class Landroidx/media2/widget/MediaControlView$15;
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

    .line 1041
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1044
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    goto :goto_22

    .line 1052
    :cond_e
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->mNeedToShowBars:Z

    goto :goto_22

    .line 1046
    :cond_13
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_22

    .line 1049
    :cond_1b
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1055
    :goto_22
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1056
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$15;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, v2, Landroidx/media2/widget/MediaControlView;->mDelayedAnimationIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/widget/MediaControlView;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    :cond_37
    return-void
.end method
