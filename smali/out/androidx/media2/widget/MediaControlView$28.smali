.class Landroidx/media2/widget/MediaControlView$28;
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

    .line 1290
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$28;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1293
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$28;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez p1, :cond_7

    return-void

    .line 1294
    :cond_7
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$28;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->resetHideCallbacks()V

    .line 1296
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$28;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->mOverflowIsShowing:Z

    .line 1297
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$28;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->mOverflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
