.class public final enum Lcom/yandex/metrica/impl/utils/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/utils/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/utils/n$a;

.field public static final enum b:Lcom/yandex/metrica/impl/utils/n$a;

.field public static final enum c:Lcom/yandex/metrica/impl/utils/n$a;

.field public static final enum d:Lcom/yandex/metrica/impl/utils/n$a;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/utils/n$a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/utils/n$a;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    const-string v3, "login"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/utils/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/n$a;->a:Lcom/yandex/metrica/impl/utils/n$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/n$a;

    const-string v1, "LOGOUT"

    const/4 v3, 0x1

    const-string v4, "logout"

    invoke-direct {v0, v1, v3, v4}, Lcom/yandex/metrica/impl/utils/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/n$a;->b:Lcom/yandex/metrica/impl/utils/n$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/n$a;

    const-string v1, "SWITCH"

    const/4 v4, 0x2

    const-string v5, "switch"

    invoke-direct {v0, v1, v4, v5}, Lcom/yandex/metrica/impl/utils/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/n$a;->c:Lcom/yandex/metrica/impl/utils/n$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/n$a;

    const-string v1, "UPDATE"

    const/4 v5, 0x3

    const-string v6, "update"

    invoke-direct {v0, v1, v5, v6}, Lcom/yandex/metrica/impl/utils/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/n$a;->d:Lcom/yandex/metrica/impl/utils/n$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/yandex/metrica/impl/utils/n$a;

    .line 24
    sget-object v6, Lcom/yandex/metrica/impl/utils/n$a;->a:Lcom/yandex/metrica/impl/utils/n$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/yandex/metrica/impl/utils/n$a;->b:Lcom/yandex/metrica/impl/utils/n$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yandex/metrica/impl/utils/n$a;->c:Lcom/yandex/metrica/impl/utils/n$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/yandex/metrica/impl/utils/n$a;->f:[Lcom/yandex/metrica/impl/utils/n$a;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/yandex/metrica/impl/utils/n$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/utils/n$a;
    .registers 2

    .line 24
    const-class v0, Lcom/yandex/metrica/impl/utils/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/utils/n$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/utils/n$a;
    .registers 1

    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/utils/n$a;->f:[Lcom/yandex/metrica/impl/utils/n$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/utils/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/utils/n$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/n$a;->e:Ljava/lang/String;

    return-object v0
.end method
