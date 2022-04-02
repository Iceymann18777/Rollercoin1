.class public final enum Lcom/yandex/metrica/impl/ob/du;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/du;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/du;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/du;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/du;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/du;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/du;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/du;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/du;->a:Lcom/yandex/metrica/impl/ob/du;

    new-instance v0, Lcom/yandex/metrica/impl/ob/du;

    const-string v1, "NETWORK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yandex/metrica/impl/ob/du;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    new-instance v0, Lcom/yandex/metrica/impl/ob/du;

    const-string v1, "PARSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yandex/metrica/impl/ob/du;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/du;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/du;

    .line 14
    sget-object v5, Lcom/yandex/metrica/impl/ob/du;->a:Lcom/yandex/metrica/impl/ob/du;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yandex/metrica/impl/ob/du;->e:[Lcom/yandex/metrica/impl/ob/du;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/yandex/metrica/impl/ob/du;->d:I

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/du;
    .registers 3

    const-string v0, "startup_error_key_code"

    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 1041
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->a:Lcom/yandex/metrica/impl/ob/du;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    goto :goto_14

    .line 1047
    :cond_f
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->c:Lcom/yandex/metrica/impl/ob/du;

    goto :goto_14

    .line 1044
    :cond_12
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->b:Lcom/yandex/metrica/impl/ob/du;

    :goto_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/du;
    .registers 2

    .line 14
    const-class v0, Lcom/yandex/metrica/impl/ob/du;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/du;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/du;
    .registers 1

    .line 14
    sget-object v0, Lcom/yandex/metrica/impl/ob/du;->e:[Lcom/yandex/metrica/impl/ob/du;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/du;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/du;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/yandex/metrica/impl/ob/du;->d:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/du;->a()I

    move-result v0

    const-string v1, "startup_error_key_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
