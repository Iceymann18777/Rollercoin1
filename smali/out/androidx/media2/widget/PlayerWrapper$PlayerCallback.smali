.class abstract Landroidx/media2/widget/PlayerWrapper$PlayerCallback;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PlayerCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAllowedCommandsChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/session/SessionCommandGroup;)V
    .registers 3

    return-void
.end method

.method onCurrentMediaItemChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;)V
    .registers 3

    return-void
.end method

.method onPlaybackCompleted(Landroidx/media2/widget/PlayerWrapper;)V
    .registers 2

    return-void
.end method

.method onPlaybackSpeedChanged(Landroidx/media2/widget/PlayerWrapper;F)V
    .registers 3

    return-void
.end method

.method onPlayerStateChanged(Landroidx/media2/widget/PlayerWrapper;I)V
    .registers 3

    return-void
.end method

.method onPlaylistChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method onSeekCompleted(Landroidx/media2/widget/PlayerWrapper;J)V
    .registers 4

    return-void
.end method

.method onSubtitleData(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .registers 5

    return-void
.end method

.method onTrackDeselected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .registers 3

    return-void
.end method

.method onTrackInfoChanged(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method onTrackSelected(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .registers 3

    return-void
.end method

.method onVideoSizeChanged(Landroidx/media2/widget/PlayerWrapper;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .registers 4

    return-void
.end method
