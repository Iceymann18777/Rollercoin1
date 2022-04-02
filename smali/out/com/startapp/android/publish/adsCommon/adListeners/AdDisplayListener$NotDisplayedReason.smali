.class public final enum Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotDisplayedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_CLOSED_TOO_QUICKLY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_EXPIRED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_NOT_READY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_NOT_READY_VIDEO_FALLBACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum AD_RULES:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum APP_IN_BACKGROUND:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum NETWORK_PROBLEM:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum SERVING_ADS_DISABLED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum VIDEO_BACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

.field public static final enum VIDEO_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 15
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "NETWORK_PROBLEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 16
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_RULES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 17
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_NOT_READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 18
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_EXPIRED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 19
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "VIDEO_BACK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 20
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "VIDEO_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 21
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "INTERNAL_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 22
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_NOT_READY_VIDEO_FALLBACK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY_VIDEO_FALLBACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 23
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "APP_IN_BACKGROUND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->APP_IN_BACKGROUND:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 24
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "AD_CLOSED_TOO_QUICKLY"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_CLOSED_TOO_QUICKLY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 25
    new-instance v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const-string v1, "SERVING_ADS_DISABLED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->SERVING_ADS_DISABLED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    .line 14
    sget-object v13, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v13, v1, v2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_EXPIRED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY_VIDEO_FALLBACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->APP_IN_BACKGROUND:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_CLOSED_TOO_QUICKLY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->$VALUES:[Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;
    .registers 2

    .line 14
    const-class v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;
    .registers 1

    .line 14
    sget-object v0, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->$VALUES:[Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    return-object v0
.end method
