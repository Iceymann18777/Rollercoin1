.class public enum Lcom/startapp/a/a/g/a;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/a/a/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/a/a/g/a;

.field public static final enum b:Lcom/startapp/a/a/g/a;

.field public static final enum c:Lcom/startapp/a/a/g/a;

.field public static final enum d:Lcom/startapp/a/a/g/a;

.field private static final synthetic h:[Lcom/startapp/a/a/g/a;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 4
    new-instance v6, Lcom/startapp/a/a/g/a;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    const-string v3, "0"

    const/4 v4, 0x1

    const/16 v5, 0x2d0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/startapp/a/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/startapp/a/a/g/a;->a:Lcom/startapp/a/a/g/a;

    new-instance v0, Lcom/startapp/a/a/g/a$1;

    const-string v8, "THREE"

    const/4 v9, 0x1

    const-string v10, "3.0"

    const/4 v11, 0x1

    const/16 v12, 0x2d0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/startapp/a/a/g/a$1;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapp/a/a/g/a;->b:Lcom/startapp/a/a/g/a;

    .line 14
    new-instance v0, Lcom/startapp/a/a/g/a;

    const-string v2, "FOUR"

    const/4 v3, 0x2

    const-string v4, "4"

    const/4 v5, 0x3

    const/16 v6, 0xdac

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapp/a/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    .line 15
    new-instance v0, Lcom/startapp/a/a/g/a;

    const-string v8, "FIVE"

    const/4 v9, 0x3

    const-string v10, "5"

    const/4 v11, 0x3

    const v12, 0xf4240

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/startapp/a/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/startapp/a/a/g/a;->d:Lcom/startapp/a/a/g/a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/startapp/a/a/g/a;

    .line 3
    sget-object v2, Lcom/startapp/a/a/g/a;->a:Lcom/startapp/a/a/g/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/a/a/g/a;->b:Lcom/startapp/a/a/g/a;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/startapp/a/a/g/a;->h:[Lcom/startapp/a/a/g/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/startapp/a/a/g/a;->e:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/startapp/a/a/g/a;->f:I

    .line 24
    iput p5, p0, Lcom/startapp/a/a/g/a;->g:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IILcom/startapp/a/a/g/a$1;)V
    .registers 7

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/startapp/a/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/a/a/g/a;
    .registers 2

    .line 3
    const-class v0, Lcom/startapp/a/a/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/a/a/g/a;

    return-object p0
.end method

.method public static values()[Lcom/startapp/a/a/g/a;
    .registers 1

    .line 3
    sget-object v0, Lcom/startapp/a/a/g/a;->h:[Lcom/startapp/a/a/g/a;

    invoke-virtual {v0}, [Lcom/startapp/a/a/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/a/a/g/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/startapp/a/a/g/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/startapp/a/a/g/a;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/startapp/a/a/g/a;->g:I

    return v0
.end method
