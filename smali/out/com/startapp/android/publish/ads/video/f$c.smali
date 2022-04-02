.class final enum Lcom/startapp/android/publish/ads/video/f$c;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/f$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/video/f$c;

.field public static final enum b:Lcom/startapp/android/publish/ads/video/f$c;

.field public static final enum c:Lcom/startapp/android/publish/ads/video/f$c;

.field private static final synthetic d:[Lcom/startapp/android/publish/ads/video/f$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 87
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$c;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/f$c;->a:Lcom/startapp/android/publish/ads/video/f$c;

    .line 88
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$c;

    const-string v1, "CLICKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/f$c;->b:Lcom/startapp/android/publish/ads/video/f$c;

    .line 89
    new-instance v0, Lcom/startapp/android/publish/ads/video/f$c;

    const-string v1, "SKIPPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/ads/video/f$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/f$c;->c:Lcom/startapp/android/publish/ads/video/f$c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/f$c;

    .line 86
    sget-object v5, Lcom/startapp/android/publish/ads/video/f$c;->a:Lcom/startapp/android/publish/ads/video/f$c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/video/f$c;->b:Lcom/startapp/android/publish/ads/video/f$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/ads/video/f$c;->d:[Lcom/startapp/android/publish/ads/video/f$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/f$c;
    .registers 2

    .line 86
    const-class v0, Lcom/startapp/android/publish/ads/video/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/f$c;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/f$c;
    .registers 1

    .line 86
    sget-object v0, Lcom/startapp/android/publish/ads/video/f$c;->d:[Lcom/startapp/android/publish/ads/video/f$c;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/f$c;

    return-object v0
.end method
