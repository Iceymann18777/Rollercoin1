.class public final Lcom/google/android/exoplayer2/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;


# instance fields
.field public final pitch:F

.field private final scaledUsPerMs:I

.field public final skipSilence:Z

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .registers 8

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    .line 71
    :goto_d
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmpl-float v2, p2, v2

    if-lez v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 72
    :goto_16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 74
    iput p2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 75
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->skipSilence:Z

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 98
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 99
    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2b

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->skipSilence:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->skipSilence:Z

    if-ne v2, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getMediaTimeUsForPlayoutTimeMs(J)J
    .registers 5

    .line 87
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public hashCode()I
    .registers 3

    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 109
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackParameters;->skipSilence:Z

    add-int/2addr v1, v0

    return v1
.end method
