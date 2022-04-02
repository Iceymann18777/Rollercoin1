.class public final Landroidx/media2/exoplayer/external/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field public final rendererIndex:I

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "cause",
            "rendererIndex"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 137
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    .line 138
    iput-object p2, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    .line 139
    iput p3, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->rendererIndex:I

    return-void
.end method

.method public static createForOutOfMemoryError(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 132
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForRenderer(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cause",
            "rendererIndex"
        }
    .end annotation

    .line 102
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForSource(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 112
    new-instance v0, Landroidx/media2/exoplayer/external/ExoPlaybackException;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public getSourceException()Ljava/io/IOException;
    .registers 2

    .line 155
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 156
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
