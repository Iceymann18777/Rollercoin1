.class public final Landroidx/media2/player/PlaybackParams$Builder;
.super Ljava/lang/Object;
.source "PlaybackParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/PlaybackParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioFallbackMode:Ljava/lang/Integer;

.field private mPitch:Ljava/lang/Float;

.field private mPlaybackParams:Landroid/media/PlaybackParams;

.field private mSpeed:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    .line 188
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    :cond_10
    return-void
.end method

.method public constructor <init>(Landroidx/media2/player/PlaybackParams;)V
    .registers 4

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_25

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    .line 209
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    goto :goto_24

    .line 211
    :cond_12
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getAudioFallbackMode()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    .line 212
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getPitch()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    .line 213
    invoke-virtual {p1}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    :goto_24
    return-void

    .line 206
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "playbakcParams shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroidx/media2/player/PlaybackParams;
    .registers 5

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 282
    new-instance v0, Landroidx/media2/player/PlaybackParams;

    iget-object v1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-direct {v0, v1}, Landroidx/media2/player/PlaybackParams;-><init>(Landroid/media/PlaybackParams;)V

    return-object v0

    .line 284
    :cond_e
    new-instance v0, Landroidx/media2/player/PlaybackParams;

    iget-object v1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    iget-object v3, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/player/PlaybackParams;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public setAudioFallbackMode(I)Landroidx/media2/player/PlaybackParams$Builder;
    .registers 4

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    .line 224
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_12

    .line 226
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    :goto_12
    return-object p0
.end method

.method public setPitch(F)Landroidx/media2/player/PlaybackParams$Builder;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_24

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1c

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    .line 246
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_1b

    .line 248
    :cond_15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPitch:Ljava/lang/Float;

    :goto_1b
    return-object p0

    .line 243
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pitch must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "0 pitch is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpeed(F)Landroidx/media2/player/PlaybackParams$Builder;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_24

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1c

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    .line 268
    iget-object v0, p0, Landroidx/media2/player/PlaybackParams$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    goto :goto_1b

    .line 270
    :cond_15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/PlaybackParams$Builder;->mSpeed:Ljava/lang/Float;

    :goto_1b
    return-object p0

    .line 265
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "negative speed is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "0 speed is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
