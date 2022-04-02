.class public final enum Lcom/tappx/a/p2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/p2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/p2;

.field public static final enum b:Lcom/tappx/a/p2;

.field public static final enum c:Lcom/tappx/a/p2;

.field public static final enum d:Lcom/tappx/a/p2;

.field public static final enum e:Lcom/tappx/a/p2;

.field private static final synthetic f:[Lcom/tappx/a/p2;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/tappx/a/p2;

    const-string v1, "GRANTED_DEVELOPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/p2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p2;->a:Lcom/tappx/a/p2;

    new-instance v0, Lcom/tappx/a/p2;

    const-string v1, "DENIED_DEVELOPER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/p2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p2;->b:Lcom/tappx/a/p2;

    new-instance v0, Lcom/tappx/a/p2;

    const-string v1, "GRANTED_USER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/p2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p2;->c:Lcom/tappx/a/p2;

    new-instance v0, Lcom/tappx/a/p2;

    const-string v1, "DENIED_USER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/a/p2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p2;->d:Lcom/tappx/a/p2;

    new-instance v0, Lcom/tappx/a/p2;

    const-string v1, "MISSING_ANSWER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tappx/a/p2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p2;->e:Lcom/tappx/a/p2;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/tappx/a/p2;

    .line 2
    sget-object v7, Lcom/tappx/a/p2;->a:Lcom/tappx/a/p2;

    aput-object v7, v1, v2

    sget-object v2, Lcom/tappx/a/p2;->b:Lcom/tappx/a/p2;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/a/p2;->c:Lcom/tappx/a/p2;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tappx/a/p2;->d:Lcom/tappx/a/p2;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/tappx/a/p2;->f:[Lcom/tappx/a/p2;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/p2;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/p2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/p2;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/p2;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/p2;->f:[Lcom/tappx/a/p2;

    invoke-virtual {v0}, [Lcom/tappx/a/p2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/p2;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/p2$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .registers 4

    .line 1
    sget-object v0, Lcom/tappx/a/p2$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    return v1
.end method

.method public c()Z
    .registers 4

    .line 1
    sget-object v0, Lcom/tappx/a/p2$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    return v1
.end method
