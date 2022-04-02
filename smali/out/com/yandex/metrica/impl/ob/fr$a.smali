.class public final enum Lcom/yandex/metrica/impl/ob/fr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/fr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum f:Lcom/yandex/metrica/impl/ob/fr$a;

.field public static final enum g:Lcom/yandex/metrica/impl/ob/fr$a;

.field private static final synthetic h:[Lcom/yandex/metrica/impl/ob/fr$a;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->a:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "AUTH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->b:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "NETWORK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->c:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "NO_CONNECTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "PARSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->e:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "SERVER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->f:Lcom/yandex/metrica/impl/ob/fr$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/fr$a;

    const-string v1, "TIMEOUT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->g:Lcom/yandex/metrica/impl/ob/fr$a;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/fr$a;

    .line 5
    sget-object v9, Lcom/yandex/metrica/impl/ob/fr$a;->a:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v9, v1, v2

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->b:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->c:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->e:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/ob/fr$a;->f:Lcom/yandex/metrica/impl/ob/fr$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/yandex/metrica/impl/ob/fr$a;->h:[Lcom/yandex/metrica/impl/ob/fr$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fr$a;
    .registers 2

    .line 5
    const-class v0, Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/fr$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/fr$a;
    .registers 1

    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/fr$a;->h:[Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/fr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/fr$a;

    return-object v0
.end method
