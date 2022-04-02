.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V
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

    .line 486
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 493
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 494
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 495
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 496
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    if-eq p1, v2, :cond_10

    goto :goto_1b

    .line 501
    :cond_10
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$100(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    .line 498
    :cond_16
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$000(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method
