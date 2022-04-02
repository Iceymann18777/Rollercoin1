.class public Landroidx/media2/exoplayer/external/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$0;->$instance:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 45
    sget-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$1;->$instance:Ljava/util/Comparator;

    sput-object v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxWeight"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->maxWeight:I

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 69
    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    return-void
.end method

.method private ensureSortedByIndex()V
    .registers 4

    .line 140
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    iput v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method private ensureSortedByValue()V
    .registers 3

    .line 150
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_e

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method static final synthetic lambda$static$0$SlidingPercentile(Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;)I
    .registers 2

    .line 44
    iget p0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    iget p1, p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static final synthetic lambda$static$1$SlidingPercentile(Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;)I
    .registers 2

    .line 46
    iget p0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    iget p1, p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addSample(IF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "weight",
            "value"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->ensureSortedByIndex()V

    .line 91
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_10

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v1, v0

    goto :goto_16

    .line 92
    :cond_10
    new-instance v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;-><init>(Landroidx/media2/exoplayer/external/util/SlidingPercentile$1;)V

    .line 93
    :goto_16
    iget v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->index:I

    .line 94
    iput p1, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    .line 95
    iput p2, v0, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    .line 96
    iget-object p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 99
    :cond_2c
    :goto_2c
    iget p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    iget p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->maxWeight:I

    if-le p1, p2, :cond_65

    sub-int/2addr p1, p2

    .line 101
    iget-object p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 102
    iget v1, p2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    if-gt v1, p1, :cond_5a

    .line 103
    iget p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    iget v1, p2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    .line 104
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2c

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSamples:[Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->recycledSampleCount:I

    aput-object p2, v0, p1

    goto :goto_2c

    .line 109
    :cond_5a
    iget v0, p2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    .line 110
    iget p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    goto :goto_2c

    :cond_65
    return-void
.end method

.method public getPercentile(F)F
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentile"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->ensureSortedByValue()V

    .line 123
    iget v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    :goto_a
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 126
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    .line 127
    iget v3, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_25

    .line 129
    iget p1, v2, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    return p1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 133
    :cond_28
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_33

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_43

    :cond_33
    iget-object p1, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;

    iget p1, p1, Landroidx/media2/exoplayer/external/util/SlidingPercentile$Sample;->value:F

    :goto_43
    return p1
.end method

.method public reset()V
    .registers 2

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->currentSortOrder:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->nextSampleIndex:I

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/util/SlidingPercentile;->totalWeight:I

    return-void
.end method
