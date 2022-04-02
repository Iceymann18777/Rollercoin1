.class public final enum Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/BannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

.field public static final enum EXCHANGE:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

.field public static final enum FLY_IN:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

.field public static final enum ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 13
    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    const-string v1, "ROTATE_3D"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    const-string v1, "EXCHANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->EXCHANGE:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    const-string v1, "FLY_IN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->FLY_IN:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    new-array v1, v5, [Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    .line 12
    sget-object v5, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->EXCHANGE:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->$VALUES:[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->index:I

    return-void
.end method

.method public static getByIndex(I)Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .registers 5

    .line 29
    sget-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    .line 30
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->values()[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    const/4 v2, 0x0

    .line 31
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_17

    .line 32
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_14

    .line 33
    aget-object v0, v1, v2

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .registers 6

    .line 40
    sget-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    .line 41
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->values()[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 43
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 44
    aget-object v0, v1, v2

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .registers 2

    .line 12
    const-class v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;
    .registers 1

    .line 12
    sget-object v0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->$VALUES:[Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->index:I

    return v0
.end method

.method public getRotationMultiplier()I
    .registers 5

    .line 25
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->index:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
