.class Lcom/yandex/metrica/impl/ob/fa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/fb;

.field private final c:Lcom/yandex/metrica/impl/ob/fb;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "LNFe+yc4/NZbJVynpxAeAd+brU3EPwGbtwF6VeUjI/Y="

    const-string v1, "PL1/TTDEe9Cm2lb2X0tixyQC7zaPREm/V0IHJscTCmw="

    const-string v2, "+B0DgmKB5hWEuHib00m2jvCJWBlOYI0NGTMmVjaVrJA="

    const-string v3, "dy/Myn0WRtYGKBNP8ubn9boJWJi+WWmLzp0V+W9pqfM="

    const-string v4, "OB84k4abNNzWpMVBdhI+TSgQmCqTKdPPQrwq6j4YdMU="

    const-string v5, "AZQG1XXPKFo8LYu/gTPgz65IOcmcwYFb3yREhyWefNI="

    const-string v6, "iZEDYF5LpvyxpOX9+x3+qDBXhdByZOUFatBA3JgW7sY="

    const-string v7, "IQBnNBEiFuhj+8x6X8XLgh01V9Ic5/V3IRQLNFFc7v4="

    const-string v8, "LvRiGEjRqfzurezaWuj8Wie2gyHMrW5Q06LspMnox7A="

    .line 57
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/fa$a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fe;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fe;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lib"

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/en;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/yandex/metrica/impl/ob/fb;

    const-string v1, "LIB-BLACK"

    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fa$a;->b:Lcom/yandex/metrica/impl/ob/fb;

    .line 75
    new-instance p1, Lcom/yandex/metrica/impl/ob/fb;

    sget-object v1, Lcom/yandex/metrica/impl/ob/fa$a;->a:[Ljava/lang/String;

    const-string v2, "LIB-TRUST"

    invoke-direct {p1, v0, v2, v1}, Lcom/yandex/metrica/impl/ob/fb;-><init>(Lcom/yandex/metrica/impl/ob/ev;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fa$a;->c:Lcom/yandex/metrica/impl/ob/fb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fe;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fa$a;-><init>(Lcom/yandex/metrica/impl/ob/fe;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fa$a;->b:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/fb;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "white list isn\'t supported in shared container"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/fb;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fa$a;->c:Lcom/yandex/metrica/impl/ob/fb;

    return-object v0
.end method
