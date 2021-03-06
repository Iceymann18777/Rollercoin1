.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private initialBitrateEstimates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetOnNetworkTypeChange:Z

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    .line 101
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    const/16 p1, 0x7d0

    .line 103
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 104
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    return-void
.end method

.method private static getCountryGroupIndices(Ljava/lang/String;)[I
    .registers 2

    .line 213
    sget-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_10

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 215
    fill-array-data p0, :array_12

    :cond_10
    return-object p0

    nop

    :array_12
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private static getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getCountryGroupIndices(Ljava/lang/String;)[I

    move-result-object p0

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const-wide/32 v1, 0xf4240

    .line 201
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 202
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget v3, p0, v2

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    const/4 v4, 0x1

    aget v4, p0, v4

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 204
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    aget v3, p0, v3

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 205
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    aget v3, p0, v4

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 207
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    aget p0, p0, v2

    aget-wide v2, v1, p0

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x7

    .line 207
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .registers 9

    .line 190
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    return-object v7
.end method
