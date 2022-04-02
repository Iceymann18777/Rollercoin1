.class public final enum Lcom/tappx/a/v1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/v1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tappx/a/v1;

.field public static final enum c:Lcom/tappx/a/v1;

.field private static final synthetic d:[Lcom/tappx/a/v1;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/v1;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const-string v3, "banner"

    invoke-direct {v0, v1, v2, v3}, Lcom/tappx/a/v1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/v1;->b:Lcom/tappx/a/v1;

    new-instance v0, Lcom/tappx/a/v1;

    const-string v1, "INTERSTITIAL"

    const/4 v3, 0x1

    const-string v4, "interstitial"

    invoke-direct {v0, v1, v3, v4}, Lcom/tappx/a/v1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tappx/a/v1;->c:Lcom/tappx/a/v1;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tappx/a/v1;

    .line 2
    sget-object v4, Lcom/tappx/a/v1;->b:Lcom/tappx/a/v1;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tappx/a/v1;->d:[Lcom/tappx/a/v1;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/tappx/a/v1;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/v1;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/v1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/v1;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/v1;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/v1;->d:[Lcom/tappx/a/v1;

    invoke-virtual {v0}, [Lcom/tappx/a/v1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/v1;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/v1;->a:Ljava/lang/String;

    return-object v0
.end method
