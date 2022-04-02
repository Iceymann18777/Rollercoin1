.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private discontinuityReason:I

.field private lastPlaybackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private operationAcks:I

.field private positionDiscontinuity:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V
    .registers 2

    .line 2011
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .registers 1

    .line 2011
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .registers 1

    .line 2011
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .registers 1

    .line 2011
    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return p0
.end method


# virtual methods
.method public hasPendingUpdate(Lcom/google/android/exoplayer2/PlaybackInfo;)Z
    .registers 3

    .line 2019
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-ne p1, v0, :cond_f

    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    if-gtz p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public incrementPendingOperationAcks(I)V
    .registers 3

    .line 2029
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return-void
.end method

.method public reset(Lcom/google/android/exoplayer2/PlaybackInfo;)V
    .registers 2

    .line 2023
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 p1, 0x0

    .line 2024
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 2025
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    return-void
.end method

.method public setPositionDiscontinuity(I)V
    .registers 5

    .line 2033
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2037
    :goto_e
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    return-void

    .line 2040
    :cond_12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 2041
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return-void
.end method
