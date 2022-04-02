.class public final enum Lcom/startapp/android/publish/adsCommon/g/a/d;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/g/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field public static final enum b:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field public static final enum c:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field public static final enum d:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field public static final enum e:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field private static final synthetic f:[Lcom/startapp/android/publish/adsCommon/g/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4
    new-instance v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->a:Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 5
    new-instance v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/publish/adsCommon/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->b:Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 6
    new-instance v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    const-string v1, "EXPANDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/publish/adsCommon/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->c:Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 7
    new-instance v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    const-string v1, "RESIZED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/startapp/android/publish/adsCommon/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->d:Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 8
    new-instance v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    const-string v1, "HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/adsCommon/g/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->e:Lcom/startapp/android/publish/adsCommon/g/a/d;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 3
    sget-object v7, Lcom/startapp/android/publish/adsCommon/g/a/d;->a:Lcom/startapp/android/publish/adsCommon/g/a/d;

    aput-object v7, v1, v2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/g/a/d;->b:Lcom/startapp/android/publish/adsCommon/g/a/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/android/publish/adsCommon/g/a/d;->c:Lcom/startapp/android/publish/adsCommon/g/a/d;

    aput-object v2, v1, v4

    sget-object v2, Lcom/startapp/android/publish/adsCommon/g/a/d;->d:Lcom/startapp/android/publish/adsCommon/g/a/d;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/startapp/android/publish/adsCommon/g/a/d;->f:[Lcom/startapp/android/publish/adsCommon/g/a/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/g/a/d;
    .registers 2

    .line 3
    const-class v0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/g/a/d;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/g/a/d;
    .registers 1

    .line 3
    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->f:[Lcom/startapp/android/publish/adsCommon/g/a/d;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/g/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/g/a/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/g/a/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
