.class public final enum Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PauseOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

.field public static final enum EXTERNAL:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

.field public static final enum INAPP:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 13
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    const-string v1, "INAPP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->INAPP:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    .line 16
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    const-string v1, "EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->EXTERNAL:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    .line 10
    sget-object v4, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->INAPP:Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->$VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;
    .registers 2

    .line 10
    const-class v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;
    .registers 1

    .line 10
    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->$VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/tracking/VideoPausedTrackingParams$PauseOrigin;

    return-object v0
.end method
