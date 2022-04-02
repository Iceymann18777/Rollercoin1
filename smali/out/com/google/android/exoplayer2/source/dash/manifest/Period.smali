.class public Lcom/google/android/exoplayer2/source/dash/manifest/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field public final adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field public final eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final startMs:J


# virtual methods
.method public getAdaptationSetIndex(I)I
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 81
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, -0x1

    return p1
.end method
