.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

.field private final extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

.field private seekTimeUs:J

.field private seenIcyMetadata:Z

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/util/ConditionVariable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "uri",
            "dataSource",
            "extractorHolder",
            "extractorOutput",
            "loadCondition"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 917
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 918
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    .line 919
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 920
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    .line 921
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 922
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 923
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 p1, 0x0

    .line 924
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .registers 1

    .line 891
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;
    .registers 1

    .line 891
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 891
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 891
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 5

    .line 891
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1001
    new-instance v8, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 1005
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v8
.end method

.method private setLoadPosition(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "timeUs"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1013
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 1014
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 p1, 0x0

    .line 1015
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 931
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public load()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_f2

    .line 937
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_f2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 940
    :try_start_a
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    iget-wide v11, v4, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 941
    invoke-direct {p0, v11, v12}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 942
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_25

    add-long/2addr v4, v11

    .line 944
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 946
    :cond_25
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 947
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$602(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 948
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 949
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_73

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_73

    .line 950
    new-instance v5, Landroidx/media2/exoplayer/external/source/IcyDataSource;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v5, v6, v7, p0}, Landroidx/media2/exoplayer/external/source/IcyDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;ILandroidx/media2/exoplayer/external/source/IcyDataSource$Listener;)V

    .line 951
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyTrack()Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v6

    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 952
    invoke-static {}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$700()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    :cond_73
    move-object v6, v5

    .line 954
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_df

    .line 955
    :try_start_7d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-virtual {v2, v13, v5, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->selectExtractor(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroid/net/Uri;)Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v2

    .line 956
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v4, :cond_90

    .line 957
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v2, v11, v12, v4, v5}, Landroidx/media2/exoplayer/external/extractor/Extractor;->seek(JJ)V

    .line 958
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_90
    :goto_90
    if-nez v1, :cond_c9

    .line 960
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v4, :cond_c9

    .line 961
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->block()V

    .line 962
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v2, v13, v4}, Landroidx/media2/exoplayer/external/extractor/Extractor;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v1

    .line 963
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$800(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J

    move-result-wide v6

    add-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-lez v8, :cond_90

    .line 964
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    .line 965
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->close()Z

    .line 966
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$900(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c8
    .catchall {:try_start_7d .. :try_end_c8} :catchall_dc

    goto :goto_90

    :cond_c9
    if-ne v1, v3, :cond_cd

    const/4 v1, 0x0

    goto :goto_d5

    .line 973
    :cond_cd
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 975
    :goto_d5
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    goto/16 :goto_2

    :catchall_dc
    move-exception v0

    move-object v2, v13

    goto :goto_e0

    :catchall_df
    move-exception v0

    :goto_e0
    if-eq v1, v3, :cond_ec

    if-eqz v2, :cond_ec

    .line 973
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 975
    :cond_ec
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v0

    :cond_f2
    return-void
.end method

.method public onIcyMetadata(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 987
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    goto :goto_13

    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_13
    move-wide v3, v0

    .line 988
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    .line 989
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 990
    invoke-interface {v2, p1, v6}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 991
    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x1

    .line 993
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method
