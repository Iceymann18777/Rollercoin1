.class Landroidx/media2/widget/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroidx/media2/widget/VideoViewInterface$SurfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .registers 2

    .line 168
    iput-object p1, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/View;II)V
    .registers 6

    .line 190
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged(). width/height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoView"

    .line 191
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/View;II)V
    .registers 6

    .line 171
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated(), width/height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoView"

    .line 172
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2e
    iget-object p2, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    if-ne p1, p2, :cond_47

    iget-object p1, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 177
    iget-object p1, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object p2, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {p1, p2}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    :cond_47
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/View;)V
    .registers 4

    .line 183
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed(). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public onSurfaceTakeOverDone(Landroidx/media2/widget/VideoViewInterface;)V
    .registers 5

    .line 198
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    const-string v1, "VideoView"

    if-eq p1, v0, :cond_1d

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTakeOverDone(). view is not targetView. ignore.: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_1d
    sget-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTakeOverDone(). Now current view is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_35
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    if-eq p1, v0, :cond_5d

    .line 206
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iput-object p1, v0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    .line 208
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;

    if-eqz v0, :cond_5d

    .line 209
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;

    iget-object v1, p0, Landroidx/media2/widget/VideoView$1;->this$0:Landroidx/media2/widget/VideoView;

    invoke-interface {p1}, Landroidx/media2/widget/VideoViewInterface;->getViewType()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;->onViewTypeChanged(Landroid/view/View;I)V

    :cond_5d
    return-void
.end method
