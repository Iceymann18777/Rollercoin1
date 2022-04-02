.class public final Landroidx/media2/player/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/PlaybackParams$Builder;
    }
.end annotation


# instance fields
.field private mAudioFallbackMode:Ljava/lang/Integer;

.field private mPitch:Ljava/lang/Float;

.field private mPlaybackParams:Landroid/media/PlaybackParams;

.field private mSpeed:Ljava/lang/Float;


# direct methods
.method constructor <init>(Landroid/media/PlaybackParams;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/media2/player/PlaybackParams;->mPlaybackParams:Landroid/media/PlaybackParams;

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroidx/media2/player/PlaybackParams;->mAudioFallbackMode:Ljava/lang/Integer;

    .line 100
    iput-object p2, p0, Landroidx/media2/player/PlaybackParams;->mPitch:Ljava/lang/Float;

    .line 101
    iput-object p3, p0, Landroidx/media2/player/PlaybackParams;->mSpeed:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public getAudioFallbackMode()Ljava/lang/Integer;
    .registers 3

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 115
    :try_start_6
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getAudioFallbackMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_13
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mAudioFallbackMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPitch()Ljava/lang/Float;
    .registers 3

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 130
    :try_start_6
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_13
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mPitch:Ljava/lang/Float;

    return-object v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 3

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 167
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mPlaybackParams:Landroid/media/PlaybackParams;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .registers 3

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 145
    :try_start_6
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_13
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams;->mSpeed:Ljava/lang/Float;

    return-object v0
.end method
