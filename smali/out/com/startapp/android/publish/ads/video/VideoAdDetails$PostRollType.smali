.class public final enum Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/VideoAdDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostRollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

.field public static final enum IMAGE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

.field public static final enum LAST_FRAME:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

.field public static final enum NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 16
    new-instance v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->IMAGE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    new-instance v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    const-string v1, "LAST_FRAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->LAST_FRAME:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    new-instance v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    .line 15
    sget-object v5, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->IMAGE:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->LAST_FRAME:Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->$VALUES:[Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    .registers 2

    .line 15
    const-class v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;
    .registers 1

    .line 15
    sget-object v0, Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->$VALUES:[Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/VideoAdDetails$PostRollType;

    return-object v0
.end method
