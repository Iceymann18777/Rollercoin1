.class public final Landroidx/media2/exoplayer/external/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# direct methods
.method public static checkGlError()V
    .registers 4

    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_28

    const-string v2, "glError "

    .line 53
    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21
    const-string v2, "GlUtil"

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_28
    return-void
.end method
