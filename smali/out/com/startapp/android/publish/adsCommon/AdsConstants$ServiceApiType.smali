.class public final enum Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/AdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceApiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

.field public static final enum DOWNLOAD:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

.field public static final enum METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 335
    new-instance v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    const-string v1, "METADATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    .line 336
    new-instance v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    const-string v1, "DOWNLOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->DOWNLOAD:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    .line 334
    sget-object v4, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->$VALUES:[Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;
    .registers 2

    .line 334
    const-class v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;
    .registers 1

    .line 334
    sget-object v0, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->$VALUES:[Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    return-object v0
.end method
