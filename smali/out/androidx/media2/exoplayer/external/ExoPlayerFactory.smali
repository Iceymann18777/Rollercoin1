.class public final Landroidx/media2/exoplayer/external/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# direct methods
.method public static newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "renderersFactory",
            "trackSelector",
            "loadControl",
            "drmSessionManager",
            "bandwidthMeter",
            "analyticsCollectorFactory",
            "looper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/RenderersFactory;",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelector;",
            "Landroidx/media2/exoplayer/external/LoadControl;",
            "Landroidx/media2/exoplayer/external/drm/DrmSessionManager<",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;",
            "Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;",
            "Landroid/os/Looper;",
            ")",
            "Landroidx/media2/exoplayer/external/SimpleExoPlayer;"
        }
    .end annotation

    .line 371
    new-instance v9, Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)V

    return-object v9
.end method
