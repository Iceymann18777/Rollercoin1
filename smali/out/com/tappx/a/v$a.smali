.class public final enum Lcom/tappx/a/v$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/v$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/v$a;

.field public static final enum b:Lcom/tappx/a/v$a;

.field public static final enum c:Lcom/tappx/a/v$a;

.field public static final enum d:Lcom/tappx/a/v$a;

.field private static final synthetic e:[Lcom/tappx/a/v$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/tappx/a/v$a;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v$a;->a:Lcom/tappx/a/v$a;

    new-instance v0, Lcom/tappx/a/v$a;

    const-string v1, "DEVELOPER_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v$a;->b:Lcom/tappx/a/v$a;

    new-instance v0, Lcom/tappx/a/v$a;

    const-string v1, "SERVER_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v$a;->c:Lcom/tappx/a/v$a;

    new-instance v0, Lcom/tappx/a/v$a;

    const-string v1, "NO_FILL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/a/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/v$a;->d:Lcom/tappx/a/v$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tappx/a/v$a;

    .line 2
    sget-object v6, Lcom/tappx/a/v$a;->a:Lcom/tappx/a/v$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tappx/a/v$a;->b:Lcom/tappx/a/v$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/v$a;->c:Lcom/tappx/a/v$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tappx/a/v$a;->e:[Lcom/tappx/a/v$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/v$a;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/v$a;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/v$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/v$a;->e:[Lcom/tappx/a/v$a;

    invoke-virtual {v0}, [Lcom/tappx/a/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/v$a;

    return-object v0
.end method