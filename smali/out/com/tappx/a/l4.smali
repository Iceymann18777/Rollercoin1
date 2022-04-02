.class final enum Lcom/tappx/a/l4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/l4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tappx/a/l4;

.field public static final enum c:Lcom/tappx/a/l4;

.field public static final enum d:Lcom/tappx/a/l4;

.field private static final synthetic e:[Lcom/tappx/a/l4;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/l4;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tappx/a/l4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/l4;->b:Lcom/tappx/a/l4;

    .line 2
    new-instance v0, Lcom/tappx/a/l4;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3, v2}, Lcom/tappx/a/l4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/l4;->c:Lcom/tappx/a/l4;

    .line 3
    new-instance v0, Lcom/tappx/a/l4;

    const-string v1, "NONE"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/tappx/a/l4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tappx/a/l4;->d:Lcom/tappx/a/l4;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tappx/a/l4;

    .line 4
    sget-object v5, Lcom/tappx/a/l4;->b:Lcom/tappx/a/l4;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tappx/a/l4;->c:Lcom/tappx/a/l4;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tappx/a/l4;->e:[Lcom/tappx/a/l4;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tappx/a/l4;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/l4;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/l4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/l4;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/l4;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/l4;->e:[Lcom/tappx/a/l4;

    invoke-virtual {v0}, [Lcom/tappx/a/l4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/l4;

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/l4;->a:I

    return v0
.end method
