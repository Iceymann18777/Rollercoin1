.class public final enum Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/common/model/AdPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum DEVICE_SIDEBAR:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_BROWSER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_NATIVE:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field public static final enum INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 45
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_FULL_SCREEN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 46
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_BANNER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 47
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_OFFER_WALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 48
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_SPLASH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 49
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_OVERLAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 50
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_NATIVE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 51
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "DEVICE_SIDEBAR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 52
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_RETURN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 53
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const-string v1, "INAPP_BROWSER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BROWSER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    new-array v1, v11, [Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 44
    sget-object v11, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v11, v1, v2

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v4

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v5

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v6

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v7

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->DEVICE_SIDEBAR:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v8

    sget-object v2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_RETURN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->$VALUES:[Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->index:I

    return-void
.end method

.method public static getByIndex(I)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 5

    .line 72
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 73
    invoke-static {}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->values()[Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v1

    const/4 v2, 0x0

    .line 74
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_17

    .line 75
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_14

    .line 76
    aget-object v0, v1, v2

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 2

    .line 44
    const-class v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 1

    .line 44
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->$VALUES:[Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->index:I

    return v0
.end method

.method public isInterstitial()Z
    .registers 2

    .line 65
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_FULL_SCREEN:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
