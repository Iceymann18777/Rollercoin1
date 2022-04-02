.class public final enum Lcom/appnext/base/a/c/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/base/a/c/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appnext/base/a/c/e$a;

.field public static final enum Equals:Lcom/appnext/base/a/c/e$a;

.field public static final enum GreaterThan:Lcom/appnext/base/a/c/e$a;

.field public static final enum LessThan:Lcom/appnext/base/a/c/e$a;


# instance fields
.field private mOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 30
    new-instance v0, Lcom/appnext/base/a/c/e$a;

    const-string v1, "Equals"

    const/4 v2, 0x0

    const-string v3, " = ? "

    invoke-direct {v0, v1, v2, v3}, Lcom/appnext/base/a/c/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    new-instance v0, Lcom/appnext/base/a/c/e$a;

    const-string v1, "GreaterThan"

    const/4 v3, 0x1

    const-string v4, " >= ? "

    invoke-direct {v0, v1, v3, v4}, Lcom/appnext/base/a/c/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/a/c/e$a;->GreaterThan:Lcom/appnext/base/a/c/e$a;

    new-instance v0, Lcom/appnext/base/a/c/e$a;

    const-string v1, "LessThan"

    const/4 v4, 0x2

    const-string v5, " <= ? "

    invoke-direct {v0, v1, v4, v5}, Lcom/appnext/base/a/c/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/a/c/e$a;->LessThan:Lcom/appnext/base/a/c/e$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appnext/base/a/c/e$a;

    .line 29
    sget-object v5, Lcom/appnext/base/a/c/e$a;->Equals:Lcom/appnext/base/a/c/e$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appnext/base/a/c/e$a;->GreaterThan:Lcom/appnext/base/a/c/e$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appnext/base/a/c/e$a;->$VALUES:[Lcom/appnext/base/a/c/e$a;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/appnext/base/a/c/e$a;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appnext/base/a/c/e$a;
    .registers 2

    .line 29
    const-class v0, Lcom/appnext/base/a/c/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/a/c/e$a;

    return-object p0
.end method

.method public static values()[Lcom/appnext/base/a/c/e$a;
    .registers 1

    .line 29
    sget-object v0, Lcom/appnext/base/a/c/e$a;->$VALUES:[Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v0}, [Lcom/appnext/base/a/c/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appnext/base/a/c/e$a;

    return-object v0
.end method


# virtual methods
.method public final au()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/appnext/base/a/c/e$a;->mOperator:Ljava/lang/String;

    return-object v0
.end method
