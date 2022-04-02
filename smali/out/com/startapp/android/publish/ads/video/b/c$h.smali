.class public final enum Lcom/startapp/android/publish/ads/video/b/c$h;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/video/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/video/b/c$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/video/b/c$h;

.field public static final enum b:Lcom/startapp/android/publish/ads/video/b/c$h;

.field public static final enum c:Lcom/startapp/android/publish/ads/video/b/c$h;

.field public static final enum d:Lcom/startapp/android/publish/ads/video/b/c$h;

.field private static final synthetic e:[Lcom/startapp/android/publish/ads/video/b/c$h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 33
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/c$h;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/video/b/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->a:Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 34
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/c$h;

    const-string v1, "SERVER_DIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/video/b/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->b:Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 35
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/c$h;

    const-string v1, "BUFFERING_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/ads/video/b/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->c:Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 36
    new-instance v0, Lcom/startapp/android/publish/ads/video/b/c$h;

    const-string v1, "PLAYER_CREATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/ads/video/b/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->d:Lcom/startapp/android/publish/ads/video/b/c$h;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/android/publish/ads/video/b/c$h;

    .line 32
    sget-object v6, Lcom/startapp/android/publish/ads/video/b/c$h;->a:Lcom/startapp/android/publish/ads/video/b/c$h;

    aput-object v6, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/video/b/c$h;->b:Lcom/startapp/android/publish/ads/video/b/c$h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/ads/video/b/c$h;->c:Lcom/startapp/android/publish/ads/video/b/c$h;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/startapp/android/publish/ads/video/b/c$h;->e:[Lcom/startapp/android/publish/ads/video/b/c$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/b/c$h;
    .registers 2

    .line 32
    const-class v0, Lcom/startapp/android/publish/ads/video/b/c$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/video/b/c$h;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/video/b/c$h;
    .registers 1

    .line 32
    sget-object v0, Lcom/startapp/android/publish/ads/video/b/c$h;->e:[Lcom/startapp/android/publish/ads/video/b/c$h;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/video/b/c$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/video/b/c$h;

    return-object v0
.end method
