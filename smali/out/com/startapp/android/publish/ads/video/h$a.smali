.class public final enum Lcom/startapp/android/publish/ads/video/h$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/video/h$a;

.field public static final enum b:Lcom/startapp/android/publish/ads/video/h$a;

.field public static final enum c:Lcom/startapp/android/publish/ads/video/h$a;

.field public static final enum d:Lcom/startapp/android/publish/ads/video/h$a;

.field private static final synthetic e:[Lcom/startapp/android/publish/ads/video/h$a;


# instance fields
.field private desctiption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 36
    new-instance v0, Lcom/startapp/android/publish/ads/video/h$a;

    const-string v1, "ELIGIBLE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/ads/video/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/h$a;->a:Lcom/startapp/android/publish/ads/video/h$a;

    .line 37
    new-instance v0, Lcom/startapp/android/publish/ads/video/h$a;

    const-string v1, "INELIGIBLE_NO_STORAGE"

    const/4 v3, 0x1

    const-string v4, "Not enough storage for video"

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/ads/video/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/h$a;->b:Lcom/startapp/android/publish/ads/video/h$a;

    .line 38
    new-instance v0, Lcom/startapp/android/publish/ads/video/h$a;

    const-string v1, "INELIGIBLE_MISSING_ACTIVITY"

    const/4 v4, 0x2

    const-string v5, "FullScreenActivity not declared in AndroidManifest.xml"

    invoke-direct {v0, v1, v4, v5}, Lcom/startapp/android/publish/ads/video/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/h$a;->c:Lcom/startapp/android/publish/ads/video/h$a;

    .line 39
    new-instance v0, Lcom/startapp/android/publish/ads/video/h$a;

    const-string v1, "INELIGIBLE_ERRORS_THRESHOLD_REACHED"

    const/4 v5, 0x3

    const-string v6, "Video errors threshold reached."

    invoke-direct {v0, v1, v5, v6}, Lcom/startapp/android/publish/ads/video/h$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/h$a;->d:Lcom/startapp/android/publish/ads/video/h$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/h$a;

    .line 35
    sget-object v6, Lcom/startapp/android/publish/ads/video/h$a;->a:Lcom/startapp/android/publish/ads/video/h$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/video/h$a;->b:Lcom/startapp/android/publish/ads/video/h$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/ads/video/h$a;->c:Lcom/startapp/android/publish/ads/video/h$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/startapp/android/publish/ads/video/h$a;->e:[Lcom/startapp/android/publish/ads/video/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/startapp/android/publish/ads/video/h$a;->desctiption:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/h$a;
    .registers 2

    .line 35
    const-class v0, Lcom/startapp/android/publish/ads/video/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/h$a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/h$a;
    .registers 1

    .line 35
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->e:[Lcom/startapp/android/publish/ads/video/h$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/h$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/h$a;->desctiption:Ljava/lang/String;

    return-object v0
.end method
