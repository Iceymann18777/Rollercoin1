.class final enum Lcom/tappx/a/p3$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/a/p3$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tappx/a/p3$e;

.field public static final enum b:Lcom/tappx/a/p3$e;

.field public static final enum c:Lcom/tappx/a/p3$e;

.field private static final synthetic d:[Lcom/tappx/a/p3$e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/tappx/a/p3$e;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/a/p3$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p3$e;->a:Lcom/tappx/a/p3$e;

    new-instance v0, Lcom/tappx/a/p3$e;

    const-string v1, "TRANSPARENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/a/p3$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p3$e;->b:Lcom/tappx/a/p3$e;

    new-instance v0, Lcom/tappx/a/p3$e;

    const-string v1, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/a/p3$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/a/p3$e;->c:Lcom/tappx/a/p3$e;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tappx/a/p3$e;

    .line 2
    sget-object v5, Lcom/tappx/a/p3$e;->a:Lcom/tappx/a/p3$e;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tappx/a/p3$e;->b:Lcom/tappx/a/p3$e;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tappx/a/p3$e;->d:[Lcom/tappx/a/p3$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/a/p3$e;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/a/p3$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/a/p3$e;

    return-object p0
.end method

.method public static values()[Lcom/tappx/a/p3$e;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/a/p3$e;->d:[Lcom/tappx/a/p3$e;

    invoke-virtual {v0}, [Lcom/tappx/a/p3$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/a/p3$e;

    return-object v0
.end method
