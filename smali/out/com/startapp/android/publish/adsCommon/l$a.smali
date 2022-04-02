.class final enum Lcom/startapp/android/publish/adsCommon/l$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/publish/adsCommon/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/android/publish/adsCommon/l$a;

.field public static final enum b:Lcom/startapp/android/publish/adsCommon/l$a;

.field public static final enum c:Lcom/startapp/android/publish/adsCommon/l$a;

.field private static final synthetic d:[Lcom/startapp/android/publish/adsCommon/l$a;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 36
    new-instance v0, Lcom/startapp/android/publish/adsCommon/l$a;

    const-string v1, "T1"

    const/4 v2, 0x0

    const-string v3, "token"

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/adsCommon/l$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    .line 37
    new-instance v0, Lcom/startapp/android/publish/adsCommon/l$a;

    const-string v1, "T2"

    const/4 v3, 0x1

    const-string v4, "token2"

    invoke-direct {v0, v1, v3, v4}, Lcom/startapp/android/publish/adsCommon/l$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->b:Lcom/startapp/android/publish/adsCommon/l$a;

    .line 38
    new-instance v0, Lcom/startapp/android/publish/adsCommon/l$a;

    const-string v1, "UNDEFINED"

    const/4 v4, 0x2

    const-string v5, ""

    invoke-direct {v0, v1, v4, v5}, Lcom/startapp/android/publish/adsCommon/l$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->c:Lcom/startapp/android/publish/adsCommon/l$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/publish/adsCommon/l$a;

    .line 35
    sget-object v5, Lcom/startapp/android/publish/adsCommon/l$a;->a:Lcom/startapp/android/publish/adsCommon/l$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/l$a;->b:Lcom/startapp/android/publish/adsCommon/l$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/publish/adsCommon/l$a;->d:[Lcom/startapp/android/publish/adsCommon/l$a;

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
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/l$a;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/l$a;
    .registers 2

    .line 35
    const-class v0, Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/publish/adsCommon/l$a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/publish/adsCommon/l$a;
    .registers 1

    .line 35
    sget-object v0, Lcom/startapp/android/publish/adsCommon/l$a;->d:[Lcom/startapp/android/publish/adsCommon/l$a;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/adsCommon/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/adsCommon/l$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/l$a;->text:Ljava/lang/String;

    return-object v0
.end method
