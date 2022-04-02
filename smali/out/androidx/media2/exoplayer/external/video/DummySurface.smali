.class public final Landroidx/media2/exoplayer/external/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thread",
            "surfaceTexture",
            "secure"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    .line 106
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media2/exoplayer/external/video/DummySurface$1;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/DummySurface;-><init>(Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .registers 2

    .line 125
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    return-void

    .line 126
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSecureModeV24(Landroid/content/Context;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 132
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1c

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return v2

    .line 139
    :cond_1c
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    .line 144
    :cond_2d
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 145
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    const-string v0, "EGL_EXT_protected_content"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    return v2

    :cond_43
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x2

    :goto_4e
    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Landroidx/media2/exoplayer/external/video/DummySurface;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-boolean v1, Landroidx/media2/exoplayer/external/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    .line 78
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->getSecureModeV24(Landroid/content/Context;)I

    move-result p0

    :goto_15
    sput p0, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I

    .line 79
    sput-boolean v2, Landroidx/media2/exoplayer/external/video/DummySurface;->secureModeInitialized:Z

    .line 81
    :cond_19
    sget p0, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    monitor-exit v0

    return v2

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Landroidx/media2/exoplayer/external/video/DummySurface;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "secure"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroidx/media2/exoplayer/external/video/DummySurface;->assertApiLevel17OrHigher()V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 98
    invoke-static {p0}, Landroidx/media2/exoplayer/external/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 99
    new-instance p0, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;-><init>()V

    if-eqz p1, :cond_1c

    .line 100
    sget v0, Landroidx/media2/exoplayer/external/video/DummySurface;->secureMode:I

    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->init(I)Landroidx/media2/exoplayer/external/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 111
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 117
    :try_start_6
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_12

    .line 118
    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->thread:Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/video/DummySurface$DummySurfaceThread;->release()V

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/video/DummySurface;->threadReleased:Z

    .line 121
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
