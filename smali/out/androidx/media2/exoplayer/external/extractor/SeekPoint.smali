.class public final Landroidx/media2/exoplayer/external/extractor/SeekPoint;
.super Ljava/lang/Object;
.source "SeekPoint.java"


# static fields
.field public static final START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;


# instance fields
.field public final position:J

.field public final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekPoint;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->START:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "position"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    .line 46
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

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

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 62
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    .line 63
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_25

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

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

    .line 68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 51
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[timeUs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
