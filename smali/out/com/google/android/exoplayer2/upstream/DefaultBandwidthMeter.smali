.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
.implements Lcom/google/android/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;,
        Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

.field public static final DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

.field private static singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;


# instance fields
.field private bitrateEstimate:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/EventDispatcher<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final initialBitrateEstimates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastReportedBitrateEstimate:J

.field private networkType:I

.field private networkTypeOverride:I

.field private networkTypeOverrideSet:Z

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->createInitialBitrateCountryGroupAssignment()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_COUNTRY_GROUPS:Ljava/util/Map;

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 58
    fill-array-data v1, :array_24

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:[J

    new-array v1, v0, [J

    .line 62
    fill-array-data v1, :array_3c

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:[J

    new-array v1, v0, [J

    .line 66
    fill-array-data v1, :array_54

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:[J

    new-array v0, v0, [J

    .line 70
    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:[J

    return-void

    :array_24
    .array-data 8
        0x56f9a0
        0x3567e0
        0x1e8480
        0x10c8e0
        0x72bf0
    .end array-data

    :array_3c
    .array-data 8
        0x30d40
        0x24220
        0x203a0
        0x1c138
        0x17318
    .end array-data

    :array_54
    .array-data 8
        0x2191c0
        0x13d620
        0xecd10
        0xc5c10
        0x77a10
    .end array-data

    :array_6c
    .array-data 8
        0x50df20
        0x30d400
        0x1e8480
        0x155cc0
        0xa8750
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v4, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILcom/google/android/exoplayer2/util/Clock;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Z)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    .line 271
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    .line 272
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    .line 273
    new-instance p2, Lcom/google/android/exoplayer2/util/EventDispatcher;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    .line 274
    new-instance p2, Lcom/google/android/exoplayer2/util/SlidingPercentile;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    .line 275
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    if-nez p1, :cond_23

    const/4 p2, 0x0

    goto :goto_27

    .line 277
    :cond_23
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getNetworkType(Landroid/content/Context;)I

    move-result p2

    :goto_27
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    .line 278
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    if-eqz p1, :cond_3a

    if-eqz p5, :cond_3a

    .line 282
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    move-result-object p1

    .line 283
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->register(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    :cond_3a
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V
    .registers 7

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILcom/google/android/exoplayer2/util/Clock;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->onConnectivityAction()V

    return-void
.end method

.method private static createInitialBitrateCountryGroupAssignment()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 490
    fill-array-data v2, :array_958

    const-string v3, "AD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 491
    fill-array-data v2, :array_964

    const-string v3, "AE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 492
    fill-array-data v2, :array_970

    const-string v3, "AF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 493
    fill-array-data v2, :array_97c

    const-string v3, "AG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 494
    fill-array-data v2, :array_988

    const-string v3, "AI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 495
    fill-array-data v2, :array_994

    const-string v3, "AL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 496
    fill-array-data v2, :array_9a0

    const-string v3, "AM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 497
    fill-array-data v2, :array_9ac

    const-string v3, "AO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 498
    fill-array-data v2, :array_9b8

    const-string v3, "AR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 499
    fill-array-data v2, :array_9c4

    const-string v3, "AS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 500
    fill-array-data v2, :array_9d0

    const-string v3, "AT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 501
    fill-array-data v2, :array_9dc

    const-string v3, "AU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 502
    fill-array-data v2, :array_9e8

    const-string v3, "AW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 503
    fill-array-data v2, :array_9f4

    const-string v3, "AX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 504
    fill-array-data v2, :array_a00

    const-string v3, "AZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 505
    fill-array-data v2, :array_a0c

    const-string v3, "BA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 506
    fill-array-data v2, :array_a18

    const-string v3, "BB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 507
    fill-array-data v2, :array_a24

    const-string v3, "BD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 508
    fill-array-data v2, :array_a30

    const-string v3, "BE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 509
    fill-array-data v2, :array_a3c

    const-string v3, "BF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 510
    fill-array-data v2, :array_a48

    const-string v3, "BG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 511
    fill-array-data v2, :array_a54

    const-string v3, "BH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 512
    fill-array-data v2, :array_a60

    const-string v3, "BI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 513
    fill-array-data v2, :array_a6c

    const-string v3, "BJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 514
    fill-array-data v2, :array_a78

    const-string v3, "BL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 515
    fill-array-data v2, :array_a84

    const-string v3, "BM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 516
    fill-array-data v2, :array_a90

    const-string v3, "BN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 517
    fill-array-data v2, :array_a9c

    const-string v3, "BO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 518
    fill-array-data v2, :array_aa8

    const-string v3, "BQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 519
    fill-array-data v2, :array_ab4

    const-string v3, "BR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 520
    fill-array-data v2, :array_ac0

    const-string v3, "BS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 521
    fill-array-data v2, :array_acc

    const-string v3, "BT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 522
    fill-array-data v2, :array_ad8

    const-string v3, "BW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 523
    fill-array-data v2, :array_ae4

    const-string v3, "BY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 524
    fill-array-data v2, :array_af0

    const-string v3, "BZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 525
    fill-array-data v2, :array_afc

    const-string v3, "CA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 526
    fill-array-data v2, :array_b08

    const-string v3, "CD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 527
    fill-array-data v2, :array_b14

    const-string v3, "CF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 528
    fill-array-data v2, :array_b20

    const-string v3, "CG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 529
    fill-array-data v2, :array_b2c

    const-string v3, "CH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 530
    fill-array-data v2, :array_b38

    const-string v3, "CI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 531
    fill-array-data v2, :array_b44

    const-string v3, "CK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 532
    fill-array-data v2, :array_b50

    const-string v3, "CL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 533
    fill-array-data v2, :array_b5c

    const-string v3, "CM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 534
    fill-array-data v2, :array_b68

    const-string v3, "CN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 535
    fill-array-data v2, :array_b74

    const-string v3, "CO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 536
    fill-array-data v2, :array_b80

    const-string v3, "CR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 537
    fill-array-data v2, :array_b8c

    const-string v3, "CU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 538
    fill-array-data v2, :array_b98

    const-string v3, "CV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 539
    fill-array-data v2, :array_ba4

    const-string v3, "CW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 540
    fill-array-data v2, :array_bb0

    const-string v3, "CY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 541
    fill-array-data v2, :array_bbc

    const-string v3, "CZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 542
    fill-array-data v2, :array_bc8

    const-string v3, "DE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 543
    fill-array-data v2, :array_bd4

    const-string v3, "DJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 544
    fill-array-data v2, :array_be0

    const-string v3, "DK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 545
    fill-array-data v2, :array_bec

    const-string v3, "DM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 546
    fill-array-data v2, :array_bf8

    const-string v3, "DO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 547
    fill-array-data v2, :array_c04

    const-string v3, "DZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 548
    fill-array-data v2, :array_c10

    const-string v3, "EC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 549
    fill-array-data v2, :array_c1c

    const-string v3, "EE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 550
    fill-array-data v2, :array_c28

    const-string v3, "EG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 551
    fill-array-data v2, :array_c34

    const-string v3, "EH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 552
    fill-array-data v2, :array_c40

    const-string v3, "ER"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 553
    fill-array-data v2, :array_c4c

    const-string v3, "ES"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 554
    fill-array-data v2, :array_c58

    const-string v3, "ET"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 555
    fill-array-data v2, :array_c64

    const-string v3, "FI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 556
    fill-array-data v2, :array_c70

    const-string v3, "FJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 557
    fill-array-data v2, :array_c7c

    const-string v3, "FK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 558
    fill-array-data v2, :array_c88

    const-string v3, "FM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 559
    fill-array-data v2, :array_c94

    const-string v3, "FO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 560
    fill-array-data v2, :array_ca0

    const-string v3, "FR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 561
    fill-array-data v2, :array_cac

    const-string v3, "GA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 562
    fill-array-data v2, :array_cb8

    const-string v3, "GB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 563
    fill-array-data v2, :array_cc4

    const-string v3, "GD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 564
    fill-array-data v2, :array_cd0

    const-string v3, "GE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 565
    fill-array-data v2, :array_cdc

    const-string v3, "GF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 566
    fill-array-data v2, :array_ce8

    const-string v3, "GG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 567
    fill-array-data v2, :array_cf4

    const-string v3, "GH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 568
    fill-array-data v2, :array_d00

    const-string v3, "GI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 569
    fill-array-data v2, :array_d0c

    const-string v3, "GL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 570
    fill-array-data v2, :array_d18

    const-string v3, "GM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 571
    fill-array-data v2, :array_d24

    const-string v3, "GN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 572
    fill-array-data v2, :array_d30

    const-string v3, "GP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 573
    fill-array-data v2, :array_d3c

    const-string v3, "GQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 574
    fill-array-data v2, :array_d48

    const-string v3, "GR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 575
    fill-array-data v2, :array_d54

    const-string v3, "GT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 576
    fill-array-data v2, :array_d60

    const-string v3, "GU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 577
    fill-array-data v2, :array_d6c

    const-string v3, "GW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 578
    fill-array-data v2, :array_d78

    const-string v3, "GY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 579
    fill-array-data v2, :array_d84

    const-string v3, "HK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 580
    fill-array-data v2, :array_d90

    const-string v3, "HN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 581
    fill-array-data v2, :array_d9c

    const-string v3, "HR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 582
    fill-array-data v2, :array_da8

    const-string v3, "HT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 583
    fill-array-data v2, :array_db4

    const-string v3, "HU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 584
    fill-array-data v2, :array_dc0

    const-string v3, "ID"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 585
    fill-array-data v2, :array_dcc

    const-string v3, "IE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 586
    fill-array-data v2, :array_dd8

    const-string v3, "IL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 587
    fill-array-data v2, :array_de4

    const-string v3, "IM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 588
    fill-array-data v2, :array_df0

    const-string v3, "IN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 589
    fill-array-data v2, :array_dfc

    const-string v3, "IO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 590
    fill-array-data v2, :array_e08

    const-string v3, "IQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 591
    fill-array-data v2, :array_e14

    const-string v3, "IR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 592
    fill-array-data v2, :array_e20

    const-string v3, "IS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 593
    fill-array-data v2, :array_e2c

    const-string v3, "IT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 594
    fill-array-data v2, :array_e38

    const-string v3, "JE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 595
    fill-array-data v2, :array_e44

    const-string v3, "JM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 596
    fill-array-data v2, :array_e50

    const-string v3, "JO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 597
    fill-array-data v2, :array_e5c

    const-string v3, "JP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 598
    fill-array-data v2, :array_e68

    const-string v3, "KE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 599
    fill-array-data v2, :array_e74

    const-string v3, "KG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 600
    fill-array-data v2, :array_e80

    const-string v3, "KH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 601
    fill-array-data v2, :array_e8c

    const-string v3, "KI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 602
    fill-array-data v2, :array_e98

    const-string v3, "KM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 603
    fill-array-data v2, :array_ea4

    const-string v3, "KN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 604
    fill-array-data v2, :array_eb0

    const-string v3, "KP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 605
    fill-array-data v2, :array_ebc

    const-string v3, "KR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 606
    fill-array-data v2, :array_ec8

    const-string v3, "KW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 607
    fill-array-data v2, :array_ed4

    const-string v3, "KY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 608
    fill-array-data v2, :array_ee0

    const-string v3, "KZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 609
    fill-array-data v2, :array_eec

    const-string v3, "LA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 610
    fill-array-data v2, :array_ef8

    const-string v3, "LB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 611
    fill-array-data v2, :array_f04

    const-string v3, "LC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 612
    fill-array-data v2, :array_f10

    const-string v3, "LI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 613
    fill-array-data v2, :array_f1c

    const-string v3, "LK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 614
    fill-array-data v2, :array_f28

    const-string v3, "LR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 615
    fill-array-data v2, :array_f34

    const-string v3, "LS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 616
    fill-array-data v2, :array_f40

    const-string v3, "LT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 617
    fill-array-data v2, :array_f4c

    const-string v3, "LU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 618
    fill-array-data v2, :array_f58

    const-string v3, "LV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 619
    fill-array-data v2, :array_f64

    const-string v3, "LY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 620
    fill-array-data v2, :array_f70

    const-string v3, "MA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 621
    fill-array-data v2, :array_f7c

    const-string v3, "MC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 622
    fill-array-data v2, :array_f88

    const-string v3, "MD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 623
    fill-array-data v2, :array_f94

    const-string v3, "ME"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 624
    fill-array-data v2, :array_fa0

    const-string v3, "MF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 625
    fill-array-data v2, :array_fac

    const-string v3, "MG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 626
    fill-array-data v2, :array_fb8

    const-string v3, "MH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 627
    fill-array-data v2, :array_fc4

    const-string v3, "MK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 628
    fill-array-data v2, :array_fd0

    const-string v3, "ML"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 629
    fill-array-data v2, :array_fdc

    const-string v3, "MM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 630
    fill-array-data v2, :array_fe8

    const-string v3, "MN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 631
    fill-array-data v2, :array_ff4

    const-string v3, "MO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 632
    fill-array-data v2, :array_1000

    const-string v3, "MP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 633
    fill-array-data v2, :array_100c

    const-string v3, "MQ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 634
    fill-array-data v2, :array_1018

    const-string v3, "MR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 635
    fill-array-data v2, :array_1024

    const-string v3, "MS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 636
    fill-array-data v2, :array_1030

    const-string v3, "MT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 637
    fill-array-data v2, :array_103c

    const-string v3, "MU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 638
    fill-array-data v2, :array_1048

    const-string v3, "MV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 639
    fill-array-data v2, :array_1054

    const-string v3, "MW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 640
    fill-array-data v2, :array_1060

    const-string v3, "MX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 641
    fill-array-data v2, :array_106c

    const-string v3, "MY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 642
    fill-array-data v2, :array_1078

    const-string v3, "MZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 643
    fill-array-data v2, :array_1084

    const-string v3, "NA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 644
    fill-array-data v2, :array_1090

    const-string v3, "NC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 645
    fill-array-data v2, :array_109c

    const-string v3, "NE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 646
    fill-array-data v2, :array_10a8

    const-string v3, "NF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 647
    fill-array-data v2, :array_10b4

    const-string v3, "NG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 648
    fill-array-data v2, :array_10c0

    const-string v3, "NI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 649
    fill-array-data v2, :array_10cc

    const-string v3, "NL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 650
    fill-array-data v2, :array_10d8

    const-string v3, "NO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 651
    fill-array-data v2, :array_10e4

    const-string v3, "NP"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 652
    fill-array-data v2, :array_10f0

    const-string v3, "NR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 653
    fill-array-data v2, :array_10fc

    const-string v3, "NZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 654
    fill-array-data v2, :array_1108

    const-string v3, "OM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 655
    fill-array-data v2, :array_1114

    const-string v3, "PA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 656
    fill-array-data v2, :array_1120

    const-string v3, "PE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 657
    fill-array-data v2, :array_112c

    const-string v3, "PF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 658
    fill-array-data v2, :array_1138

    const-string v3, "PG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 659
    fill-array-data v2, :array_1144

    const-string v3, "PH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 660
    fill-array-data v2, :array_1150

    const-string v3, "PK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 661
    fill-array-data v2, :array_115c

    const-string v3, "PL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 662
    fill-array-data v2, :array_1168

    const-string v3, "PM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 663
    fill-array-data v2, :array_1174

    const-string v3, "PR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 664
    fill-array-data v2, :array_1180

    const-string v3, "PS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 665
    fill-array-data v2, :array_118c

    const-string v3, "PT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 666
    fill-array-data v2, :array_1198

    const-string v3, "PW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 667
    fill-array-data v2, :array_11a4

    const-string v3, "PY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 668
    fill-array-data v2, :array_11b0

    const-string v3, "QA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 669
    fill-array-data v2, :array_11bc

    const-string v3, "RE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 670
    fill-array-data v2, :array_11c8

    const-string v3, "RO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 671
    fill-array-data v2, :array_11d4

    const-string v3, "RS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 672
    fill-array-data v2, :array_11e0

    const-string v3, "RU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 673
    fill-array-data v2, :array_11ec

    const-string v3, "RW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 674
    fill-array-data v2, :array_11f8

    const-string v3, "SA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 675
    fill-array-data v2, :array_1204

    const-string v3, "SB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 676
    fill-array-data v2, :array_1210

    const-string v3, "SC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 677
    fill-array-data v2, :array_121c

    const-string v3, "SD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 678
    fill-array-data v2, :array_1228

    const-string v3, "SE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 679
    fill-array-data v2, :array_1234

    const-string v3, "SG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 680
    fill-array-data v2, :array_1240

    const-string v3, "SH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 681
    fill-array-data v2, :array_124c

    const-string v3, "SI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 682
    fill-array-data v2, :array_1258

    const-string v3, "SJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 683
    fill-array-data v2, :array_1264

    const-string v3, "SK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 684
    fill-array-data v2, :array_1270

    const-string v3, "SL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 685
    fill-array-data v2, :array_127c

    const-string v3, "SM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 686
    fill-array-data v2, :array_1288

    const-string v3, "SN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 687
    fill-array-data v2, :array_1294

    const-string v3, "SO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 688
    fill-array-data v2, :array_12a0

    const-string v3, "SR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 689
    fill-array-data v2, :array_12ac

    const-string v3, "SS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 690
    fill-array-data v2, :array_12b8

    const-string v3, "ST"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 691
    fill-array-data v2, :array_12c4

    const-string v3, "SV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 692
    fill-array-data v2, :array_12d0

    const-string v3, "SX"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 693
    fill-array-data v2, :array_12dc

    const-string v3, "SY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 694
    fill-array-data v2, :array_12e8

    const-string v3, "SZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 695
    fill-array-data v2, :array_12f4

    const-string v3, "TC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 696
    fill-array-data v2, :array_1300

    const-string v3, "TD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 697
    fill-array-data v2, :array_130c

    const-string v3, "TG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 698
    fill-array-data v2, :array_1318

    const-string v3, "TH"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 699
    fill-array-data v2, :array_1324

    const-string v3, "TJ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 700
    fill-array-data v2, :array_1330

    const-string v3, "TL"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 701
    fill-array-data v2, :array_133c

    const-string v3, "TM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 702
    fill-array-data v2, :array_1348

    const-string v3, "TN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 703
    fill-array-data v2, :array_1354

    const-string v3, "TO"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 704
    fill-array-data v2, :array_1360

    const-string v3, "TR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 705
    fill-array-data v2, :array_136c

    const-string v3, "TT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 706
    fill-array-data v2, :array_1378

    const-string v3, "TV"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 707
    fill-array-data v2, :array_1384

    const-string v3, "TW"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 708
    fill-array-data v2, :array_1390

    const-string v3, "TZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 709
    fill-array-data v2, :array_139c

    const-string v3, "UA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 710
    fill-array-data v2, :array_13a8

    const-string v3, "UG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 711
    fill-array-data v2, :array_13b4

    const-string v3, "US"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 712
    fill-array-data v2, :array_13c0

    const-string v3, "UY"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 713
    fill-array-data v2, :array_13cc

    const-string v3, "UZ"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 714
    fill-array-data v2, :array_13d8

    const-string v3, "VA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 715
    fill-array-data v2, :array_13e4

    const-string v3, "VC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 716
    fill-array-data v2, :array_13f0

    const-string v3, "VE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 717
    fill-array-data v2, :array_13fc

    const-string v3, "VG"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 718
    fill-array-data v2, :array_1408

    const-string v3, "VI"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 719
    fill-array-data v2, :array_1414

    const-string v3, "VN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 720
    fill-array-data v2, :array_1420

    const-string v3, "VU"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 721
    fill-array-data v2, :array_142c

    const-string v3, "WS"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 722
    fill-array-data v2, :array_1438

    const-string v3, "XK"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 723
    fill-array-data v2, :array_1444

    const-string v3, "YE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 724
    fill-array-data v2, :array_1450

    const-string v3, "YT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 725
    fill-array-data v2, :array_145c

    const-string v3, "ZA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [I

    .line 726
    fill-array-data v2, :array_1468

    const-string v3, "ZM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [I

    .line 727
    fill-array-data v1, :array_1474

    const-string v2, "ZW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    :array_958
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_964
    .array-data 4
        0x1
        0x4
        0x4
        0x4
    .end array-data

    :array_970
    .array-data 4
        0x4
        0x4
        0x3
        0x3
    .end array-data

    :array_97c
    .array-data 4
        0x3
        0x1
        0x0
        0x1
    .end array-data

    :array_988
    .array-data 4
        0x1
        0x0
        0x0
        0x3
    .end array-data

    :array_994
    .array-data 4
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_9a0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_9ac
    .array-data 4
        0x3
        0x4
        0x2
        0x0
    .end array-data

    :array_9b8
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_9c4
    .array-data 4
        0x3
        0x0
        0x4
        0x2
    .end array-data

    :array_9d0
    .array-data 4
        0x0
        0x3
        0x0
        0x0
    .end array-data

    :array_9dc
    .array-data 4
        0x0
        0x3
        0x0
        0x1
    .end array-data

    :array_9e8
    .array-data 4
        0x1
        0x1
        0x0
        0x3
    .end array-data

    :array_9f4
    .array-data 4
        0x0
        0x3
        0x0
        0x2
    .end array-data

    :array_a00
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_a0c
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_a18
    .array-data 4
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_a24
    .array-data 4
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_a30
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_a3c
    .array-data 4
        0x4
        0x4
        0x4
        0x1
    .end array-data

    :array_a48
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_a54
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data

    :array_a60
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_a6c
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_a78
    .array-data 4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_a84
    .array-data 4
        0x1
        0x2
        0x0
        0x0
    .end array-data

    :array_a90
    .array-data 4
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_a9c
    .array-data 4
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_aa8
    .array-data 4
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_ab4
    .array-data 4
        0x2
        0x3
        0x3
        0x2
    .end array-data

    :array_ac0
    .array-data 4
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_acc
    .array-data 4
        0x3
        0x0
        0x3
        0x1
    .end array-data

    :array_ad8
    .array-data 4
        0x4
        0x4
        0x1
        0x2
    .end array-data

    :array_ae4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_af0
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_afc
    .array-data 4
        0x0
        0x3
        0x1
        0x3
    .end array-data

    :array_b08
    .array-data 4
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_b14
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_b20
    .array-data 4
        0x3
        0x4
        0x2
        0x4
    .end array-data

    :array_b2c
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_b38
    .array-data 4
        0x3
        0x4
        0x3
        0x3
    .end array-data

    :array_b44
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_b50
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_b5c
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_b68
    .array-data 4
        0x2
        0x0
        0x2
        0x3
    .end array-data

    :array_b74
    .array-data 4
        0x2
        0x3
        0x2
        0x2
    .end array-data

    :array_b80
    .array-data 4
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_b8c
    .array-data 4
        0x4
        0x4
        0x3
        0x1
    .end array-data

    :array_b98
    .array-data 4
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_ba4
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_bb0
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_bbc
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_bc8
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data

    :array_bd4
    .array-data 4
        0x4
        0x3
        0x4
        0x1
    .end array-data

    :array_be0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_bec
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_bf8
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_c04
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_c10
    .array-data 4
        0x2
        0x3
        0x4
        0x3
    .end array-data

    :array_c1c
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_c28
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_c34
    .array-data 4
        0x2
        0x0
        0x3
        0x3
    .end array-data

    :array_c40
    .array-data 4
        0x4
        0x2
        0x2
        0x0
    .end array-data

    :array_c4c
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_c58
    .array-data 4
        0x4
        0x4
        0x4
        0x0
    .end array-data

    :array_c64
    .array-data 4
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_c70
    .array-data 4
        0x3
        0x0
        0x3
        0x3
    .end array-data

    :array_c7c
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_c88
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_c94
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_ca0
    .array-data 4
        0x1
        0x0
        0x3
        0x1
    .end array-data

    :array_cac
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_cb8
    .array-data 4
        0x0
        0x1
        0x3
        0x3
    .end array-data

    :array_cc4
    .array-data 4
        0x2
        0x0
        0x4
        0x4
    .end array-data

    :array_cd0
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_cdc
    .array-data 4
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_ce8
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_cf4
    .array-data 4
        0x3
        0x3
        0x2
        0x2
    .end array-data

    :array_d00
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_d0c
    .array-data 4
        0x2
        0x2
        0x0
        0x2
    .end array-data

    :array_d18
    .array-data 4
        0x4
        0x4
        0x3
        0x4
    .end array-data

    :array_d24
    .array-data 4
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_d30
    .array-data 4
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_d3c
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_d48
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_d54
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_d60
    .array-data 4
        0x1
        0x2
        0x4
        0x4
    .end array-data

    :array_d6c
    .array-data 4
        0x4
        0x4
        0x4
        0x1
    .end array-data

    :array_d78
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_d84
    .array-data 4
        0x0
        0x2
        0x3
        0x4
    .end array-data

    :array_d90
    .array-data 4
        0x3
        0x2
        0x3
        0x2
    .end array-data

    :array_d9c
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_da8
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_db4
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_dc0
    .array-data 4
        0x3
        0x2
        0x3
        0x4
    .end array-data

    :array_dcc
    .array-data 4
        0x1
        0x0
        0x1
        0x1
    .end array-data

    :array_dd8
    .array-data 4
        0x0
        0x0
        0x2
        0x3
    .end array-data

    :array_de4
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_df0
    .array-data 4
        0x2
        0x2
        0x4
        0x4
    .end array-data

    :array_dfc
    .array-data 4
        0x4
        0x2
        0x2
        0x2
    .end array-data

    :array_e08
    .array-data 4
        0x3
        0x3
        0x4
        0x2
    .end array-data

    :array_e14
    .array-data 4
        0x3
        0x0
        0x2
        0x2
    .end array-data

    :array_e20
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_e2c
    .array-data 4
        0x1
        0x0
        0x1
        0x2
    .end array-data

    :array_e38
    .array-data 4
        0x1
        0x0
        0x0
        0x1
    .end array-data

    :array_e44
    .array-data 4
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_e50
    .array-data 4
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_e5c
    .array-data 4
        0x0
        0x2
        0x1
        0x1
    .end array-data

    :array_e68
    .array-data 4
        0x3
        0x4
        0x4
        0x3
    .end array-data

    :array_e74
    .array-data 4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_e80
    .array-data 4
        0x1
        0x0
        0x4
        0x4
    .end array-data

    :array_e8c
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_e98
    .array-data 4
        0x4
        0x3
        0x2
        0x3
    .end array-data

    :array_ea4
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_eb0
    .array-data 4
        0x4
        0x2
        0x4
        0x2
    .end array-data

    :array_ebc
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_ec8
    .array-data 4
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_ed4
    .array-data 4
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_ee0
    .array-data 4
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_eec
    .array-data 4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_ef8
    .array-data 4
        0x3
        0x2
        0x0
        0x0
    .end array-data

    :array_f04
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_f10
    .array-data 4
        0x0
        0x0
        0x2
        0x4
    .end array-data

    :array_f1c
    .array-data 4
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_f28
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_f34
    .array-data 4
        0x3
        0x3
        0x2
        0x0
    .end array-data

    :array_f40
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f4c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f58
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f64
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_f70
    .array-data 4
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_f7c
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_f88
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_f94
    .array-data 4
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_fa0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_fac
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_fb8
    .array-data 4
        0x4
        0x0
        0x2
        0x4
    .end array-data

    :array_fc4
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_fd0
    .array-data 4
        0x4
        0x4
        0x2
        0x0
    .end array-data

    :array_fdc
    .array-data 4
        0x3
        0x3
        0x1
        0x2
    .end array-data

    :array_fe8
    .array-data 4
        0x2
        0x3
        0x2
        0x3
    .end array-data

    :array_ff4
    .array-data 4
        0x0
        0x0
        0x4
        0x4
    .end array-data

    :array_1000
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_100c
    .array-data 4
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_1018
    .array-data 4
        0x4
        0x2
        0x4
        0x2
    .end array-data

    :array_1024
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_1030
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_103c
    .array-data 4
        0x2
        0x2
        0x3
        0x4
    .end array-data

    :array_1048
    .array-data 4
        0x4
        0x3
        0x0
        0x2
    .end array-data

    :array_1054
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_1060
    .array-data 4
        0x2
        0x4
        0x4
        0x3
    .end array-data

    :array_106c
    .array-data 4
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1078
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_1084
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_1090
    .array-data 4
        0x2
        0x0
        0x3
        0x3
    .end array-data

    :array_109c
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_10a8
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_10b4
    .array-data 4
        0x3
        0x4
        0x3
        0x1
    .end array-data

    :array_10c0
    .array-data 4
        0x3
        0x3
        0x4
        0x4
    .end array-data

    :array_10cc
    .array-data 4
        0x0
        0x2
        0x3
        0x3
    .end array-data

    :array_10d8
    .array-data 4
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_10e4
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_10f0
    .array-data 4
        0x4
        0x0
        0x3
        0x1
    .end array-data

    :array_10fc
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_1108
    .array-data 4
        0x3
        0x2
        0x1
        0x3
    .end array-data

    :array_1114
    .array-data 4
        0x1
        0x3
        0x3
        0x4
    .end array-data

    :array_1120
    .array-data 4
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_112c
    .array-data 4
        0x2
        0x2
        0x0
        0x1
    .end array-data

    :array_1138
    .array-data 4
        0x4
        0x3
        0x3
        0x1
    .end array-data

    :array_1144
    .array-data 4
        0x3
        0x0
        0x3
        0x4
    .end array-data

    :array_1150
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_115c
    .array-data 4
        0x1
        0x0
        0x1
        0x3
    .end array-data

    :array_1168
    .array-data 4
        0x0
        0x2
        0x2
        0x0
    .end array-data

    :array_1174
    .array-data 4
        0x1
        0x2
        0x3
        0x3
    .end array-data

    :array_1180
    .array-data 4
        0x3
        0x3
        0x2
        0x4
    .end array-data

    :array_118c
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_1198
    .array-data 4
        0x2
        0x1
        0x2
        0x0
    .end array-data

    :array_11a4
    .array-data 4
        0x2
        0x0
        0x2
        0x3
    .end array-data

    :array_11b0
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_11bc
    .array-data 4
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_11c8
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_11d4
    .array-data 4
        0x1
        0x2
        0x0
        0x0
    .end array-data

    :array_11e0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
    .end array-data

    :array_11ec
    .array-data 4
        0x4
        0x4
        0x2
        0x4
    .end array-data

    :array_11f8
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_1204
    .array-data 4
        0x4
        0x4
        0x3
        0x0
    .end array-data

    :array_1210
    .array-data 4
        0x4
        0x2
        0x0
        0x1
    .end array-data

    :array_121c
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_1228
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_1234
    .array-data 4
        0x0
        0x2
        0x3
        0x3
    .end array-data

    :array_1240
    .array-data 4
        0x4
        0x4
        0x2
        0x3
    .end array-data

    :array_124c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1258
    .array-data 4
        0x2
        0x0
        0x2
        0x4
    .end array-data

    :array_1264
    .array-data 4
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_1270
    .array-data 4
        0x4
        0x3
        0x3
        0x3
    .end array-data

    :array_127c
    .array-data 4
        0x0
        0x0
        0x2
        0x4
    .end array-data

    :array_1288
    .array-data 4
        0x3
        0x4
        0x4
        0x2
    .end array-data

    :array_1294
    .array-data 4
        0x3
        0x4
        0x4
        0x3
    .end array-data

    :array_12a0
    .array-data 4
        0x2
        0x2
        0x1
        0x0
    .end array-data

    :array_12ac
    .array-data 4
        0x4
        0x3
        0x4
        0x3
    .end array-data

    :array_12b8
    .array-data 4
        0x3
        0x4
        0x2
        0x2
    .end array-data

    :array_12c4
    .array-data 4
        0x2
        0x3
        0x3
        0x4
    .end array-data

    :array_12d0
    .array-data 4
        0x2
        0x4
        0x1
        0x0
    .end array-data

    :array_12dc
    .array-data 4
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_12e8
    .array-data 4
        0x4
        0x4
        0x3
        0x4
    .end array-data

    :array_12f4
    .array-data 4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_1300
    .array-data 4
        0x4
        0x4
        0x4
        0x2
    .end array-data

    :array_130c
    .array-data 4
        0x3
        0x3
        0x1
        0x0
    .end array-data

    :array_1318
    .array-data 4
        0x1
        0x3
        0x4
        0x4
    .end array-data

    :array_1324
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1330
    .array-data 4
        0x4
        0x2
        0x4
        0x4
    .end array-data

    :array_133c
    .array-data 4
        0x4
        0x1
        0x2
        0x2
    .end array-data

    :array_1348
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1354
    .array-data 4
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_1360
    .array-data 4
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_136c
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_1378
    .array-data 4
        0x4
        0x2
        0x2
        0x4
    .end array-data

    :array_1384
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1390
    .array-data 4
        0x3
        0x3
        0x4
        0x3
    .end array-data

    :array_139c
    .array-data 4
        0x0
        0x2
        0x1
        0x2
    .end array-data

    :array_13a8
    .array-data 4
        0x4
        0x3
        0x3
        0x2
    .end array-data

    :array_13b4
    .array-data 4
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_13c0
    .array-data 4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_13cc
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_13d8
    .array-data 4
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_13e4
    .array-data 4
        0x2
        0x0
        0x2
        0x4
    .end array-data

    :array_13f0
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_13fc
    .array-data 4
        0x3
        0x0
        0x1
        0x3
    .end array-data

    :array_1408
    .array-data 4
        0x1
        0x1
        0x4
        0x4
    .end array-data

    :array_1414
    .array-data 4
        0x0
        0x2
        0x4
        0x4
    .end array-data

    :array_1420
    .array-data 4
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_142c
    .array-data 4
        0x3
        0x3
        0x3
        0x2
    .end array-data

    :array_1438
    .array-data 4
        0x1
        0x2
        0x1
        0x0
    .end array-data

    :array_1444
    .array-data 4
        0x4
        0x4
        0x4
        0x3
    .end array-data

    :array_1450
    .array-data 4
        0x2
        0x2
        0x2
        0x3
    .end array-data

    :array_145c
    .array-data 4
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :array_1468
    .array-data 4
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_1474
    .array-data 4
        0x3
        0x3
        0x2
        0x1
    .end array-data
.end method

.method private getInitialBitrateEstimateForNetworkType(I)J
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_13

    .line 416
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->initialBitrateEstimates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_13
    if-nez p1, :cond_1c

    const-wide/32 v0, 0xf4240

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 421
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    monitor-enter v0

    .line 226
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_12

    .line 227
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p0

    sput-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 229
    :cond_12
    sget-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->singletonInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$maybeNotifyBandwidthSample$0(IJJLcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .registers 12

    move-object v0, p5

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 410
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .registers 14

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    .line 405
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_f

    return-void

    .line 408
    :cond_f
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->lastReportedBitrateEstimate:J

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->eventDispatcher:Lcom/google/android/exoplayer2/util/EventDispatcher;

    new-instance v7, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$5fiwNBHdIyEsfLPs7kZdGg5uwiw;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$5fiwNBHdIyEsfLPs7kZdGg5uwiw;-><init>(IJJ)V

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/EventDispatcher;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    return-void
.end method

.method private declared-synchronized onConnectivityAction()V
    .registers 11

    monitor-enter p0

    .line 373
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverrideSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkTypeOverride:I

    goto :goto_15

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->context:Landroid/content/Context;

    .line 376
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 377
    :goto_15
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_5a

    if-ne v2, v0, :cond_1b

    .line 378
    monitor-exit p0

    return-void

    .line 381
    :cond_1b
    :try_start_1b
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->networkType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    if-eqz v0, :cond_58

    const/16 v2, 0x8

    if-ne v0, v2, :cond_27

    goto :goto_58

    .line 390
    :cond_27
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 392
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_3e

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v0, v2, v0

    long-to-int v1, v0

    move v5, v1

    goto :goto_3f

    :cond_3e
    const/4 v5, 0x0

    .line 393
    :goto_3f
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 396
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 397
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 398
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    .line 399
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->reset()V
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_5a

    .line 401
    monitor-exit p0

    return-void

    .line 386
    :cond_58
    :goto_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getBitrateEstimate()J
    .registers 3

    monitor-enter p0

    .line 303
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;
    .registers 1

    return-object p0
.end method

.method public declared-synchronized onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ZI)V
    .registers 5

    monitor-enter p0

    if-nez p3, :cond_5

    .line 343
    monitor-exit p0

    return-void

    .line 345
    :cond_5
    :try_start_5
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    .line 346
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 14

    monitor-enter p0

    if-nez p3, :cond_5

    .line 351
    monitor-exit p0

    return-void

    .line 353
    :cond_5
    :try_start_5
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 p2, 0x1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 354
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 355
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v2, v0, v2

    long-to-int v5, v2

    .line 356
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    .line 357
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v5, :cond_6a

    .line 359
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-float p1, v2

    const/high16 p3, 0x45fa0000    # 8000.0f

    mul-float p1, p1, p3

    int-to-float p3, v5

    div-float/2addr p1, p3

    .line 360
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p3, v2, p1}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->addSample(IF)V

    .line 361
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v2, v6

    if-gez p1, :cond_51

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5c

    .line 363
    :cond_51
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lcom/google/android/exoplayer2/util/SlidingPercentile;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/util/SlidingPercentile;->getPercentile(F)F

    move-result p1

    float-to-long v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    .line 365
    :cond_5c
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(IJJ)V

    .line 366
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    .line 367
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    .line 369
    :cond_6a
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_71

    .line 370
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    return-void
.end method

.method public declared-synchronized onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 4

    monitor-enter p0

    if-nez p3, :cond_5

    .line 331
    monitor-exit p0

    return-void

    .line 333
    :cond_5
    :try_start_5
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez p1, :cond_11

    .line 334
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    .line 336
    :cond_11
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    .line 337
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
