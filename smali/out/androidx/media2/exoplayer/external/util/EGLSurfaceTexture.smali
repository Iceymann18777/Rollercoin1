.class public final Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;,
        Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I


# instance fields
.field private final callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;

.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 70
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_a
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "callback"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 122
    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 123
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v10, v0, [I

    .line 230
    sget-object v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    .line 231
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_20

    .line 240
    aget v2, v10, v1

    if-lez v2, :cond_20

    aget-object v2, v9, v1

    if-eqz v2, :cond_20

    .line 247
    aget-object p0, v9, v1

    return-object p0

    .line 241
    :cond_20
    new-instance v2, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 244
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    aget p0, v10, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const/4 p0, 0x2

    aget-object v0, v9, v1

    aput-object v0, v3, p0

    const-string p0, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 242
    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v2
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "display",
            "config",
            "secureMode"
        }
    .end annotation

    if-nez p2, :cond_9

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 254
    fill-array-data p2, :array_22

    goto :goto_f

    :cond_9
    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 256
    fill-array-data p2, :array_2c

    .line 265
    :goto_f
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 266
    invoke-static {p0, p1, v0, p2, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    if-eqz p0, :cond_19

    return-object p0

    .line 269
    :cond_19
    new-instance p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const/4 p1, 0x0

    const-string p2, "eglCreateContext failed"

    invoke-direct {p0, p2, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw p0

    :array_22
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_2c
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "display",
            "config",
            "context",
            "secureMode"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_7

    .line 278
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_1e

    :cond_7
    const/4 v1, 0x2

    if-ne p3, v1, :cond_11

    const/4 p3, 0x7

    new-array p3, p3, [I

    .line 282
    fill-array-data p3, :array_36

    goto :goto_17

    :cond_11
    const/4 p3, 0x5

    new-array p3, p3, [I

    .line 293
    fill-array-data p3, :array_48

    :goto_17
    const/4 v1, 0x0

    .line 302
    invoke-static {p0, p1, p3, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 309
    :goto_1e
    invoke-static {p0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_25

    return-object p1

    .line 311
    :cond_25
    new-instance p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglMakeCurrent failed"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw p0

    .line 304
    :cond_2d
    new-instance p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglCreatePbufferSurface failed"

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw p0

    nop

    :array_36
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_48
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .registers 2

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->callback:Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_7

    .line 208
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    :cond_7
    return-void
.end method

.method private static generateTextureIds([I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureIdHolder"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 318
    invoke-static {}, Landroidx/media2/exoplayer/external/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .registers 5

    const/4 v0, 0x0

    .line 213
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    .line 220
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    .line 222
    :cond_13
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 215
    :cond_1b
    new-instance v0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture$1;)V

    throw v0
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureMode"
        }
    .end annotation

    .line 132
    invoke-static {}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 133
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 134
    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 135
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v1, p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 136
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 137
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 138
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .registers 8

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 146
    :try_start_8
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_18

    .line 147
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v2, 0x1

    .line 148
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_6c

    .line 151
    :cond_18
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_2f

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 152
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 155
    :cond_2f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_42

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 156
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 158
    :cond_42
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_4b

    .line 159
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 162
    :cond_4b
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_52

    .line 163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 165
    :cond_52
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_63

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 170
    :cond_63
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 171
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 172
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 173
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_6c
    move-exception v2

    .line 151
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_84

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 152
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 155
    :cond_84
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_97

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 156
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 158
    :cond_97
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_a0

    .line 159
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 162
    :cond_a0
    sget v3, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v3, v0, :cond_a7

    .line 163
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 165
    :cond_a7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_b8

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 170
    :cond_b8
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 171
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 172
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 173
    iput-object v1, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    throw v2
.end method

.method public run()V
    .registers 2

    .line 196
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_a

    .line 199
    :try_start_7
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method
