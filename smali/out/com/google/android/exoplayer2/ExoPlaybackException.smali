.class public final Lcom/google/android/exoplayer2/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field public final rendererFormat:Lcom/google/android/exoplayer2/Format;

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final timestampMs:J

.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;)V
    .registers 9

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;ILcom/google/android/exoplayer2/Format;I)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;ILcom/google/android/exoplayer2/Format;I)V
    .registers 6

    .line 175
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 176
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 177
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->cause:Ljava/lang/Throwable;

    .line 178
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 179
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    .line 180
    iput p5, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->timestampMs:J

    return-void
.end method

.method public static createForOutOfMemoryError(Ljava/lang/OutOfMemoryError;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 3

    .line 157
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static createForRenderer(Ljava/lang/Exception;ILcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 11

    .line 122
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez p2, :cond_7

    const/4 p3, 0x4

    const/4 v5, 0x4

    goto :goto_8

    :cond_7
    move v5, p3

    :goto_8
    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;ILcom/google/android/exoplayer2/Format;I)V

    return-object v6
.end method

.method public static createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 3

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 3

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method
