.class public final Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;
.super Ljava/lang/Object;
.source "AuxEffectInfo.java"


# instance fields
.field public final effectId:I

.field public final sendLevel:F


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "sendLevel"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 79
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 80
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    iget v3, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    if-ne v2, v3, :cond_25

    iget p1, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    .line 81
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 87
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
