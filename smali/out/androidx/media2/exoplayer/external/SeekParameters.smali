.class public final Landroidx/media2/exoplayer/external/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

.field public static final PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 45
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 47
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v3, v4}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->CLOSEST_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->PREVIOUS_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 52
    new-instance v0, Landroidx/media2/exoplayer/external/SeekParameters;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->NEXT_SYNC:Landroidx/media2/exoplayer/external/SeekParameters;

    .line 54
    sget-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->EXACT:Landroidx/media2/exoplayer/external/SeekParameters;

    sput-object v0, Landroidx/media2/exoplayer/external/SeekParameters;->DEFAULT:Landroidx/media2/exoplayer/external/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toleranceBeforeUs",
            "toleranceAfterUs"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    .line 74
    :goto_e
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 75
    :goto_17
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 76
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    .line 77
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 88
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/SeekParameters;

    .line 89
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_25

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    cmp-long p1, v2, v4

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
    .registers 5

    .line 95
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceBeforeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/SeekParameters;->toleranceAfterUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
