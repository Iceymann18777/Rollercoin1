.class public final enum Lcom/tappx/a/j3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/j3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/j3;

.field public static final enum b:Lcom/tappx/a/j3;

.field public static final enum c:Lcom/tappx/a/j3;

.field private static final synthetic d:[Lcom/tappx/a/j3;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/j3;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/j3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/j3;->a:Lcom/tappx/a/j3;

    new-instance v0, Lcom/tappx/a/j3;

    const-string v1, "PORTRAIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/j3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/j3;->b:Lcom/tappx/a/j3;

    new-instance v0, Lcom/tappx/a/j3;

    const-string v1, "LANDSCAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/j3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/j3;->c:Lcom/tappx/a/j3;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tappx/a/j3;

    .line 2
    sget-object v5, Lcom/tappx/a/j3;->a:Lcom/tappx/a/j3;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tappx/a/j3;->b:Lcom/tappx/a/j3;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tappx/a/j3;->d:[Lcom/tappx/a/j3;

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

.method public static a(Ljava/lang/String;)Lcom/tappx/a/j3;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/tappx/a/j3;->valueOf(Ljava/lang/String;)Lcom/tappx/a/j3;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    .line 3
    :catch_9
    sget-object p0, Lcom/tappx/a/j3;->a:Lcom/tappx/a/j3;

    return-object p0
.end method

.method public static a(Lcom/tappx/a/j3;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/j3;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/j3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/j3;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/j3;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/j3;->d:[Lcom/tappx/a/j3;

    invoke-virtual {v0}, [Lcom/tappx/a/j3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/j3;

    return-object v0
.end method
