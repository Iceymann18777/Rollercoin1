.class final Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VSyncSampler"
.end annotation


# static fields
.field private static final INSTANCE:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private final choreographerOwnerThread:Landroid/os/HandlerThread;

.field private final handler:Landroid/os/Handler;

.field private observerCount:I

.field public volatile sampledVsyncTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->INSTANCE:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 297
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    .line 298
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private addObserverInternal()V
    .registers 3

    .line 351
    iget v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    if-ne v0, v1, :cond_d

    .line 353
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_d
    return-void
.end method

.method private createChoreographerInstanceInternal()V
    .registers 2

    .line 347
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static getInstance()Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;
    .registers 1

    .line 292
    sget-object v0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->INSTANCE:Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    return-object v0
.end method

.method private removeObserverInternal()V
    .registers 3

    .line 358
    iget v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    if-nez v0, :cond_14

    .line 360
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 361
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    :cond_14
    return-void
.end method


# virtual methods
.method public addObserver()V
    .registers 3

    .line 308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doFrame(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vsyncTimeNs"
        }
    .end annotation

    .line 321
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 322
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 327
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 337
    :cond_c
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserverInternal()V

    return v0

    .line 333
    :cond_10
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserverInternal()V

    return v0

    .line 329
    :cond_14
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->createChoreographerInstanceInternal()V

    return v0
.end method

.method public removeObserver()V
    .registers 3

    .line 316
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
