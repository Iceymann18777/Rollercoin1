.class public abstract Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;
.super Ljava/lang/Object;
.source "HlsPlaylist.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/offline/FilterableManifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/offline/FilterableManifest<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field public final baseUri:Ljava/lang/String;

.field public final hasIndependentSegments:Z

.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseUri",
            "tags",
            "hasIndependentSegments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;->tags:Ljava/util/List;

    .line 55
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    return-void
.end method
