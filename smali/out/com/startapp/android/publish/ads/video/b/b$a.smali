.class public final enum Lcom/startapp/android/publish/ads/video/b/b$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/b/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/video/b/b$a;

.field public static final enum b:Lcom/startapp/android/publish/ads/video/b/b$a;

.field public static final enum c:Lcom/startapp/android/publish/ads/video/b/b$a;

.field public static final enum d:Lcom/startapp/android/publish/ads/video/b/b$a;

.field private static final synthetic e:[Lcom/startapp/android/publish/ads/video/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b$a;

    const-string v1, "MEDIA_ERROR_IO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/b$a;->a:Lcom/startapp/android/publish/ads/video/b/b$a;

    .line 38
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b$a;

    const-string v1, "MEDIA_ERROR_MALFORMED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/b$a;->b:Lcom/startapp/android/publish/ads/video/b/b$a;

    .line 39
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b$a;

    const-string v1, "MEDIA_ERROR_UNSUPPORTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/ads/video/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/b$a;->c:Lcom/startapp/android/publish/ads/video/b/b$a;

    .line 40
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/b$a;

    const-string v1, "MEDIA_ERROR_TIMED_OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/ads/video/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/b$a;->d:Lcom/startapp/android/publish/ads/video/b/b$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/b/b$a;

    .line 36
    sget-object v6, Lcom/startapp/android/publish/ads/video/b/b$a;->a:Lcom/startapp/android/publish/ads/video/b/b$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/video/b/b$a;->b:Lcom/startapp/android/publish/ads/video/b/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/ads/video/b/b$a;->c:Lcom/startapp/android/publish/ads/video/b/b$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/startapp/android/publish/ads/video/b/b$a;->e:[Lcom/startapp/android/publish/ads/video/b/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/startapp/android/publish/ads/video/b/b$a;
    .registers 2

    const/16 v0, -0x3f2

    if-eq p0, v0, :cond_1c

    const/16 v0, -0x3ef

    if-eq p0, v0, :cond_19

    const/16 v0, -0x3ec

    if-eq p0, v0, :cond_16

    const/16 v0, -0x6e

    if-eq p0, v0, :cond_13

    .line 53
    sget-object p0, Lcom/startapp/android/publish/ads/video/b/b$a;->a:Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0

    .line 51
    :cond_13
    sget-object p0, Lcom/startapp/android/publish/ads/video/b/b$a;->d:Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0

    .line 45
    :cond_16
    sget-object p0, Lcom/startapp/android/publish/ads/video/b/b$a;->a:Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0

    .line 47
    :cond_19
    sget-object p0, Lcom/startapp/android/publish/ads/video/b/b$a;->b:Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0

    .line 49
    :cond_1c
    sget-object p0, Lcom/startapp/android/publish/ads/video/b/b$a;->c:Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/b/b$a;
    .registers 2

    .line 36
    const-class v0, Lcom/startapp/android/publish/ads/video/b/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/b/b$a;
    .registers 1

    .line 36
    sget-object v0, Lcom/startapp/android/publish/ads/video/b/b$a;->e:[Lcom/startapp/android/publish/ads/video/b/b$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/b/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/b/b$a;

    return-object v0
.end method
