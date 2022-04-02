.class public final enum Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

.field public static final enum POSTROLL:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

.field public static final enum VIDEO:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 10
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    const-string v1, "POSTROLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->POSTROLL:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    .line 13
    new-instance v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->VIDEO:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    .line 7
    sget-object v4, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->POSTROLL:Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->$VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;
    .registers 2

    .line 7
    const-class v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;
    .registers 1

    .line 7
    sget-object v0, Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->$VALUES:[Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/tracking/VideoClickedTrackingParams$ClickOrigin;

    return-object v0
.end method
