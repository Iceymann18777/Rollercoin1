.class public final enum Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/splash/SplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaxAdDisplayTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum FOR_EVER:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum LONG:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

.field public static final enum SHORT:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;


# instance fields
.field private index:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 50
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1388

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "LONG"

    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->LONG:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    const-string v1, "FOR_EVER"

    const/4 v4, 0x2

    const-wide/32 v5, 0x5265c00

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    .line 49
    sget-object v5, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->LONG:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->$VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-wide p3, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->index:J

    return-void
.end method

.method public static getByIndex(J)Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .registers 8

    .line 63
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->SHORT:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    .line 64
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    const/4 v2, 0x0

    .line 65
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_19

    .line 66
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->getIndex()J

    move-result-wide v3

    cmp-long v5, v3, p0

    if-nez v5, :cond_16

    .line 67
    aget-object v0, v1, v2

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .registers 6

    .line 74
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    .line 75
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 77
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 78
    aget-object v0, v1, v2

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .registers 2

    .line 49
    const-class v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .registers 1

    .line 49
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->$VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method


# virtual methods
.method public getIndex()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->index:J

    return-wide v0
.end method
