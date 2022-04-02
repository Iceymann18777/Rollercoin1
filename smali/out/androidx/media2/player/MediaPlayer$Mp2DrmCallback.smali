.class Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;
.super Landroidx/media2/player/MediaPlayer2$DrmEventCallback;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mp2DrmCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;)V
    .registers 2

    .line 3066
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$Mp2DrmCallback;->this$0:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2$DrmEventCallback;-><init>()V

    return-void
.end method
