.class public final Landroidx/media2/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

.field mControlType:I

.field mCurrentVolume:I

.field mMaxVolume:I

.field mPlaybackType:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2036
    instance-of v0, p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2039
    :cond_6
    check-cast p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 2040
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    if-ne v0, v2, :cond_2b

    iget-object v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    iget-object p1, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 2044
    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 2030
    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mPlaybackType:I

    .line 2031
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mControlType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mMaxVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2030
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
