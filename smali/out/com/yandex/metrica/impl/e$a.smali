.class final enum Lcom/yandex/metrica/impl/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/e$a;

.field public static final enum b:Lcom/yandex/metrica/impl/e$a;

.field public static final enum c:Lcom/yandex/metrica/impl/e$a;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "USER_INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/metrica/impl/e$a;

    .line 25
    sget-object v5, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yandex/metrica/impl/e$a;->d:[Lcom/yandex/metrica/impl/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/e$a;
    .registers 2

    .line 25
    const-class v0, Lcom/yandex/metrica/impl/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/e$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/e$a;
    .registers 1

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/e$a;->d:[Lcom/yandex/metrica/impl/e$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/e$a;

    return-object v0
.end method