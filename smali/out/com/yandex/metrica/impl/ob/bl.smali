.class public final enum Lcom/yandex/metrica/impl/ob/bl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/bl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/bl;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/bl;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/bl;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/bl;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    new-instance v0, Lcom/yandex/metrica/impl/ob/bl;

    const-string v1, "BACKGROUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yandex/metrica/impl/ob/bl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/bl;

    .line 12
    sget-object v4, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/yandex/metrica/impl/ob/bl;->d:[Lcom/yandex/metrica/impl/ob/bl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/yandex/metrica/impl/ob/bl;->c:I

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/bl;
    .registers 3

    .line 27
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    if-eqz p0, :cond_13

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    goto :goto_13

    .line 34
    :cond_e
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl;->b:Lcom/yandex/metrica/impl/ob/bl;

    goto :goto_13

    .line 31
    :cond_11
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    :cond_13
    :goto_13
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bl;
    .registers 2

    .line 12
    const-class v0, Lcom/yandex/metrica/impl/ob/bl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/bl;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/bl;
    .registers 1

    .line 12
    sget-object v0, Lcom/yandex/metrica/impl/ob/bl;->d:[Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/bl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/bl;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/yandex/metrica/impl/ob/bl;->c:I

    return v0
.end method
