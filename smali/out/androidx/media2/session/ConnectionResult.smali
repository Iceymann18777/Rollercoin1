.class Landroidx/media2/session/ConnectionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "ConnectionResult.java"


# instance fields
.field mAllowedCommands:Landroidx/media2/session/SessionCommandGroup;

.field mBufferedPositionMs:J

.field mCurrentMediaItem:Landroidx/media2/common/MediaItem;

.field mCurrentMediaItemIndex:I

.field mNextMediaItemIndex:I

.field mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

.field mPlaybackInfo:Landroidx/media2/session/MediaController$PlaybackInfo;

.field mPlaybackSpeed:F

.field mPlayerState:I

.field mPlaylistSlice:Landroidx/media2/common/ParcelImplListSlice;

.field mPositionEventTimeMs:J

.field mPositionMs:J

.field mPreviousMediaItemIndex:I

.field mRepeatMode:I

.field mSelectedAudioTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedMetadataTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedSubtitleTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectedVideoTrack:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSessionActivity:Landroid/app/PendingIntent;

.field mSessionBinder:Landroid/os/IBinder;

.field mSessionStub:Landroidx/media2/session/IMediaSession;

.field mShuffleMode:I

.field mTokenExtras:Landroid/os/Bundle;

.field mTrackInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVersion:I

.field mVideoSize:Landroidx/media2/common/VideoSize;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostParceling()V
    .registers 3

    .line 242
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media2/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    .line 244
    iget-object v1, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    .line 245
    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    return-void
.end method

.method public onPreParceling(Z)V
    .registers 2

    .line 236
    iget-object p1, p0, Landroidx/media2/session/ConnectionResult;->mSessionStub:Landroidx/media2/session/IMediaSession;

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->mSessionBinder:Landroid/os/IBinder;

    .line 237
    iget-object p1, p0, Landroidx/media2/session/ConnectionResult;->mCurrentMediaItem:Landroidx/media2/common/MediaItem;

    invoke-static {p1}, Landroidx/media2/session/MediaUtils;->upcastForPreparceling(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->mParcelableCurrentMediaItem:Landroidx/media2/common/MediaItem;

    return-void
.end method
