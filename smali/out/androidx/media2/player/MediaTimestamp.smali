.class public final Landroidx/media2/player/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# static fields
.field public static final TIMESTAMP_UNKNOWN:Landroidx/media2/player/MediaTimestamp;


# instance fields
.field private final mClockRate:F

.field private final mMediaTimeUs:J

.field private final mNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 46
    new-instance v6, Landroidx/media2/player/MediaTimestamp;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/player/MediaTimestamp;-><init>(JJF)V

    sput-object v6, Landroidx/media2/player/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroidx/media2/player/MediaTimestamp;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    .line 100
    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    iput v0, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    return-void
.end method

.method public constructor <init>(JJF)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    .line 83
    iput-wide p3, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    .line 84
    iput p5, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 109
    :cond_12
    check-cast p1, Landroidx/media2/player/MediaTimestamp;

    .line 110
    iget-wide v2, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    iget-wide v4, p1, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2d

    iget-wide v2, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    iget-wide v4, p1, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2d

    iget v2, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    iget p1, p1, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 117
    iget-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    .line 118
    iget-wide v2, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    int-to-float v0, v1

    .line 119
    iget v1, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ClockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
