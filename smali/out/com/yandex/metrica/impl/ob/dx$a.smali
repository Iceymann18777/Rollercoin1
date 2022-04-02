.class public final enum Lcom/yandex/metrica/impl/ob/dx$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/dx$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/dx$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/dx$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/dx$a;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/dx$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/dx$a;

    const-string v1, "IDENTIFIERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/dx$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->a:Lcom/yandex/metrica/impl/ob/dx$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/dx$a;

    const-string v1, "URLS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yandex/metrica/impl/ob/dx$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->b:Lcom/yandex/metrica/impl/ob/dx$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/dx$a;

    const-string v1, "ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yandex/metrica/impl/ob/dx$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->c:Lcom/yandex/metrica/impl/ob/dx$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/dx$a;

    sget-object v5, Lcom/yandex/metrica/impl/ob/dx$a;->a:Lcom/yandex/metrica/impl/ob/dx$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yandex/metrica/impl/ob/dx$a;->b:Lcom/yandex/metrica/impl/ob/dx$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yandex/metrica/impl/ob/dx$a;->d:[Lcom/yandex/metrica/impl/ob/dx$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/dx$a;
    .registers 2

    .line 27
    const-class v0, Lcom/yandex/metrica/impl/ob/dx$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/dx$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/dx$a;
    .registers 1

    .line 27
    sget-object v0, Lcom/yandex/metrica/impl/ob/dx$a;->d:[Lcom/yandex/metrica/impl/ob/dx$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/dx$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/dx$a;

    return-object v0
.end method
