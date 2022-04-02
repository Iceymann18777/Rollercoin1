.class public final enum Lcom/tappx/a/a2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/a2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/a2;

.field public static final enum b:Lcom/tappx/a/a2;

.field public static final enum c:Lcom/tappx/a/a2;

.field public static final enum d:Lcom/tappx/a/a2;

.field public static final enum e:Lcom/tappx/a/a2;

.field public static final enum f:Lcom/tappx/a/a2;

.field public static final enum g:Lcom/tappx/a/a2;

.field private static final synthetic h:[Lcom/tappx/a/a2;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "NO_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "SERVER_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->b:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "DEVELOPER_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->c:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "INTERNAL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->e:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "NETWORK_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->f:Lcom/tappx/a/a2;

    new-instance v0, Lcom/tappx/a/a2;

    const-string v1, "UNSPECIFIED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tappx/a/a2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/a2;->g:Lcom/tappx/a/a2;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/tappx/a/a2;

    .line 2
    sget-object v9, Lcom/tappx/a/a2;->a:Lcom/tappx/a/a2;

    aput-object v9, v1, v2

    sget-object v2, Lcom/tappx/a/a2;->b:Lcom/tappx/a/a2;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/a2;->c:Lcom/tappx/a/a2;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tappx/a/a2;->d:Lcom/tappx/a/a2;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tappx/a/a2;->e:Lcom/tappx/a/a2;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tappx/a/a2;->f:Lcom/tappx/a/a2;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/tappx/a/a2;->h:[Lcom/tappx/a/a2;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/a2;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/a2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/a2;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/a2;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/a2;->h:[Lcom/tappx/a/a2;

    invoke-virtual {v0}, [Lcom/tappx/a/a2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/a2;

    return-object v0
.end method
