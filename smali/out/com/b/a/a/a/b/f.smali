.class public final enum Lcom/b/a/a/a/b/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/a/a/b/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/a/b/f;

.field public static final enum b:Lcom/b/a/a/a/b/f;

.field public static final enum c:Lcom/b/a/a/a/b/f;

.field private static final synthetic d:[Lcom/b/a/a/a/b/f;


# instance fields
.field private final owner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/b/a/a/a/b/f;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/a/a/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    new-instance v0, Lcom/b/a/a/a/b/f;

    const-string v1, "JAVASCRIPT"

    const/4 v3, 0x1

    const-string v4, "javascript"

    invoke-direct {v0, v1, v3, v4}, Lcom/b/a/a/a/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b/f;->b:Lcom/b/a/a/a/b/f;

    new-instance v0, Lcom/b/a/a/a/b/f;

    const-string v1, "NONE"

    const/4 v4, 0x2

    const-string v5, "none"

    invoke-direct {v0, v1, v4, v5}, Lcom/b/a/a/a/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b/f;->c:Lcom/b/a/a/a/b/f;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/b/a/a/a/b/f;

    sget-object v5, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    aput-object v5, v1, v2

    sget-object v2, Lcom/b/a/a/a/b/f;->b:Lcom/b/a/a/a/b/f;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/b/a/a/a/b/f;->d:[Lcom/b/a/a/a/b/f;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/b/a/a/a/b/f;->owner:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/a/b/f;
    .registers 2

    const-class v0, Lcom/b/a/a/a/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/a/b/f;

    return-object p0
.end method

.method public static values()[Lcom/b/a/a/a/b/f;
    .registers 1

    sget-object v0, Lcom/b/a/a/a/b/f;->d:[Lcom/b/a/a/a/b/f;

    invoke-virtual {v0}, [Lcom/b/a/a/a/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/a/b/f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/f;->owner:Ljava/lang/String;

    return-object v0
.end method
