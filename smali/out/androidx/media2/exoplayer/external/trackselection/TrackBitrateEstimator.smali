.class public interface abstract Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;
.super Ljava/lang/Object;
.source "TrackBitrateEstimator.java"


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackBitrateEstimator;

    return-void
.end method


# virtual methods
.method public abstract getBitrates([Landroidx/media2/exoplayer/external/Format;Ljava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;[I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "formats",
            "queue",
            "iterators",
            "bitrates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;",
            "[I)[I"
        }
    .end annotation
.end method
