.class public final Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 124
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 125
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 126
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 1

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->resetBytesRead()V

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 170
    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 171
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_29

    .line 174
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_29
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    throw v1
.end method
