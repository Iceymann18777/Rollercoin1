.class public final enum Lcom/yandex/metrica/CounterConfiguration$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/CounterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/CounterConfiguration$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/CounterConfiguration$a;

.field public static final enum b:Lcom/yandex/metrica/CounterConfiguration$a;

.field public static final enum c:Lcom/yandex/metrica/CounterConfiguration$a;

.field private static final synthetic e:[Lcom/yandex/metrica/CounterConfiguration$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 48
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "TRUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yandex/metrica/CounterConfiguration$a;

    .line 47
    sget-object v5, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->e:[Lcom/yandex/metrica/CounterConfiguration$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    .line 62
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0

    .line 60
    :cond_b
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0

    .line 59
    :cond_e
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0

    .line 58
    :cond_11
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 2

    .line 47
    const-class v0, Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 1

    .line 47
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->e:[Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/CounterConfiguration$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0
.end method
