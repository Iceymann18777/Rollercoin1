.class public final enum Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

.field public static final enum b:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

.field private static final synthetic c:[Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 40
    new-instance v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    const-string v1, "LAUNCH_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    new-instance v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    const-string v1, "OPEN_MARKET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    .line 39
    sget-object v4, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->c:[Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;
    .registers 2

    .line 39
    const-class v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;
    .registers 1

    .line 39
    sget-object v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->c:[Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    return-object v0
.end method
