.class public final enum Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/splash/SplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

.field public static final enum AUTO:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

.field public static final enum LANDSCAPE:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

.field public static final enum PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 128
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    const-string v1, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->AUTO:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    new-array v1, v5, [Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    .line 127
    sget-object v5, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->$VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->index:I

    return-void
.end method

.method public static getByIndex(I)Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .registers 5

    .line 141
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    .line 142
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_17

    .line 144
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_14

    .line 145
    aget-object v0, v1, v2

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .registers 6

    .line 152
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->AUTO:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    .line 153
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 155
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 156
    aget-object v0, v1, v2

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .registers 2

    .line 127
    const-class v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .registers 1

    .line 127
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->$VALUES:[Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->index:I

    return v0
.end method
