.class Landroidx/media2/widget/MediaControlView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/MediaControlView;->initControllerView()V
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

    .line 880
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 888
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 890
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    sget v1, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 891
    invoke-virtual {v1}, Landroidx/media2/widget/PlayerWrapper;->canSeekForward()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/16 v0, 0x8

    .line 890
    :goto_23
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 883
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$11;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
