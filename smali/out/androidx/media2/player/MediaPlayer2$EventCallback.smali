.class public abstract Landroidx/media2/player/MediaPlayer2$EventCallback;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallCompleted(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .registers 5

    return-void
.end method

.method public onError(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .registers 5

    return-void
.end method

.method public onInfo(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .registers 5

    return-void
.end method

.method public onMediaTimeDiscontinuity(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V
    .registers 4

    return-void
.end method

.method public onSubtitleData(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .registers 5

    return-void
.end method

.method public onTimedMetaDataAvailable(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V
    .registers 4

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;II)V
    .registers 5

    return-void
.end method
