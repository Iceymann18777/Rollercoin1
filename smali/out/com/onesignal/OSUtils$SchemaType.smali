.class public final enum Lcom/onesignal/OSUtils$SchemaType;
.super Ljava/lang/Enum;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OSUtils$SchemaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSUtils$SchemaType;

.field public static final enum DATA:Lcom/onesignal/OSUtils$SchemaType;

.field public static final enum HTTP:Lcom/onesignal/OSUtils$SchemaType;

.field public static final enum HTTPS:Lcom/onesignal/OSUtils$SchemaType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 79
    new-instance v0, Lcom/onesignal/OSUtils$SchemaType;

    const-string v1, "DATA"

    const/4 v2, 0x0

    const-string v3, "data"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/OSUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSUtils$SchemaType;->DATA:Lcom/onesignal/OSUtils$SchemaType;

    .line 80
    new-instance v0, Lcom/onesignal/OSUtils$SchemaType;

    const-string v1, "HTTPS"

    const/4 v3, 0x1

    const-string v4, "https"

    invoke-direct {v0, v1, v3, v4}, Lcom/onesignal/OSUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSUtils$SchemaType;->HTTPS:Lcom/onesignal/OSUtils$SchemaType;

    .line 81
    new-instance v0, Lcom/onesignal/OSUtils$SchemaType;

    const-string v1, "HTTP"

    const/4 v4, 0x2

    const-string v5, "http"

    invoke-direct {v0, v1, v4, v5}, Lcom/onesignal/OSUtils$SchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSUtils$SchemaType;->HTTP:Lcom/onesignal/OSUtils$SchemaType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/onesignal/OSUtils$SchemaType;

    .line 78
    sget-object v5, Lcom/onesignal/OSUtils$SchemaType;->DATA:Lcom/onesignal/OSUtils$SchemaType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/onesignal/OSUtils$SchemaType;->HTTPS:Lcom/onesignal/OSUtils$SchemaType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/onesignal/OSUtils$SchemaType;->$VALUES:[Lcom/onesignal/OSUtils$SchemaType;

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

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/onesignal/OSUtils$SchemaType;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/OSUtils$SchemaType;
    .registers 6

    .line 91
    invoke-static {}, Lcom/onesignal/OSUtils$SchemaType;->values()[Lcom/onesignal/OSUtils$SchemaType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 92
    iget-object v4, v3, Lcom/onesignal/OSUtils$SchemaType;->text:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSUtils$SchemaType;
    .registers 2

    .line 78
    const-class v0, Lcom/onesignal/OSUtils$SchemaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSUtils$SchemaType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OSUtils$SchemaType;
    .registers 1

    .line 78
    sget-object v0, Lcom/onesignal/OSUtils$SchemaType;->$VALUES:[Lcom/onesignal/OSUtils$SchemaType;

    invoke-virtual {v0}, [Lcom/onesignal/OSUtils$SchemaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSUtils$SchemaType;

    return-object v0
.end method
