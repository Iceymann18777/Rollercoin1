.class public final enum Lcom/appnext/base/b/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/base/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appnext/base/b/d$a;

.field public static final enum ArrayList:Lcom/appnext/base/b/d$a;

.field public static final enum Boolean:Lcom/appnext/base/b/d$a;

.field public static final enum Double:Lcom/appnext/base/b/d$a;

.field public static final enum HashMap:Lcom/appnext/base/b/d$a;

.field public static final enum Integer:Lcom/appnext/base/b/d$a;

.field public static final enum JSONArray:Lcom/appnext/base/b/d$a;

.field public static final enum JSONObject:Lcom/appnext/base/b/d$a;

.field public static final enum Long:Lcom/appnext/base/b/d$a;

.field public static final enum Set:Lcom/appnext/base/b/d$a;

.field public static final enum String:Lcom/appnext/base/b/d$a;


# instance fields
.field private mDataType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 60
    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "String"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "Long"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->Long:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "Double"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->Double:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "Integer"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->Integer:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "HashMap"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->HashMap:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "ArrayList"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->ArrayList:Lcom/appnext/base/b/d$a;

    .line 61
    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "Boolean"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->Boolean:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "JSONArray"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->JSONArray:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "JSONObject"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->JSONObject:Lcom/appnext/base/b/d$a;

    new-instance v0, Lcom/appnext/base/b/d$a;

    const-string v1, "Set"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v1}, Lcom/appnext/base/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appnext/base/b/d$a;->Set:Lcom/appnext/base/b/d$a;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/appnext/base/b/d$a;

    .line 59
    sget-object v12, Lcom/appnext/base/b/d$a;->String:Lcom/appnext/base/b/d$a;

    aput-object v12, v1, v2

    sget-object v2, Lcom/appnext/base/b/d$a;->Long:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appnext/base/b/d$a;->Double:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appnext/base/b/d$a;->Integer:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appnext/base/b/d$a;->HashMap:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appnext/base/b/d$a;->ArrayList:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/appnext/base/b/d$a;->Boolean:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v8

    sget-object v2, Lcom/appnext/base/b/d$a;->JSONArray:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v9

    sget-object v2, Lcom/appnext/base/b/d$a;->JSONObject:Lcom/appnext/base/b/d$a;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/appnext/base/b/d$a;->$VALUES:[Lcom/appnext/base/b/d$a;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/appnext/base/b/d$a;->mDataType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appnext/base/b/d$a;
    .registers 2

    .line 59
    const-class v0, Lcom/appnext/base/b/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appnext/base/b/d$a;

    return-object p0
.end method

.method public static values()[Lcom/appnext/base/b/d$a;
    .registers 1

    .line 59
    sget-object v0, Lcom/appnext/base/b/d$a;->$VALUES:[Lcom/appnext/base/b/d$a;

    invoke-virtual {v0}, [Lcom/appnext/base/b/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appnext/base/b/d$a;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/appnext/base/b/d$a;->mDataType:Ljava/lang/String;

    return-object v0
.end method
