.class Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# instance fields
.field private eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Landroidx/media2/exoplayer/external/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    .line 172
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initInternal(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureMode"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->init(I)V

    .line 243
    new-instance v0, Landroidx/media2/exoplayer/external/video/DummySurface;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 245
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/media2/exoplayer/external/video/DummySurface;-><init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$1;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->surface:Landroidx/media2/exoplayer/external/video/DummySurface;

    return-void
.end method

.method private releaseInternal()V
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->release()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    .line 228
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 232
    :goto_c
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    :try_start_11
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 230
    invoke-static {v0, v2, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    .line 232
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->quit()Z

    throw p1

    .line 213
    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initInternal(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_42
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    .line 221
    monitor-enter p0

    .line 222
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    goto :goto_51

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_55

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 218
    invoke-static {v0, v2, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    .line 221
    monitor-enter p0

    .line 222
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    goto :goto_51

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw p1

    :catch_42
    move-exception p1

    :try_start_43
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 215
    invoke-static {v0, v2, p1}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2d

    .line 221
    monitor-enter p0

    .line 222
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0

    :goto_51
    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1

    .line 221
    :goto_55
    monitor-enter p0

    .line 222
    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 223
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    throw p1

    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    goto :goto_5f

    :goto_5e
    throw p1

    :goto_5f
    goto :goto_5e
.end method

.method public init(I)Landroidx/media2/exoplayer/external/video/DummySurface;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureMode"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->start()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    .line 178
    new-instance v1, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;

    .line 180
    monitor-enter p0

    .line 181
    :try_start_16
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 182
    :goto_21
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->surface:Landroidx/media2/exoplayer/external/video/DummySurface;

    if-nez p1, :cond_33

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_33

    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_50

    if-nez p1, :cond_33

    .line 184
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_50

    goto :goto_21

    :catch_31
    const/4 v2, 0x1

    goto :goto_21

    .line 189
    :cond_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_50

    if-eqz v2, :cond_3d

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 194
    :cond_3d
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_4f

    .line 196
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_4e

    .line 199
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->surface:Landroidx/media2/exoplayer/external/video/DummySurface;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/video/DummySurface;

    return-object p1

    .line 197
    :cond_4e
    throw p1

    .line 195
    :cond_4f
    throw p1

    :catchall_50
    move-exception p1

    .line 189
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method public release()V
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
