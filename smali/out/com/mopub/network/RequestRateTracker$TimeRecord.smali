.class public Lcom/mopub/network/RequestRateTracker$TimeRecord;
.super Ljava/lang/Object;
.source "RequestRateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/RequestRateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeRecord"
.end annotation


# instance fields
.field public final mBlockIntervalMs:I

.field final mBlockStartTime:J

.field public final mReason:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockStartTime:J

    .line 31
    iput p1, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    if-nez p2, :cond_f

    const-string p2, "unknown"

    .line 32
    :cond_f
    iput-object p2, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getTargetTime()J
    .registers 5

    .line 36
    iget-wide v0, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockStartTime:J

    iget v2, p0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
