.class public final enum Lcom/startapp/android/publish/adsCommon/a/d;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/adsCommon/a/d;

.field public static final enum b:Lcom/startapp/android/publish/adsCommon/a/d;

.field public static final enum c:Lcom/startapp/android/publish/adsCommon/a/d;

.field private static final synthetic d:[Lcom/startapp/android/publish/adsCommon/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 5
    new-instance v0, Lcom/startapp/android/publish/adsCommon/a/d;

    const-string v1, "TAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/a/d;->a:Lcom/startapp/android/publish/adsCommon/a/d;

    .line 6
    new-instance v0, Lcom/startapp/android/publish/adsCommon/a/d;

    const-string v1, "PLACEMENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/a/d;->b:Lcom/startapp/android/publish/adsCommon/a/d;

    .line 7
    new-instance v0, Lcom/startapp/android/publish/adsCommon/a/d;

    const-string v1, "SESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/adsCommon/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/a/d;->c:Lcom/startapp/android/publish/adsCommon/a/d;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/a/d;

    .line 3
    sget-object v5, Lcom/startapp/android/publish/adsCommon/a/d;->a:Lcom/startapp/android/publish/adsCommon/a/d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/a/d;->b:Lcom/startapp/android/publish/adsCommon/a/d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/adsCommon/a/d;->d:[Lcom/startapp/android/publish/adsCommon/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/d;
    .registers 2

    .line 3
    const-class v0, Lcom/startapp/android/publish/adsCommon/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/a/d;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/a/d;
    .registers 1

    .line 3
    sget-object v0, Lcom/startapp/android/publish/adsCommon/a/d;->d:[Lcom/startapp/android/publish/adsCommon/a/d;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/a/d;

    return-object v0
.end method
