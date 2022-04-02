.class public Landroidx/media2/common/MediaItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaItem$Builder;
    }
.end annotation


# instance fields
.field mEndPositionMs:J

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mMetadata:Landroidx/media2/common/MediaMetadata;

.field mStartPositionMs:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    const-wide v0, 0x7ffffffffffffffL

    .line 86
    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaItem$Builder;)V
    .registers 8

    .line 106
    iget-object v1, p1, Landroidx/media2/common/MediaItem$Builder;->mMetadata:Landroidx/media2/common/MediaMetadata;

    iget-wide v2, p1, Landroidx/media2/common/MediaItem$Builder;->mStartPositionMs:J

    iget-wide v4, p1, Landroidx/media2/common/MediaItem$Builder;->mEndPositionMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaMetadata;JJ)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaItem;)V
    .registers 8

    .line 110
    iget-object v1, p1, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    iget-wide v2, p1, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    iget-wide v4, p1, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaMetadata;JJ)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/common/MediaMetadata;JJ)V
    .registers 13

    .line 114
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    const-wide v0, 0x7ffffffffffffffL

    .line 86
    iput-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/media2/common/MediaItem;->mListeners:Ljava/util/List;

    cmp-long v2, p2, p4

    if-gtz v2, :cond_63

    if-eqz p1, :cond_5c

    const-string v2, "android.media.metadata.DURATION"

    .line 119
    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 120
    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5c

    cmp-long v4, p4, v0

    if-eqz v4, :cond_5c

    cmp-long v0, p4, v2

    if-gtz v0, :cond_3d

    goto :goto_5c

    .line 123
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "endPositionMs shouldn\'t be greater than duration in the metdata, endPositionMs="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", durationMs="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_5c
    :goto_5c
    iput-object p1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    .line 129
    iput-wide p2, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    .line 130
    iput-wide p4, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    return-void

    .line 116
    :cond_63
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal start/end position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEndPosition()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    return-wide v0
.end method

.method public getMediaId()Ljava/lang/String;
    .registers 4

    .line 213
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 215
    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 216
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getMetadata()Landroidx/media2/common/MediaMetadata;
    .registers 3

    .line 181
    iget-object v0, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getStartPosition()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    return-wide v0
.end method

.method public onPreParceling(Z)V
    .registers 4

    .line 340
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_c

    .line 343
    invoke-super {p0, p1}, Landroidx/versionedparcelable/CustomVersionedParcelable;->onPreParceling(Z)V

    return-void

    .line 341
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MediaItem\'s subclasses shouldn\'t be parcelized."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Landroidx/media2/common/MediaItem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    const-string v2, "{mMetadata="

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/MediaItem;->mMetadata:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mStartPositionMs="

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/media2/common/MediaItem;->mStartPositionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mEndPositionMs="

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/media2/common/MediaItem;->mEndPositionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_39

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_39
    move-exception v0

    .line 141
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method
