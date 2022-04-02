.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
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
            "backgroundLooper"
        }
    .end annotation

    .line 512
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 513
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getRetryDelayMillis(I)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCount"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 562
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private maybeRetryRequest(Landroid/os/Message;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalMsg"
        }
    .end annotation

    .line 547
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    return v1

    .line 551
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    .line 552
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->access$200(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)I

    move-result v3

    if-le v0, v3, :cond_18

    return v1

    .line 555
    :cond_18
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    .line 556
    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 557
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
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

    .line 524
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 532
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto :goto_37

    .line 535
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 529
    :cond_1f
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->callback:Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v1

    .line 538
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    .line 543
    :cond_37
    :goto_37
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->postResponseHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method post(ILjava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "request",
            "allowRetry"
        }
    .end annotation

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, p3, v0, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
