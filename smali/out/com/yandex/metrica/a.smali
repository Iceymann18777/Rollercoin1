.class public final enum Lcom/yandex/metrica/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/a;

.field public static final enum b:Lcom/yandex/metrica/a;

.field public static final enum c:Lcom/yandex/metrica/a;

.field private static final synthetic e:[Lcom/yandex/metrica/a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 6
    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "TABLET"

    const/4 v3, 0x1

    const-string v4, "tablet"

    invoke-direct {v0, v1, v3, v4}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "TV"

    const/4 v4, 0x2

    const-string v5, "tv"

    invoke-direct {v0, v1, v4, v5}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/metrica/a;

    .line 4
    sget-object v5, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yandex/metrica/a;->e:[Lcom/yandex/metrica/a;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/a;
    .registers 6

    .line 19
    invoke-static {}, Lcom/yandex/metrica/a;->values()[Lcom/yandex/metrica/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 20
    iget-object v4, v3, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/a;
    .registers 2

    .line 4
    const-class v0, Lcom/yandex/metrica/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/a;
    .registers 1

    .line 4
    sget-object v0, Lcom/yandex/metrica/a;->e:[Lcom/yandex/metrica/a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    return-object v0
.end method
