.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptorRegistry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/FileDescriptor;",
            "Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public registerMediaItemAndGetLock(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .registers 4

    .line 854
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 855
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    new-instance v1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;

    invoke-direct {v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_12
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;

    .line 858
    iget v0, p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;->mMediaItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;->mMediaItemCount:I

    .line 859
    iget-object p1, p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;->mLock:Ljava/lang/Object;

    return-object p1
.end method

.method public unregisterMediaItem(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 863
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;

    .line 864
    iget v1, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;->mMediaItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry;->mMediaItemCount:I

    if-nez v1, :cond_19

    .line 865
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-void
.end method
