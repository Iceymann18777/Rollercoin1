.class public abstract Landroidx/media2/common/SessionPlayer$PlayerCallback;
.super Ljava/lang/Object;
.source "SessionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)V
    .registers 3

    return-void
.end method

.method public onBufferingStateChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;I)V
    .registers 4

    return-void
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .registers 3

    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .registers 2

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .registers 3

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .registers 3

    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaMetadata;)V
    .registers 3

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .registers 3

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .registers 4

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .registers 3

    return-void
.end method

.method public onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .registers 5

    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .registers 3

    return-void
.end method

.method public onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .registers 3

    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .registers 4

    return-void
.end method
