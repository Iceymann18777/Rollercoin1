.class Lcom/mopub/network/RequestRateTracker$Helper;
.super Ljava/lang/Object;
.source "RequestRateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/RequestRateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# static fields
.field private static sInstance:Lcom/mopub/network/RequestRateTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/mopub/network/RequestRateTracker;

    invoke-direct {v0}, Lcom/mopub/network/RequestRateTracker;-><init>()V

    sput-object v0, Lcom/mopub/network/RequestRateTracker$Helper;->sInstance:Lcom/mopub/network/RequestRateTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mopub/network/RequestRateTracker;
    .registers 1

    .line 43
    sget-object v0, Lcom/mopub/network/RequestRateTracker$Helper;->sInstance:Lcom/mopub/network/RequestRateTracker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/network/RequestRateTracker;)Lcom/mopub/network/RequestRateTracker;
    .registers 1

    .line 43
    sput-object p0, Lcom/mopub/network/RequestRateTracker$Helper;->sInstance:Lcom/mopub/network/RequestRateTracker;

    return-object p0
.end method
