.class public Lcom/mopub/network/RequestRateTracker;
.super Ljava/lang/Object;
.source "RequestRateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/RequestRateTracker$Helper;,
        Lcom/mopub/network/RequestRateTracker$TimeRecord;
    }
.end annotation


# instance fields
.field private mTimeRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/network/RequestRateTracker$TimeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/RequestRateTracker;->mTimeRecordMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .line 21
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->currentTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private static currentTimeMs()J
    .registers 2

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/mopub/network/RequestRateTracker;
    .registers 1

    .line 54
    invoke-static {}, Lcom/mopub/network/RequestRateTracker$Helper;->access$100()Lcom/mopub/network/RequestRateTracker;

    move-result-object v0

    return-object v0
.end method

.method private getTimeUntilLimitEnds(Ljava/lang/String;)J
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/mopub/network/RequestRateTracker;->mTimeRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    if-nez p1, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 84
    :cond_d
    invoke-virtual {p1}, Lcom/mopub/network/RequestRateTracker$TimeRecord;->getTargetTime()J

    move-result-wide v0

    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->currentTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static setInstance(Lcom/mopub/network/RequestRateTracker;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/mopub/network/RequestRateTracker$Helper;->access$102(Lcom/mopub/network/RequestRateTracker;)Lcom/mopub/network/RequestRateTracker;

    return-void
.end method


# virtual methods
.method public getRecordForAdUnit(Ljava/lang/String;)Lcom/mopub/network/RequestRateTracker$TimeRecord;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/mopub/network/RequestRateTracker;->mTimeRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    return-object p1
.end method

.method isBlockedByRateLimit(Ljava/lang/String;)Z
    .registers 6

    .line 70
    invoke-direct {p0, p1}, Lcom/mopub/network/RequestRateTracker;->getTimeUntilLimitEnds(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method registerRateLimit(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 6

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_1e

    .line 62
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1e

    .line 63
    iget-object v0, p0, Lcom/mopub/network/RequestRateTracker;->mTimeRecordMap:Ljava/util/Map;

    new-instance v1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2, p3}, Lcom/mopub/network/RequestRateTracker$TimeRecord;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 65
    :cond_1e
    iget-object p2, p0, Lcom/mopub/network/RequestRateTracker;->mTimeRecordMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    return-void
.end method
