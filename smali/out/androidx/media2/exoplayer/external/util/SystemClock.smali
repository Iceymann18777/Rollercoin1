.class final Landroidx/media2/exoplayer/external/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/Clock;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media2/exoplayer/external/util/HandlerWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "callback"
        }
    .end annotation

    .line 51
    new-instance v0, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/SystemHandlerWrapper;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public elapsedRealtime()J
    .registers 3

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeMillis()J
    .registers 3

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
