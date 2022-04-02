.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;
.super Ljava/io/IOException;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistStuckException"
.end annotation


# instance fields
.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 104
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;->url:Landroid/net/Uri;

    return-void
.end method
