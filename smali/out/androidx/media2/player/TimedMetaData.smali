.class public Landroidx/media2/player/TimedMetaData;
.super Ljava/lang/Object;
.source "TimedMetaData.java"


# instance fields
.field private mMetaData:[B

.field private mTimestampUs:J


# direct methods
.method public constructor <init>(J[B)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Landroidx/media2/player/TimedMetaData;->mTimestampUs:J

    .line 56
    iput-object p3, p0, Landroidx/media2/player/TimedMetaData;->mMetaData:[B

    return-void
.end method
