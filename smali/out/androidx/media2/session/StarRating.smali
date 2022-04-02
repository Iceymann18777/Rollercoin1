.class public final Landroidx/media2/session/StarRating;
.super Ljava/lang/Object;
.source "StarRating.java"

# interfaces
.implements Landroidx/media2/common/Rating;


# instance fields
.field mMaxStars:I

.field mStarRating:F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 90
    instance-of v0, p1, Landroidx/media2/session/StarRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 93
    :cond_6
    check-cast p1, Landroidx/media2/session/StarRating;

    .line 94
    iget v0, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    iget v2, p1, Landroidx/media2/session/StarRating;->mMaxStars:I

    if-ne v0, v2, :cond_17

    iget v0, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    iget p1, p1, Landroidx/media2/session/StarRating;->mStarRating:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget v1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .registers 3

    .line 80
    iget v0, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StarRating: maxStars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/session/StarRating;->mMaxStars:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Landroidx/media2/session/StarRating;->isRated()Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", starRating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media2/session/StarRating;->mStarRating:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    const-string v1, ", unrated"

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
