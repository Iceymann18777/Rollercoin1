.class Landroidx/media2/widget/MediaControlView$18;
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

    .line 1082
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1085
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$18;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$18;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->shouldNotHideBars()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1a

    .line 1088
    :cond_13
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$18;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1a
    :goto_1a
    return-void
.end method
