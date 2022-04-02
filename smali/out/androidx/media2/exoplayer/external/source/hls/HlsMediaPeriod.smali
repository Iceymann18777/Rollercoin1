.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

.field private compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private manifestUrlIndicesPerWrapper:[[I

.field private final mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

.field private notifiedReadingStarted:Z

.field private pendingPrepareCount:I

.field private final playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media2/exoplayer/external/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/upstream/Allocator;Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "extractorFactory",
            "playlistTracker",
            "dataSourceFactory",
            "mediaTransferListener",
            "loadErrorHandlingPolicy",
            "eventDispatcher",
            "allocator",
            "compositeSequenceableLoaderFactory",
            "allowChunklessPreparation",
            "useSessionKeys"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    .line 120
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 121
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    .line 122
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 123
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 124
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 125
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 126
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 127
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 128
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 130
    invoke-interface {p8, p2}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object p2

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    .line 131
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 132
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 133
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 134
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    new-array p1, p1, [[I

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 136
    invoke-virtual {p6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    return-void
.end method

.method private buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "audioRenditions",
            "sampleStreamWrappers",
            "manifestUrlsIndicesPerWrapper",
            "overridingDrmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 666
    new-instance v1, Ljava/util/ArrayList;

    .line 667
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    .line 669
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    new-instance v3, Ljava/util/ArrayList;

    .line 671
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 674
    :goto_24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_db

    .line 676
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    .line 677
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    move-object/from16 v12, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    goto/16 :goto_d7

    .line 683
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 684
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 685
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 687
    :goto_4c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_84

    .line 688
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-static {v7, v11}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 689
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    .line 690
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v12, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v12, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v11, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-eqz v11, :cond_7f

    const/4 v11, 0x1

    goto :goto_80

    :cond_7f
    const/4 v11, 0x0

    :goto_80
    and-int/2addr v10, v11

    :cond_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    :cond_84
    const/4 v12, 0x1

    new-array v7, v5, [Landroid/net/Uri;

    .line 700
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [Landroid/net/Uri;

    new-array v7, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 701
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Landroidx/media2/exoplayer/external/Format;

    const/4 v15, 0x0

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v17, p6

    move-wide/from16 v18, p1

    .line 698
    invoke-direct/range {v11 .. v19}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v7

    .line 706
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p4

    .line 707
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    .line 709
    iget-boolean v13, v12, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v13, :cond_d7

    if-eqz v10, :cond_d7

    new-array v10, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 710
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/media2/exoplayer/external/Format;

    .line 711
    new-instance v13, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v8, v8, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v14, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v14, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v14, v8, v5

    invoke-direct {v13, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v7, v13, v5, v8}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    :cond_d7
    :goto_d7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_24

    :cond_db
    move-object/from16 v12, p0

    return-void
.end method

.method private buildAndPrepareMainSampleStreamWrapper(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "masterPlaylist",
            "positionUs",
            "sampleStreamWrappers",
            "manifestUrlIndicesPerWrapper",
            "overridingDrmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 545
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 548
    :goto_e
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v7, :cond_47

    .line 549
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 550
    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    .line 551
    iget v11, v7, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gtz v11, :cond_40

    iget-object v11, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v11, v9}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_30

    goto :goto_40

    .line 554
    :cond_30
    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v7, v10}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3d

    .line 555
    aput v10, v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 558
    :cond_3d
    aput v8, v2, v4

    goto :goto_44

    .line 552
    :cond_40
    :goto_40
    aput v9, v2, v4

    add-int/lit8 v5, v5, 0x1

    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_47
    if-lez v5, :cond_4c

    move v1, v5

    const/4 v4, 0x1

    goto :goto_53

    :cond_4c
    if-ge v6, v1, :cond_52

    sub-int/2addr v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_54

    :cond_52
    const/4 v4, 0x0

    :goto_53
    const/4 v5, 0x0

    .line 576
    :goto_54
    new-array v13, v1, [Landroid/net/Uri;

    .line 577
    new-array v6, v1, [Landroidx/media2/exoplayer/external/Format;

    .line 578
    new-array v7, v1, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 580
    :goto_5c
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_88

    if-eqz v4, :cond_6a

    .line 581
    aget v14, v2, v11

    if-ne v14, v9, :cond_85

    :cond_6a
    if-eqz v5, :cond_70

    aget v14, v2, v11

    if-eq v14, v10, :cond_85

    .line 583
    :cond_70
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;

    .line 584
    iget-object v15, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    aput-object v15, v13, v12

    .line 585
    iget-object v14, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v14, v6, v12

    add-int/lit8 v14, v12, 0x1

    .line 586
    aput v11, v7, v12

    move v12, v14

    :cond_85
    add-int/lit8 v11, v11, 0x1

    goto :goto_5c

    .line 589
    :cond_88
    aget-object v2, v6, v3

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v12, 0x0

    .line 590
    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v11, p0

    move-object v14, v6

    move-object/from16 v16, v4

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    .line 591
    invoke-direct/range {v11 .. v19}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v4

    move-object/from16 v5, p4

    .line 599
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p5

    .line 600
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    .line 601
    iget-boolean v7, v5, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v7, :cond_18b

    if-eqz v2, :cond_18b

    .line 602
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b8

    const/4 v7, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v7, 0x0

    .line 603
    :goto_b9
    invoke-static {v2, v10}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c1

    const/4 v9, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v9, 0x0

    .line 604
    :goto_c2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_123

    .line 606
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x0

    :goto_cc
    if-ge v7, v1, :cond_d9

    .line 608
    aget-object v12, v6, v7

    invoke-static {v12}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveVideoFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    aput-object v12, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_cc

    .line 610
    :cond_d9
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_103

    .line 612
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    if-nez v1, :cond_ef

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 613
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 614
    :cond_ef
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v2, v10, [Landroidx/media2/exoplayer/external/Format;

    aget-object v6, v6, v3

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 616
    invoke-static {v6, v7, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 614
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_103
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    if-eqz v0, :cond_13f

    const/4 v1, 0x0

    .line 623
    :goto_108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13f

    .line 624
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v10, [Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v3

    invoke-direct {v2, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    :cond_123
    if-eqz v9, :cond_16e

    .line 629
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x0

    :goto_128
    if-ge v7, v1, :cond_137

    .line 631
    aget-object v9, v6, v7

    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 632
    invoke-static {v9, v12, v10}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    aput-object v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_128

    .line 637
    :cond_137
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_13f
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v10, [Landroidx/media2/exoplayer/external/Format;

    const-string v2, "ID3"

    const-string v6, "application/id3"

    const/4 v7, 0x0

    .line 645
    invoke-static {v2, v6, v7, v8, v7}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 651
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v2, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 654
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v6, v10, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v0, v6, v3

    invoke-direct {v2, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 653
    invoke-virtual {v4, v1, v3, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    goto :goto_18b

    .line 640
    :cond_16e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_181

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_187

    :cond_181
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_187
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18b
    :goto_18b
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 449
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;

    .line 451
    iget-boolean v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->useSessionKeys:Z

    if-eqz v0, :cond_1a

    .line 452
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1e

    .line 453
    :cond_1a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_1e
    move-object v10, v0

    .line 455
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    .line 456
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 457
    iget-object v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    const/4 v13, 0x0

    .line 459
    iput v13, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 460
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_44

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 464
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_44
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 474
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const/4 v7, 0x0

    .line 482
    :goto_50
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a4

    .line 483
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;

    const/4 v1, 0x3

    new-array v2, v11, [Landroid/net/Uri;

    .line 484
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    aput-object v0, v2, v13

    new-array v3, v11, [Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v0, v3, v13

    const/4 v4, 0x0

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p1

    .line 485
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    new-array v1, v11, [I

    aput v16, v1, v13

    .line 493
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v2, v11, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v4, v11, [Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v5, v17

    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Landroidx/media2/exoplayer/external/Format;

    aput-object v5, v4, v13

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v0, v1, v13, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_50

    :cond_a4
    new-array v0, v13, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 499
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    new-array v0, v13, [[I

    .line 500
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 501
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    iput v1, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 503
    aget-object v0, v0, v13

    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 504
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    :goto_c5
    if-ge v13, v1, :cond_cf

    aget-object v2, v0, v13

    .line 505
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_c5

    .line 508
    :cond_cf
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    return-void
.end method

.method private buildSampleStreamWrapper(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackType",
            "playlistUrls",
            "playlistFormats",
            "muxedAudioFormat",
            "muxedCaptionFormats",
            "overridingDrmInitData",
            "positionUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;J)",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    move-object v11, p0

    .line 725
    new-instance v9, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    iget-object v1, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;

    iget-object v2, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;

    iget-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    iget-object v7, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/HlsDataSourceFactory;Landroidx/media2/exoplayer/external/upstream/TransferListener;Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    .line 735
    new-instance v12, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iget-object v5, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    iget-object v10, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v13, v11, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;-><init>(ILandroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v12
.end method

.method private static deriveAudioFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "variantFormat",
            "mediaTagFormat",
            "isPrimaryTrackInVariant"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1f

    .line 800
    iget-object v2, v1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 801
    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 802
    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 803
    iget v6, v1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 804
    iget-object v7, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 805
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move-object v9, v1

    move-object v12, v2

    move v14, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_45

    .line 807
    :cond_1f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3c

    .line 809
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 810
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 811
    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 812
    iget-object v6, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 813
    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move-object v12, v1

    move/from16 v17, v2

    move v14, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object v9, v7

    goto :goto_45

    :cond_3c
    move-object v12, v1

    move-object v9, v2

    move-object/from16 v19, v9

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 816
    :goto_45
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p2, :cond_4f

    .line 817
    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v13, v4

    goto :goto_50

    :cond_4f
    const/4 v13, -0x1

    .line 818
    :goto_50
    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v19}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method private static deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionKeyDrmInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 751
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 752
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 753
    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 759
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3b

    .line 760
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 761
    iget-object v7, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 762
    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    .line 763
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 768
    :cond_3b
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3f
    return-object v1
.end method

.method private static deriveVideoFormat(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variantFormat"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 776
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v12, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v13, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_14

    .line 346
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p2, :cond_13

    aget-object v2, p1, v1

    .line 347
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return v0

    .line 351
    :cond_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "toKeyframe"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 333
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "seekParameters"
        }
    .end annotation

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .registers 2

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 158
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "sampleStreamWrapper"
        }
    .end annotation

    .line 64
    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleStreamWrapper"
        }
    .end annotation

    .line 426
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistChanged()V
    .registers 2

    .line 433
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "blacklistDurationMs"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 440
    invoke-virtual {v4, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 442
    :cond_11
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    return v2
.end method

.method public onPlaylistRefreshRequired(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Landroid/net/Uri;)V

    return-void
.end method

.method public onPrepared()V
    .registers 12

    .line 399
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v0, :cond_9

    return-void

    .line 404
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v1, :cond_1d

    aget-object v5, v0, v3

    .line 405
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 407
    :cond_1d
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 409
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    if-ge v4, v3, :cond_44

    aget-object v6, v1, v4

    .line 410
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v7, :cond_41

    add-int/lit8 v9, v5, 0x1

    .line 412
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2f

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 415
    :cond_44
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 416
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "positionUs"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 151
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->addListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 152
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 362
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_c

    .line 363
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->notifiedReadingStarted:Z

    :cond_c
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->removeListener(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 142
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    return-void
.end method

.method public seekToUs(J)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_21

    const/4 v1, 0x0

    .line 379
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 380
    :goto_d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 381
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v0, :cond_21

    .line 384
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->reset()V

    :cond_21
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selections",
            "mayRetainStreamFlags",
            "streams",
            "streamResetFlags",
            "positionUs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 254
    array-length v3, v1

    new-array v3, v3, [I

    .line 255
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 256
    :goto_d
    array-length v7, v1

    if-ge v6, v7, :cond_4e

    .line 257
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_17

    const/4 v7, -0x1

    goto :goto_25

    .line 258
    :cond_17
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_25
    aput v7, v3, v6

    .line 259
    aput v8, v4, v6

    .line 260
    aget-object v7, v1, v6

    if-eqz v7, :cond_4b

    .line 261
    aget-object v7, v1, v6

    invoke-interface {v7}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 262
    :goto_34
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v11, v10

    if-ge v9, v11, :cond_4b

    .line 263
    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_48

    .line 264
    aput v9, v4, v6

    goto :goto_4b

    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 272
    :cond_4e
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 274
    array-length v6, v1

    new-array v7, v6, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 275
    array-length v8, v1

    new-array v8, v8, [Landroidx/media2/exoplayer/external/source/SampleStream;

    .line 276
    array-length v9, v1

    new-array v14, v9, [Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    .line 278
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    new-array v15, v9, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    .line 280
    :goto_65
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v9, v9

    if-ge v13, v9, :cond_10a

    const/4 v9, 0x0

    .line 281
    :goto_6b
    array-length v10, v1

    if-ge v9, v10, :cond_84

    .line 282
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_76

    aget-object v10, v2, v9

    goto :goto_77

    :cond_76
    move-object v10, v11

    :goto_77
    aput-object v10, v8, v9

    .line 283
    aget v10, v4, v9

    if-ne v10, v13, :cond_7f

    aget-object v11, v1, v9

    :cond_7f
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 285
    :cond_84
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move/from16 v20, v2

    move-object/from16 v19, v14

    move-object v2, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    .line 286
    invoke-virtual/range {v9 .. v16}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 289
    :goto_a3
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_d6

    .line 290
    aget v12, v4, v10

    if-ne v12, v6, :cond_c6

    .line 292
    aget-object v11, v8, v10

    if-eqz v11, :cond_b1

    const/4 v11, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v11, 0x0

    :goto_b2
    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 293
    aget-object v11, v8, v10

    aput-object v11, v7, v10

    .line 295
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v12, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_d3

    .line 296
    :cond_c6
    aget v12, v3, v10

    if-ne v12, v6, :cond_d3

    .line 298
    aget-object v12, v8, v10

    if-nez v12, :cond_cf

    goto :goto_d0

    :cond_cf
    const/4 v13, 0x0

    :goto_d0
    invoke-static {v13}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    :cond_d3
    :goto_d3
    add-int/lit8 v10, v10, 0x1

    goto :goto_a3

    :cond_d6
    if-eqz v11, :cond_fc

    .line 302
    aput-object v5, v2, v20

    add-int/lit8 v12, v20, 0x1

    if-nez v20, :cond_f7

    .line 306
    invoke-virtual {v5, v13}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    if-nez v9, :cond_ee

    .line 307
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    if-eqz v10, :cond_ee

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eq v5, v9, :cond_ff

    goto :goto_ef

    :cond_ee
    const/4 v10, 0x0

    .line 311
    :goto_ef
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->reset()V

    const/16 v17, 0x1

    goto :goto_ff

    :cond_f7
    const/4 v10, 0x0

    .line 315
    invoke-virtual {v5, v10}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    goto :goto_ff

    :cond_fc
    const/4 v10, 0x0

    move/from16 v12, v20

    :cond_ff
    :goto_ff
    add-int/lit8 v13, v6, 0x1

    move-object v15, v2

    move/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v2, p3

    goto/16 :goto_65

    :cond_10a
    move-object v5, v2

    move-object v2, v15

    const/4 v10, 0x0

    .line 320
    invoke-static {v7, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;

    .line 324
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;

    .line 325
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoaderFactory;->createCompositeSequenceableLoader([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    return-wide p5
.end method
