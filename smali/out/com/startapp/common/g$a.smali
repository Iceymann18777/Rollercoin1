.class public final enum Lcom/startapp/common/g$a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/common/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/common/g$a;

.field public static final enum b:Lcom/startapp/common/g$a;

.field private static final synthetic c:[Lcom/startapp/common/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 96
    new-instance v0, Lcom/startapp/common/g$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/common/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    .line 97
    new-instance v0, Lcom/startapp/common/g$a;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/common/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/startapp/common/g$a;

    .line 95
    sget-object v4, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/startapp/common/g$a;->c:[Lcom/startapp/common/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/common/g$a;
    .registers 2

    .line 95
    const-class v0, Lcom/startapp/common/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/common/g$a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/common/g$a;
    .registers 1

    .line 95
    sget-object v0, Lcom/startapp/common/g$a;->c:[Lcom/startapp/common/g$a;

    invoke-virtual {v0}, [Lcom/startapp/common/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/common/g$a;

    return-object v0
.end method
