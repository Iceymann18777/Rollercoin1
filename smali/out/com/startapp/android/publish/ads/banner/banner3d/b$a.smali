.class final enum Lcom/startapp/android/publish/ads/banner/banner3d/b$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/ads/banner/banner3d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

.field public static final enum b:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

.field public static final enum c:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

.field public static final enum d:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

.field public static final enum e:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

.field private static final synthetic f:[Lcom/startapp/android/publish/ads/banner/banner3d/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 47
    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const-string v1, "XS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->a:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const-string v1, "S"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->b:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const-string v1, "M"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->c:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const-string v1, "L"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->d:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const-string v1, "XL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->e:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    sget-object v7, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->a:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->b:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->c:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->d:Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->f:[Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/banner/banner3d/b$a;
    .registers 2

    .line 47
    const-class v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/ads/banner/banner3d/b$a;
    .registers 1

    .line 47
    sget-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->f:[Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/ads/banner/banner3d/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/ads/banner/banner3d/b$a;

    return-object v0
.end method
