.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

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
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 117
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 118
    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 119
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 120
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    .line 121
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method
