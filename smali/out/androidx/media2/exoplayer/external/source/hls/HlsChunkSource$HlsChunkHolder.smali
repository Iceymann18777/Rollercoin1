.class public final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsChunkHolder"
.end annotation


# instance fields
.field public chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

.field public endOfStream:Z

.field public playlistUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 87
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    return-void
.end method
