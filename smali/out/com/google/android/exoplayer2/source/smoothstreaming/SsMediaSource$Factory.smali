.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;"
        }
    .end annotation
.end field

.field private livePresentationDelayMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 103
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 104
    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 106
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    .line 107
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method
