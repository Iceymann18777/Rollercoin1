.class Landroidx/media2/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3

    .line 621
    iput-object p1, p0, Landroidx/media2/widget/VideoView$3;->this$0:Landroidx/media2/widget/VideoView;

    iput-object p2, p0, Landroidx/media2/widget/VideoView$3;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "VideoView"

    .line 625
    :try_start_2
    iget-object v1, p0, Landroidx/media2/widget/VideoView$3;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/BaseResult;

    invoke-interface {v1}, Landroidx/media2/common/BaseResult;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling setSurface(null) was not successful. ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_24} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v1

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    const-string v2, "calling setSurface(null) was not successful."

    .line 631
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method
