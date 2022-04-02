.class Landroidx/media2/widget/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation


# instance fields
.field public DEBUG:Z

.field mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->DEBUG:Z

    .line 559
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public remove(Landroidx/media2/widget/SubtitleTrack$Cue;)V
    .registers 7

    .line 432
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    .line 433
    iget-object v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v0, :cond_17

    .line 434
    iget-object v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-wide v3, v0, v2

    .line 435
    invoke-virtual {p0, p1, v3, v4}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 438
    :cond_17
    iget-wide v0, p1, Landroidx/media2/widget/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/widget/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V

    return-void
.end method

.method removeEvent(Landroidx/media2/widget/SubtitleTrack$Cue;J)V
    .registers 6

    .line 401
    iget-object v0, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 403
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_20

    .line 405
    iget-object p1, p0, Landroidx/media2/widget/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method
