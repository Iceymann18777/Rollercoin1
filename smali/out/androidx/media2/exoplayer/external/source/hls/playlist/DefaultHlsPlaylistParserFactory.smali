.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;-><init>()V

    return-object v0
.end method

.method public createPlaylistParser(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "masterPlaylist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;",
            ")",
            "Landroidx/media2/exoplayer/external/upstream/ParsingLoadable$Parser<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;)V

    return-object v0
.end method
