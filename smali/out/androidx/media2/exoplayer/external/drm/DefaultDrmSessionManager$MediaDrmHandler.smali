.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 529
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_7

    return-void

    .line 539
    :cond_7
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 540
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 541
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    :cond_28
    return-void
.end method
