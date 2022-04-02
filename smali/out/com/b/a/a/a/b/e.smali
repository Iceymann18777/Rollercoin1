.class public final enum Lcom/b/a/a/a/b/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/a/a/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/a/b/e;

.field public static final enum b:Lcom/b/a/a/a/b/e;

.field private static final synthetic c:[Lcom/b/a/a/a/b/e;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/b/a/a/a/b/e;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/a/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b/e;->a:Lcom/b/a/a/a/b/e;

    new-instance v0, Lcom/b/a/a/a/b/e;

    const-string v1, "NATIVE"

    const/4 v3, 0x1

    const-string v4, "native"

    invoke-direct {v0, v1, v3, v4}, Lcom/b/a/a/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b/e;->b:Lcom/b/a/a/a/b/e;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/b/a/a/a/b/e;

    sget-object v4, Lcom/b/a/a/a/b/e;->a:Lcom/b/a/a/a/b/e;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/b/a/a/a/b/e;->c:[Lcom/b/a/a/a/b/e;

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

    iput-object p3, p0, Lcom/b/a/a/a/b/e;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/a/b/e;
    .registers 2

    const-class v0, Lcom/b/a/a/a/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/a/b/e;

    return-object p0
.end method

.method public static values()[Lcom/b/a/a/a/b/e;
    .registers 1

    sget-object v0, Lcom/b/a/a/a/b/e;->c:[Lcom/b/a/a/a/b/e;

    invoke-virtual {v0}, [Lcom/b/a/a/a/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/a/b/e;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/e;->typeString:Ljava/lang/String;

    return-object v0
.end method
